`timescale 1ns/1ps
module tb_PE;
parameter CLK_PERIOD = 10;
/*
0F1900130E011217190700_02
0E1F00171102041D180800_01
111C001A1500071E1A0500_06

151700191A000D18190000_07
1414001513001415140300_00
1615001316001619190000_02

1F10001F22031D211F0017_13
1516001A19000E1B1A0002_09
1013001416001019160100_03
*/

reg i_clk;
reg i_clr;
reg [23:0] i_data;
reg en;
reg [2:0] i_addr;

initial begin
  i_clk = 0;
  forever #(CLK_PERIOD/2) i_clk = ~i_clk;
end

initial begin
  i_clr <= 1'b1;
  repeat(3)@(posedge i_clk);
  i_clr <= 1'b0;
  en <= 1'b1;
  i_data <= 24'h06_01_02;
  i_addr <= 'd0;
  @(posedge i_clk);
  i_data <= 24'h02_00_07;
  i_addr <= 'd1;
  @(posedge i_clk);
  i_data <= 24'h03_09_13;
  i_addr <= 'd2;
  i_clr <= 1'b1;
  @(posedge i_clk);
  i_data <= 24'h06_01_02;
  i_addr <= 'd3;
  i_clr <= 1'b0;
  @(posedge i_clk);
  i_data <= 24'h02_00_07;
  i_addr <= 'd4;
  i_clr <= 1'b0;
  @(posedge i_clk);
  i_data <= 24'h03_09_13;
  i_addr <= 'd5;
  i_clr <= 1'b1;

  ///////////////////////////////

end

PE_Array DUT(
  .i_clk(i_clk), // input          
  .i_clr(i_clr), // input          
  .i_en(en), // input          
  .i_addr(), // input [2:0]    
  .i_pixel(),  // input [287:0]  
  .o_valid(), // output         
  .o_result() // output [23:0]  
);


// PE#(
//    .WEIGHT0(24'h10D3E8),
//    .WEIGHT1(24'h7FD67F),
//    .WEIGHT2(24'h0EB57F),
//    .WEIGHT3(24'hD97F20),
//    .WEIGHT4(24'h318158),
//    .WEIGHT5(24'h197F34)
// )DUT(
//    .i_clk(i_clk), //input          i_clk,
//    .i_clr(i_clr), //input          i_clr,
//    .i_pixel(i_data), //input [23:0]   i_pixel,
//    .i_en(en), //input          i_en,
//    .i_addr(i_addr), //input  [2:0]   i_addr,
//    .o_result(), //output [23:0]  o_result,
//    .o_valid() //output reg     o_valid
// );
endmodule