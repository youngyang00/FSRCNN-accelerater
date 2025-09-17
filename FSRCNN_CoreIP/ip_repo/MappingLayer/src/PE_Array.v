// SPDX-License-Identifier: MIT
// Copyright (c) 2025 Gwangsun Shin

module PE_Array#(
parameter REQUANT = 10'd172,
parameter weight01_1 = 24'h10D3E8,
parameter weight02_1 = 24'h7FD67F,
parameter weight03_1 = 24'h0EB57F,
parameter weight04_1 = 24'h807FEA,
parameter weight05_1 = 24'h807F80,
parameter weight06_1 = 24'h027FAB,
parameter weight07_1 = 24'hEA487F,
parameter weight08_1 = 24'h9519D2,
parameter weight09_1 = 24'h027F01,
parameter weight10_1 = 24'hCA20DC,
parameter weight11_1 = 24'hC57F97,
parameter weight12_1 = 24'hCD7F09,
parameter weight13_1 = 24'h637F7F,
parameter weight14_1 = 24'hEEBEF9,
parameter weight15_1 = 24'h1DB5F0,
parameter weight16_1 = 24'hCDD6D0,
parameter weight17_1 = 24'h38E92C,
parameter weight18_1 = 24'h68ABBF,
parameter weight19_1 = 24'h5710CC,
parameter weight20_1 = 24'h7F7F9A,
parameter weight21_1 = 24'h477F7F,
parameter weight22_1 = 24'h3E1A7F,
parameter weight23_1 = 24'h6ACD6C,
parameter weight24_1 = 24'h4FF380,
parameter weight25_1 = 24'h8080DA,
parameter weight26_1 = 24'h7F817F,
parameter weight27_1 = 24'hCB3AE3,
parameter weight28_1 = 24'h247F7F,
parameter weight29_1 = 24'hF97F80,
parameter weight30_1 = 24'h077F29,
parameter weight31_1 = 24'h96D2A5,
parameter weight32_1 = 24'h7FE171,
parameter weight33_1 = 24'h7F7F19,
parameter weight34_1 = 24'hC38030,
parameter weight35_1 = 24'h837F12,
parameter weight36_1 = 24'h8081C3,
parameter weight01_2 = 24'hD97F20,
parameter weight02_2 = 24'h318158,
parameter weight03_2 = 24'h197F34,
parameter weight04_2 = 24'h7FA479,
parameter weight05_2 = 24'hA37C80,
parameter weight06_2 = 24'h379EBB,
parameter weight07_2 = 24'h6DCD7F,
parameter weight08_2 = 24'h7F80DB,
parameter weight09_2 = 24'h2D7F39,
parameter weight10_2 = 24'hEA0380,
parameter weight11_2 = 24'hDA7A33,
parameter weight12_2 = 24'hEED814,
parameter weight13_2 = 24'hEEC380,
parameter weight14_2 = 24'hD11D25,
parameter weight15_2 = 24'hDCE207,
parameter weight16_2 = 24'h004D1E,
parameter weight17_2 = 24'hC6DA06,
parameter weight18_2 = 24'h7F28ED,
parameter weight19_2 = 24'h7F7F7B,
parameter weight20_2 = 24'h7F106F,
parameter weight21_2 = 24'h7F7C7F,
parameter weight22_2 = 24'h17C341,
parameter weight23_2 = 24'hE825BE,
parameter weight24_2 = 24'hF7F9C3,
parameter weight25_2 = 24'h5E2F07,
parameter weight26_2 = 24'h7F1027,
parameter weight27_2 = 24'h3113E5,
parameter weight28_2 = 24'h808080,
parameter weight29_2 = 24'h808080,
parameter weight30_2 = 24'h808080,
parameter weight31_2 = 24'hA4300F,
parameter weight32_2 = 24'hEC18F5,
parameter weight33_2 = 24'hDFEBE2,
parameter weight34_2 = 24'h170E1F,
parameter weight35_2 = 24'hE51830,
parameter weight36_2 = 24'hFE811C
)(
   input                i_clk,
   input                i_clr,
   input                i_en,
   input       [2:0]    i_addr,
   input       [287:0]  i_pixel, // 24bit x 12
   output reg           o_valid,
   output reg  [7:0]   o_result
);

wire [23:0]          pixelCol [0:11];
reg [95:0]           pixelChannelChunks[0:2];
wire [23:0]          peOut [0:11];
wire [11:0]          valid;
wire                 totalValidAnd = &valid;
wire [34:0]          requant_dsp_out;
reg  [4:0]           validInter;
reg                  clr;
reg                  en;
reg   [2:0]          addr;
reg  signed [23:0]   result_inter1[0:3];
reg  signed [23:0]   result_inter2[0:1];
reg  signed [23:0]   result_inter3;


integer i;
always @(posedge i_clk) begin
   clr <= i_clr;
   en  <= i_en;
   addr <= i_addr;
   pixelChannelChunks[0] <= i_pixel[95:0];
   pixelChannelChunks[1] <= i_pixel[191:96];
   pixelChannelChunks[2] <= i_pixel[287:192];
   // for (i = 0; i < 12;i = i + 1) begin
   //    pixelCol[i] <= i_pixel[24*i +: 24];
   // end
end

genvar j;
generate
   for (j = 0; j < 12 ;j = j + 1) begin
      assign pixelCol[j] = {pixelChannelChunks[2][8*j +: 8],pixelChannelChunks[1][8*j +: 8], pixelChannelChunks[0][8*j +: 8]};
   end
endgenerate

// adder tree - pipe1
always @(posedge i_clk) begin
   validInter[0] <= totalValidAnd; 
   if(totalValidAnd)begin
      result_inter1[0] <= peOut[0] + peOut[1] + peOut[2];
      result_inter1[1] <= peOut[3] + peOut[4] + peOut[5];
      result_inter1[2] <= peOut[6] + peOut[7] + peOut[8];
      result_inter1[3] <= peOut[9] + peOut[10] + peOut[11];
   end
end

// adder tree - pipe2 and pipe3
always @(posedge i_clk) begin
   validInter[1] <= validInter[0];
   result_inter2[0] <= result_inter1[0] + result_inter1[1];
   result_inter2[1] <= result_inter1[2] + result_inter1[3];

   validInter[2] <= validInter[1];
   validInter[3] <= validInter[2];
   result_inter3 <= result_inter2[0] + result_inter2[1];
end
// Requant


dsp_Requant DSP_Requant(
  .CLK(i_clk),  // input wire CLK
  .A(result_inter3),      // input wire [23 : 0] A
  .B({1'b0,REQUANT}),      // input wire [10 : 0] B
  .C('d0),      // input wire [1 : 0] C
  .P(requant_dsp_out)      // output wire [34 : 0] P
);

wire [18:0] requant_dsp_out_shifted = requant_dsp_out[34:16];

always @(posedge i_clk) begin
   o_valid <= validInter[3];
   if(requant_dsp_out_shifted[18] == 1) o_result <= 'd0;
   else begin
      if(requant_dsp_out_shifted >= 255) o_result <= 'd255;
      else o_result <= requant_dsp_out_shifted;
   end
end

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////       PE INSTANCE     //////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////

PE#(
.WEIGHT0(weight01_1),
.WEIGHT1(weight02_1),
.WEIGHT2(weight03_1),
.WEIGHT3(weight01_2),
.WEIGHT4(weight02_2),
.WEIGHT5(weight03_2)
)pe0(
   .i_clk(i_clk), //input          
   .i_clr(clr), //input          
   .i_pixel(pixelCol[0]), //input [23:0]   
   .i_en(en), //input          
   .i_addr(addr), //input  [2:0]   
   .o_result(peOut[0]), //output [23:0]  
   .o_valid(valid[0]) //output reg     
);      

PE#(
.WEIGHT0(weight04_1),
.WEIGHT1(weight05_1),
.WEIGHT2(weight06_1),
.WEIGHT3(weight04_2),
.WEIGHT4(weight05_2),
.WEIGHT5(weight06_2)
)pe1(
   .i_clk(i_clk), //input          
   .i_clr(clr), //input          
   .i_pixel(pixelCol[1]), //input [23:0]   
   .i_en(en), //input          
   .i_addr(addr), //input  [2:0]   
   .o_result(peOut[1]), //output [23:0]  
   .o_valid(valid[1]) //output reg     
);      

PE#(
.WEIGHT0(weight07_1),
.WEIGHT1(weight08_1),
.WEIGHT2(weight09_1),
.WEIGHT3(weight07_2),
.WEIGHT4(weight08_2),
.WEIGHT5(weight09_2)
)pe2(
   .i_clk(i_clk), //input          
   .i_clr(clr), //input          
   .i_pixel(pixelCol[2]), //input [23:0]   
   .i_en(en), //input          
   .i_addr(addr), //input  [2:0]   
   .o_result(peOut[2]), //output [23:0]  
   .o_valid(valid[2]) //output reg     
); 

PE#(
.WEIGHT0(weight10_1),
.WEIGHT1(weight11_1),
.WEIGHT2(weight12_1),
.WEIGHT3(weight10_2),
.WEIGHT4(weight11_2),
.WEIGHT5(weight12_2)
)pe3(
   .i_clk(i_clk), //input          
   .i_clr(clr), //input          
   .i_pixel(pixelCol[3]), //input [23:0]   
   .i_en(en), //input          
   .i_addr(addr), //input  [2:0]   
   .o_result(peOut[3]), //output [23:0]  
   .o_valid(valid[3]) //output reg     
);    

PE#(
.WEIGHT0(weight13_1),
.WEIGHT1(weight14_1),
.WEIGHT2(weight15_1),
.WEIGHT3(weight13_2),
.WEIGHT4(weight14_2),
.WEIGHT5(weight15_2)
)pe4(
   .i_clk(i_clk), //input          
   .i_clr(clr), //input          
   .i_pixel(pixelCol[4]), //input [23:0]   
   .i_en(en), //input          
   .i_addr(addr), //input  [2:0]   
   .o_result(peOut[4]), //output [23:0]  
   .o_valid(valid[4]) //output reg     
);

PE#(
.WEIGHT0(weight16_1),
.WEIGHT1(weight17_1),
.WEIGHT2(weight18_1),
.WEIGHT3(weight16_2),
.WEIGHT4(weight17_2),
.WEIGHT5(weight18_2)
)pe5(
   .i_clk(i_clk), //input          
   .i_clr(clr), //input          
   .i_pixel(pixelCol[5]), //input [23:0]   
   .i_en(en), //input          
   .i_addr(addr), //input  [2:0]   
   .o_result(peOut[5]), //output [23:0]  
   .o_valid(valid[5]) //output reg     
);

PE#(
.WEIGHT0(weight19_1),
.WEIGHT1(weight20_1),
.WEIGHT2(weight21_1),
.WEIGHT3(weight19_2),
.WEIGHT4(weight20_2),
.WEIGHT5(weight21_2)
)pe6(
   .i_clk(i_clk), //input          
   .i_clr(clr), //input          
   .i_pixel(pixelCol[6]), //input [23:0]   
   .i_en(en), //input          
   .i_addr(addr), //input  [2:0]   
   .o_result(peOut[6]), //output [23:0]  
   .o_valid(valid[6]) //output reg     
);

PE#(
.WEIGHT0(weight22_1),
.WEIGHT1(weight23_1),
.WEIGHT2(weight24_1),
.WEIGHT3(weight22_2),
.WEIGHT4(weight23_2),
.WEIGHT5(weight24_2)
)pe7(
   .i_clk(i_clk), //input          
   .i_clr(clr), //input          
   .i_pixel(pixelCol[7]), //input [23:0]   
   .i_en(en), //input          
   .i_addr(addr), //input  [2:0]   
   .o_result(peOut[7]), //output [23:0]  
   .o_valid(valid[7]) //output reg     
);

PE#(
.WEIGHT0(weight25_1),
.WEIGHT1(weight26_1),
.WEIGHT2(weight27_1),
.WEIGHT3(weight25_2),
.WEIGHT4(weight26_2),
.WEIGHT5(weight27_2)
)pe8(
   .i_clk(i_clk), //input          
   .i_clr(clr), //input          
   .i_pixel(pixelCol[8]), //input [23:0]   
   .i_en(en), //input          
   .i_addr(addr), //input  [2:0]   
   .o_result(peOut[8]), //output [23:0]  
   .o_valid(valid[8]) //output reg     
);

PE#(
.WEIGHT0(weight28_1),
.WEIGHT1(weight29_1),
.WEIGHT2(weight30_1),
.WEIGHT3(weight28_2),
.WEIGHT4(weight29_2),
.WEIGHT5(weight30_2)
)pe9(
   .i_clk(i_clk), //input          
   .i_clr(clr), //input          
   .i_pixel(pixelCol[9]), //input [23:0]   
   .i_en(en), //input          
   .i_addr(addr), //input  [2:0]   
   .o_result(peOut[9]), //output [23:0]  
   .o_valid(valid[9]) //output reg     
);

PE#(
.WEIGHT0(weight31_1),
.WEIGHT1(weight32_1),
.WEIGHT2(weight33_1),
.WEIGHT3(weight31_2),
.WEIGHT4(weight32_2),
.WEIGHT5(weight33_2)
)pe10(
   .i_clk(i_clk), //input          
   .i_clr(clr), //input          
   .i_pixel(pixelCol[10]), //input [23:0]   
   .i_en(en), //input          
   .i_addr(addr), //input  [2:0]   
   .o_result(peOut[10]), //output [23:0]  
   .o_valid(valid[10]) //output reg     
);

PE#(
.WEIGHT0(weight34_1),
.WEIGHT1(weight35_1),
.WEIGHT2(weight36_1),
.WEIGHT3(weight34_2),
.WEIGHT4(weight35_2),
.WEIGHT5(weight36_2)
)pe11(
   .i_clk(i_clk), //input          
   .i_clr(clr), //input          
   .i_pixel(pixelCol[11]), //input [23:0]   
   .i_en(en), //input          
   .i_addr(addr), //input  [2:0]   
   .o_result(peOut[11]), //output [23:0]  
   .o_valid(valid[11]) //output reg     
);

endmodule