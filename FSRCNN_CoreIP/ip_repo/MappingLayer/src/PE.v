// SPDX-License-Identifier: MIT
// Copyright (c) 2025 Gwangsun Shin

module PE#(
  parameter WEIGHT0 = 24'h10D3E8,
  parameter WEIGHT1 = 24'h7FD67F,
  parameter WEIGHT2 = 24'h0EB57F,
  parameter WEIGHT3 = 24'h10D3E8,
  parameter WEIGHT4 = 24'h7FD67F,
  parameter WEIGHT5 = 24'h0EB57F
)(
   input          i_clk,
   input          i_clr,
   input [23:0]   i_pixel,
   input          i_en,
   input  [2:0]   i_addr,
   output [23:0]  o_result,
   output reg     o_valid
);
reg [1:0] resetInter;
wire signed [19:0]  DSP_inter [0:2];
wire [23:0]       weight_packed;
reg signed [23:0] adderReg_pipe0;

always @(posedge i_clk) begin
   resetInter[0] <= i_clr;
   resetInter[1] <= resetInter[0];
   o_valid <= resetInter[1];
end

always @(posedge i_clk) begin
   if (resetInter[1]) begin
      adderReg_pipe0 <= DSP_inter[0] + DSP_inter[1] + DSP_inter[2];
   end
end

assign o_result = adderReg_pipe0;

dsp_macro_0 DSP0(
  .CLK(i_clk),    // input wire CLK
  .CE(i_en),      // input wire CE
//   .SCLR(!i_rstn),  // input wire SCLR
  .A({{10{1'b0}},i_pixel[7:0]}),        // input wire [17 : 0] A
  .B({{10{weight_packed[23]}},weight_packed[23:16]}),        // input wire [17 : 0] B
  .C({{12{DSP_inter[0][19]}}, DSP_inter[0]} & {32{!resetInter[1]}}),        // input wire [31 : 0] C
  .P(DSP_inter[0])        // output wire [36 : 0] P
);

dsp_macro_0 DSP1(
  .CLK(i_clk),    // input wire CLK
  .CE(i_en),      // input wire CE
//   .SCLR(!i_rstn),  // input wire SCLR
  .A({{10{1'b0}},i_pixel[15:8]}),        // input wire [17 : 0] A
  .B({{10{weight_packed[15]}},weight_packed[15:8]}),        // input wire [17 : 0] B
  .C({{12{DSP_inter[1][19]}}, DSP_inter[1]} & {32{!resetInter[1]}}),        // input wire [31 : 0] C
  .P(DSP_inter[1])        // output wire [36 : 0] P
);

dsp_macro_0 DSP2(
  .CLK(i_clk),    // input wire CLK
  .CE(i_en),      // input wire CE
//   .SCLR(!i_rstn),  // input wire SCLR
  .A({{10{1'b0}},i_pixel[23:16]}),        // input wire [17 : 0] A
  .B({{10{weight_packed[7]}},weight_packed[7:0]}),        // input wire [17 : 0] B
  .C({{12{DSP_inter[2][19]}}, DSP_inter[2]} & {32{!resetInter[1]}}),        // input wire [31 : 0] C
  .P(DSP_inter[2])        // output wire [36 : 0] P
);

rom_6x24_ff_async #(
  .DATA0(WEIGHT0),
  .DATA1(WEIGHT1),
  .DATA2(WEIGHT2),
  .DATA3(WEIGHT3),
  .DATA4(WEIGHT4),
  .DATA5(WEIGHT5)
)weight_rom(  
  .addr(i_addr),     
  .dout(weight_packed)  
);


endmodule