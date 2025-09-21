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
              KERNEL_NUM = 16
//              WEIGHT_PATH = ""
)(
    input                                           i_clk,
    input                                           i_rst_n,
    input                                           i_conv_valid,
    input   [DATA_WIDTH*KERNEL_CHANNEL-1:0]         i_pixel_data,
    output                                          o_conv_valid,
    output  [(2*(DATA_WIDTH+1)+4)*KERNEL_NUM-1:0]   o_conv_data
);
(* rom_style="distributed" *)
reg [DATA_WIDTH*KERNEL_CHANNEL-1:0] weight_RF [KERNEL_NUM-1:0];
wire [KERNEL_NUM-1:0] o_PE_valid;
wire [2*(DATA_WIDTH+1)*KERNEL_CHANNEL-1:0] o_PE_data [KERNEL_NUM-1:0];
wire [KERNEL_NUM-1:0] o_conv_valid_wr;
genvar i;
//initial begin
//    $readmemh(WEIGHT_PATH, weight_RF, 0, KERNEL_NUM-1);
//end
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

initial begin
    weight_RF[0] = 96'h02EE31091802001EE20107E5;
    weight_RF[1] = 96'h1166FE07FD26FA11F91623D7;
    weight_RF[2] = 96'hF91FDED7D2FA7C785D47F9DF;
    weight_RF[3] = 96'h13FAEE01250DF42D37E92706;
    weight_RF[4] = 96'h7FF5FFF614ECF9F8FC1A0CFB;
    weight_RF[5] = 96'hFE11FA7FEC15E326FBF4DFF2;
    weight_RF[6] = 96'h1C71CCD520A38269F3DB4129;
    weight_RF[7] = 96'hF6273123CFEA811BFDEF7B21;
    weight_RF[8] = 96'h00BC0E061B25AC03E933FC06;
    weight_RF[9] = 96'h370DE8F9BA2C45F83DF01B0B;
    weight_RF[10] = 96'hF40B04F0F934F71A1BE5CFED;
    weight_RF[11] = 96'h092BE4EA33D97D4041AD29F6;
    weight_RF[12] = 96'hE5800D14817F86173B6BAEE9;
    weight_RF[13] = 96'hF67E7F7780327C7DBD80422A;
    weight_RF[14] = 96'h01A190AA0441802A7F64CCF1;
    weight_RF[15] = 96'hE64C613982EEB67F27260FF5;
end

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
