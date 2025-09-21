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

module shrink_Convolution #(
    parameter DATA_WIDTH = 8,
              KERNEL_CHANNEL = 16,
              KERNEL_NUM = 12
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

generate
    for ( i=0; i<KERNEL_NUM; i=i+1) begin: parallel_kernel_number
        shrink_PE_Array #(
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
        shrink_Adder_Tree #(
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
    weight_RF[0] = 128'h38907F1106ED4DBF7FE580F02507EF1F;
    weight_RF[1] = 128'h05800817E5C31DA843F180DE3B1003F0;
    weight_RF[2] = 128'h12297FEB1C3D13440B085224BF3FF7E2;
    weight_RF[3] = 128'hFEF103FAF72C46E9200FF4F71BE922F1;
    weight_RF[4] = 128'hE1E5013AFFF201020117EDF105E330F6;
    weight_RF[5] = 128'hFAF9F9DF1A7F0AF6F47F801F0A19E01E;
    weight_RF[6] = 128'hF517092BD9D386E3B0218008D5396003;
    weight_RF[7] = 128'hF71D133E051A16F2FC07D8F834F2E308;
    weight_RF[8] = 128'h37DC0306FDF51044D2E8DF00135C0EF8;
    weight_RF[9] = 128'h5DBF80027FEA933F360D800FD07F1D7F;
    weight_RF[10] = 128'hED50DA09FA2A1627EBF81F02E6043E0B;
    weight_RF[11] = 128'h37EE1D0CF8DBCAF151167FF028303EF8;
end

assign o_conv_valid = &(o_conv_valid_wr);
endmodule

module shrink_PE_Array #(
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
        shrink_Multiplier_DSP #(
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
