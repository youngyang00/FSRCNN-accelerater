`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/06/21 13:18:05
// Design Name: 
// Module Name: RGB2YCbCr
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


module Y_Converter #(
    parameter DATA_WIDTH = 32
)(
    input                       axi_clk,
    input                       axi_reset_n,
    // AXI4_STREAM slave i/f
    input                       s_axis_tvalid,
    input   [DATA_WIDTH-1:0]    s_axis_tdata,
    output                      s_axis_tready,
    // AXI4_STREAM master i/f
    output                      m_axis_tvalid,
    output  [7:0]               m_axis_tdata,
    input                       m_axis_tready,
    output                      EOL,
    output                      EOF
    );
// Internal Wires
wire [7:0]  R = s_axis_tdata[7:0];
wire [7:0]  G = s_axis_tdata[15:8];
wire [7:0]  B = s_axis_tdata[23:16];
wire        MUL_VALID_I = s_axis_tvalid && s_axis_tready;
wire [2:0]  MUL_VALID_O;
wire [15:0] R_MUL_DATA;//Q16.16
wire [15:0] G_MUL_DATA;//Q16.16
wire [15:0] B_MUL_DATA;//Q16.16
wire fifo_ready;
wire axis_prog_full;
// Coefficients(unsigned) for Conversion
localparam  Y0 = 8'd16,//16.0
            Y1_R = 8'd66,//64.738
            Y2_G = 8'd129,//129.057
            Y3_B = 8'd25,//25.064
            Y1 = 8'd128;
// Coefficients for EOL, EOF signal
localparam INPUT_WIDTH = 'd320,
           INPUT_HEIGHT = 'd180;
// Registers for Pipelining(Q9.8)
reg         ADDER_VALID_0;
reg         ADDER_VALID_1;
reg         ADDER_VALID_2;
reg [16:0]  ADDER_TREE_0;
reg [16:0]  ADDER_TREE_1;
reg [7:0]  ADDER_TREE_2;
reg [7:0]  ADDER_TREE_OUT;
//wire [10:0]  TEMP_ADDER_TREE_OUT = ADDER_TREE_OUT[18:8] + ADDER_TREE_OUT[7];
// Registers for EOL, EOF signal
reg [$clog2(INPUT_WIDTH)-1:0] widthCounter;
reg [$clog2(INPUT_HEIGHT)-1:0] heightCounter;
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
// Adder Tree Operation
always @(posedge axi_clk) begin
    if (!axi_reset_n) begin
        ADDER_VALID_0 <= 0;
        ADDER_VALID_1 <= 0;
        ADDER_VALID_2 <= 0;
        ADDER_TREE_0 <= 0;
        ADDER_TREE_1 <= 0;
        ADDER_TREE_2 <= 0;
        ADDER_TREE_OUT <= 0;
    end
    else begin
        ADDER_VALID_0 <= (&MUL_VALID_O);
        ADDER_VALID_1 <= ADDER_VALID_0;
        ADDER_VALID_2 <= ADDER_VALID_1;
        if (&MUL_VALID_O) begin
            ADDER_TREE_0 <= R_MUL_DATA + G_MUL_DATA;
            ADDER_TREE_1 <= B_MUL_DATA + Y1;
        end
        if (ADDER_VALID_0) begin
            ADDER_TREE_2 <= (ADDER_TREE_0 + ADDER_TREE_1) >> 8;
        end
        if (ADDER_VALID_1) begin
            ADDER_TREE_OUT <= Y0 + ADDER_TREE_2;
        end
    end
end
// Multipliers Instanciation - Output(Q16.16)
yconv_pipelined_multiplier_2stage #(
  .INPUT_WIDTH(8)
)R_MUL(
  .i_clk(axi_clk),//input                                 
  .i_reset(!axi_reset_n),//input                                 
  .i_valid(MUL_VALID_I),//input                                 
  .i_A(Y1_R),//input  signed [INPUT_WIDTH-1:0]       
  .i_B(R),//input  signed [INPUT_WIDTH-1:0]       
  .o_out(R_MUL_DATA),//output signed [INPUT_WIDTH*2-1:0]     
  .o_valid(MUL_VALID_O[0])//output                           
);
yconv_pipelined_multiplier_2stage #(
  .INPUT_WIDTH(8)
)G_MUL(
  .i_clk(axi_clk),//input                                 
  .i_reset(!axi_reset_n),//input                                 
  .i_valid(MUL_VALID_I),//input                                 
  .i_A(Y2_G),//input  signed [INPUT_WIDTH-1:0]       
  .i_B(G),//input  signed [INPUT_WIDTH-1:0]       
  .o_out(G_MUL_DATA),//output signed [INPUT_WIDTH*2-1:0]     
  .o_valid(MUL_VALID_O[1])//output                             
);
yconv_pipelined_multiplier_2stage #(
  .INPUT_WIDTH(8)
)B_MUL(
  .i_clk(axi_clk),//input                                 
  .i_reset(!axi_reset_n),//input                                 
  .i_valid(MUL_VALID_I),//input                                 
  .i_A(Y3_B),//input  signed [INPUT_WIDTH-1:0]       
  .i_B(B),//input  signed [INPUT_WIDTH-1:0]       
  .o_out(B_MUL_DATA),//output signed [INPUT_WIDTH*2-1:0]     
  .o_valid(MUL_VALID_O[2])//output                              
);
// Output AXI4-stream FIFO
yconv_fifo_generator_0 out_buffer (
  .s_aclk(axi_clk),                  // input wire s_aclk
  .s_aresetn(axi_reset_n),            // input wire s_aresetn
  .s_axis_tvalid(ADDER_VALID_2),    // input wire s_axis_tvalid
  .s_axis_tready(fifo_ready),    // output wire s_axis_tready
  .s_axis_tdata(ADDER_TREE_OUT),      // input wire [7 : 0] s_axis_tdata
  .m_axis_tvalid(m_axis_tvalid),    // output wire m_axis_tvalid
  .m_axis_tready(m_axis_tready),    // input wire m_axis_tready
  .m_axis_tdata(m_axis_tdata),      // output wire [7 : 0] m_axis_tdata
  .axis_prog_full(axis_prog_full)  // output wire axis_prog_full
);

assign s_axis_tready = fifo_ready && (!axis_prog_full);
assign EOL = (widthCounter == (INPUT_WIDTH-1));
assign EOF = ((widthCounter == (INPUT_WIDTH-1)) && (heightCounter == (INPUT_HEIGHT-1)));
endmodule
