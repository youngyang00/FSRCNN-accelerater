`timescale 1ns / 1ps
/*
Multiplier_DSP #(
    .DATA_WIDTH()
)(  
    .i_clk(),//input                       
    .i_rst_n(),//input                       
    .i_valid(),//input                       
    .i_pixel_data(),//input   [DATA_WIDTH-1:0]    
    .i_weight_data(),//input   [DATA_WIDTH-1:0]    
    .o_mul_valid(),//output                      
    .o_mul_data()//output  [2*DATA_WIDTH:0]    
    );
*/

module shrink_Multiplier_DSP #(
    parameter DATA_WIDTH = 8
)(  
    input                           i_clk,
    input                           i_rst_n,
    input                           i_valid,
    input   [DATA_WIDTH-1:0]        i_pixel_data,
    input   [DATA_WIDTH-1:0]        i_weight_data,
    output                          o_mul_valid,
    output  [2*(DATA_WIDTH+1)-1:0]  o_mul_data
    );

reg                         valid_reg;
//(* use_dsp = "yes" *)
//reg signed [2*DATA_WIDTH:0] mul_data_reg;

always @(posedge i_clk) begin
    if (!i_rst_n) begin
        valid_reg <= 0;
    end
    else begin
        valid_reg <= i_valid;
    end
end
//always @(posedge i_clk) begin
//    if (!i_rst_n) begin
//        mul_data_reg <= 0;
//    end
//    else if (i_valid) begin
//        mul_data_reg <= $signed({1'b0,i_pixel_data}) * $signed({i_weight_data[DATA_WIDTH-1],i_weight_data});
//    end
//end

shrink_dsp_macro_1 dsp_inst (
  .CLK(i_clk),    // input wire CLK
  .CE(i_valid),      // input wire CE
  .SCLR(!i_rst_n),  // input wire SCLR
  .A({1'b0,i_pixel_data}),        // input wire [8 : 0] A
  .B({i_weight_data[DATA_WIDTH-1],i_weight_data}),        // input wire [8 : 0] B
  .P(o_mul_data)        // output wire [17 : 0] P
);

assign o_mul_valid = valid_reg;
//assign o_mul_data = mul_data_reg;
endmodule
