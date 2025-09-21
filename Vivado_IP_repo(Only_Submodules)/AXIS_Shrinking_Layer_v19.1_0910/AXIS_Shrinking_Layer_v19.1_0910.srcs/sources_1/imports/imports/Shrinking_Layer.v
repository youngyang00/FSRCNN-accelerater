`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/07/15 21:37:15
// Design Name: 
// Module Name: Shrinking_Layer
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Shrinking_Layer #(
    parameter DATA_WIDTH = 8,
              INPUT_CHANNEL = 16,
              OUTPUT_CHANNEL = 12
//              WEIGHT_PATH = "data/shrinking_weight_hex_rearranged.mif"
)(
    input                                   axi_clk,
    input                                   axi_reset_n,
    input                                   s_axis_tvalid,
    input   [DATA_WIDTH*INPUT_CHANNEL-1:0]  s_axis_tdata,
    output                                  s_axis_tready,
    output                                  m_axis_tvalid,
    output  [DATA_WIDTH*OUTPUT_CHANNEL-1:0] m_axis_tdata,
    input                                   m_axis_tready,
    output                                  EOL,
    output                                  EOF
    );
localparam QUANT_SCALE = 22'd604,
           SHIFT_SCALE = 16;
localparam CONV_DATA_WIDTH = 2*(DATA_WIDTH+1)+4;
localparam INPUT_WIDTH = 'd320,
           INPUT_HEIGHT = 'd180;

wire o_conv_valid;
wire [CONV_DATA_WIDTH*OUTPUT_CHANNEL-1:0] o_conv_data;
wire [CONV_DATA_WIDTH-1:0] relu_conv_data [OUTPUT_CHANNEL-1:0];
wire [OUTPUT_CHANNEL-1:0] o_quant_valid;
wire [2*CONV_DATA_WIDTH-1:0] o_quant_data [OUTPUT_CHANNEL-1:0];
wire [DATA_WIDTH*OUTPUT_CHANNEL-1:0] shift_clip_quant_data;
wire axis_reg_valid;
wire [DATA_WIDTH*OUTPUT_CHANNEL-1:0] axis_reg_data;
wire fifo_ready;
wire axis_prog_full;
reg [$clog2(INPUT_WIDTH)-1:0] widthCounter;
reg [$clog2(INPUT_HEIGHT)-1:0] heightCounter;

genvar i, j, k;
// EOL, EOF signal generation
always @(posedge axi_clk) begin
    if (!axi_reset_n) begin
        widthCounter <= 0;
        heightCounter <= 0;
    end
    else begin
        if (m_axis_tvalid && m_axis_tready) begin
            if (widthCounter == (INPUT_WIDTH-1)) begin
                widthCounter <= 0;
                if (heightCounter == (INPUT_HEIGHT-1)) begin
                    heightCounter <= 0;
                end
                else begin
                    heightCounter <= heightCounter + 1;
                end
            end
            else begin
                widthCounter <= widthCounter + 1;
            end
        end
    end
end

shrink_Convolution #(
    .DATA_WIDTH(DATA_WIDTH),
    .KERNEL_CHANNEL(INPUT_CHANNEL),
    .KERNEL_NUM(OUTPUT_CHANNEL)
//    .WEIGHT_PATH(WEIGHT_PATH)
)Convolution_inst(
    .i_clk(axi_clk),//input                                           
    .i_rst_n(axi_reset_n),//input                                           
    .i_conv_valid(s_axis_tvalid && s_axis_tready),//input                                           
    .i_pixel_data(s_axis_tdata),//input   [DATA_WIDTH*KERNEL_CHANNEL-1:0]         
    .o_conv_valid(o_conv_valid),//output                                          
    .o_conv_data(o_conv_data)//output  [(2*(DATA_WIDTH+1)+4)*KERNEL_NUM-1:0]   
);

generate
    for ( i=0; i<OUTPUT_CHANNEL; i=i+1 ) begin: relu_activation
        assign relu_conv_data[i] = o_conv_data[CONV_DATA_WIDTH*(i+1)-1] ? 
                                    {CONV_DATA_WIDTH{1'b0}} : o_conv_data[CONV_DATA_WIDTH*i +: CONV_DATA_WIDTH];
    end
endgenerate
generate
    for ( j=0; j<OUTPUT_CHANNEL; j=j+1 ) begin: quant_scale_multiplication
        shrink_pipelined_multiplier_2stage#(
          .INPUT_WIDTH(2*(DATA_WIDTH+1)+4)
        )Quantization(
          .i_clk(axi_clk),//input                              
          .i_reset(!axi_reset_n),//input                              
          .i_valid(o_conv_valid),//input                              
          .i_A(relu_conv_data[j]),//input  signed [INPUT_WIDTH-1:0]    
          .i_B(QUANT_SCALE),//input  signed [INPUT_WIDTH-1:0]    
          .o_out(o_quant_data[j]),//output signed [INPUT_WIDTH*2-1:0]  
          .o_valid(o_quant_valid[j])//output                             
        );
    end
endgenerate
generate
    for ( k=0; k<OUTPUT_CHANNEL; k=k+1 ) begin: shift_clip
        assign shift_clip_quant_data[DATA_WIDTH*k +: DATA_WIDTH] = o_quant_data[k] >> SHIFT_SCALE;
    end
endgenerate

shrink_fifo_generator_1 out_buffer (
  .s_aclk(axi_clk),                // input wire s_aclk
  .s_aresetn(axi_reset_n),          // input wire s_aresetn
  .s_axis_tvalid(&(o_quant_valid)),  // input wire s_axis_tvalid
  .s_axis_tready(fifo_ready),  // output wire s_axis_tready
  .s_axis_tdata(shift_clip_quant_data),    // input wire [127 : 0] s_axis_tdata
  .m_axis_tvalid(m_axis_tvalid),  // output wire m_axis_tvalid
  .m_axis_tready(m_axis_tready),  // input wire m_axis_tready
  .m_axis_tdata(m_axis_tdata),    // output wire [127 : 0] m_axis_tdata
  .axis_prog_full(axis_prog_full)  // output wire axis_prog_full
);

assign s_axis_tready = fifo_ready && (!axis_prog_full);
assign EOL = (widthCounter == (INPUT_WIDTH-1));
assign EOF = ((widthCounter == (INPUT_WIDTH-1)) && (heightCounter == (INPUT_HEIGHT-1)));
endmodule