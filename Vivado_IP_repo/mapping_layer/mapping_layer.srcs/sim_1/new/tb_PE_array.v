`timescale 1ns/1ps
module tb_PE_array;
parameter CLK_PERIOD = 10;
/*
0F1900130E01121719070002 0E1F00171102041D18080001 111C001A1500071E1A050006
151700191A000D1819000007 141400151300141514030000 161500131600161919000002
1516001A19000E1B1A000209 101300141600101916010003 141400161700101915020003
*/



reg i_clk;
reg i_clr;
reg [287:0] i_data;
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
  // i_data <= { 96'h0F1900130E01121719070002,
  //             96'h151700191A000D1819000007,
  //             96'h1516001A19000E1B1A000209};
  i_data <= { 96'h0,
              96'h0,
              96'h0};
  i_addr <= 'd0;
  @(posedge i_clk);
  i_data <= { 96'h151700191A000D1819000007,
              96'h0F1900130E01121719070002,
              96'h0};
  // i_data <= { 96'h0E1F00171102041D18080001,
  //             96'h141400151300141514030000,
  //             96'h101300141600101916010003};
  i_addr <= 'd1;
  @(posedge i_clk);
  i_data <= { 96'h141400151300141514030000,
              96'h0E1F00171102041D18080001,
              96'h0};
  i_addr <= 'd2;
  i_clr <= 1'b1;
  @(posedge i_clk);
  i_clr <= 1'b0;
  i_data <= { 96'h151700191A000D1819000007,
              96'h0F1900130E01121719070002,
              96'h0};
  i_addr <= 'd0;

  @(posedge i_clk);
  i_clr <= 1'b0;
  i_data <= { 96'h141400151300141514030000,
              96'h0E1F00171102041D18080001,
              96'h0};
  i_addr <= 'd1;
  @(posedge i_clk);

  i_clr <= 1'b1;
  i_data <= { 96'h161500131600161919000002,
              96'h111C001A1500071E1A050006,
              96'h0};
  i_addr <= 'd2;
  @(posedge i_clk);
  i_clr <= 1'b0;
  ///////////////////////////////
end

PE_Array DUT(
  .i_clk(i_clk), // input          
  .i_clr(i_clr), // input          
  .i_en(en), // input          
  .i_addr(i_addr), // input [2:0]    
  .i_pixel(i_data), // input [287:0]  
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