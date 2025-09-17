`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/07/08 22:51:10
// Design Name: 
// Module Name: Convolution
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

module expand_Convolution #(
    parameter DATA_WIDTH = 8,
              KERNEL_CHANNEL = 12,
              KERNEL_NUM = 16,
              WEIGHT_PATH = "D:/FSRCNN/input_data/weight_verilog/mid_part_0_weight_hex_rearranged.txt"
)(
    input                                           i_clk,
    input                                           i_rst_n,
    input                                           i_conv_valid,
    input   [DATA_WIDTH*KERNEL_CHANNEL-1:0]         i_pixel_data,
    output                                          o_conv_valid,
    output  [(2*(DATA_WIDTH+1)+4)*KERNEL_NUM-1:0]   o_conv_data
);
(* rom_style="block" *)
reg [DATA_WIDTH*KERNEL_CHANNEL-1:0] weight_RF [KERNEL_NUM-1:0];
wire [KERNEL_NUM-1:0] o_PE_valid;
wire [2*(DATA_WIDTH+1)*KERNEL_CHANNEL-1:0] o_PE_data [KERNEL_NUM-1:0];
wire [KERNEL_NUM-1:0] o_conv_valid_wr;
genvar i;
initial begin
    $readmemh(WEIGHT_PATH, weight_RF, 0, KERNEL_NUM-1);
end
generate
    for ( i=0; i<KERNEL_NUM; i=i+1) begin: parallel_kernel_number
        expand_PE_Array #(
            .DATA_WIDTH(DATA_WIDTH),
            .KERNEL_CHANNEL(KERNEL_CHANNEL)
        )PE_Array_inst(
            .i_clk(i_clk),//input                                           
            .i_rst_n(i_rst_n),//input                                           
            .i_PE_valid(i_conv_valid),//input                                           
            .i_pixel_data(i_pixel_data),//input   [DATA_WIDTH*KERNEL_CHANNEL-1:0]         
            .i_weight_data(weight_RF[i]),//input   [DATA_WIDTH*KERNEL_CHANNEL-1:0]         
            .o_PE_valid(o_PE_valid[i]),//output                                          
            .o_PE_data(o_PE_data[i])//output  [2*(DATA_WIDTH+1)*KERNEL_CHANNEL-1:0] => (18*KERNEL_CHANNEL)bits
            );
        expand_Adder_Tree #(
            .DATA_WIDTH(2*(DATA_WIDTH+1)),//18bits
            .INPUT_CHANNEL(KERNEL_CHANNEL)
        )Adder_Tree_inst(
            .i_clk(i_clk),//input                                       
            .i_rst_n(i_rst_n),//input                                       
            .i_valid(o_PE_valid[i]),//input                                       
            .i_A(o_PE_data[i]),//input   [DATA_WIDTH*INPUT_CHANNEL-1:0]      
            .o_valid(o_conv_valid_wr[i]),//output                                      
            .o_C(o_conv_data[(2*(DATA_WIDTH+1)+4)*i +: (2*(DATA_WIDTH+1)+4)])//output  [(DATA_WIDTH+4)-1:0] -> 22bits          
            );
    end
endgenerate
assign o_conv_valid = &(o_conv_valid_wr);
endmodule

module expand_PE_Array #(
    parameter DATA_WIDTH = 8,
              KERNEL_CHANNEL = 16
)(
    input                                           i_clk,
    input                                           i_rst_n,
    input                                           i_PE_valid,
    input   [DATA_WIDTH*KERNEL_CHANNEL-1:0]         i_pixel_data,
    input   [DATA_WIDTH*KERNEL_CHANNEL-1:0]         i_weight_data,
    output                                          o_PE_valid,
    output  [2*(DATA_WIDTH+1)*KERNEL_CHANNEL-1:0]   o_PE_data
    );
// i_pixel_data = {CH16, CH15, ... , CH1}
genvar i;
generate
    for ( i=0; i<KERNEL_CHANNEL; i=i+1 ) begin: parallel_kernel_channel
        expand_Multiplier_DSP #(
            .DATA_WIDTH(DATA_WIDTH)
        )Multiplier_DSP_inst(  
            .i_clk(i_clk),//input                       
            .i_rst_n(i_rst_n),//input                       
            .i_valid(i_PE_valid),//input                       
            .i_pixel_data(i_pixel_data[DATA_WIDTH*i +: DATA_WIDTH]),//input   [DATA_WIDTH-1:0]    
            .i_weight_data(i_weight_data[DATA_WIDTH*i +: DATA_WIDTH]),//input   [DATA_WIDTH-1:0]    
            .o_mul_valid(o_PE_valid),//output                      
            .o_mul_data(o_PE_data[2*(DATA_WIDTH+1)*i +: 2*(DATA_WIDTH+1)])//output  [2*(DATA_WIDTH+1)-1:0:0] => 18bits
        );
    end
endgenerate
endmodule
