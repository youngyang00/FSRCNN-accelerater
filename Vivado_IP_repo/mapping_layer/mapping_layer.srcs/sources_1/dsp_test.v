module dsp_test(
    input           i_clk,
    input           i_clr,
    input   [17:0]  i_data,
    input   [17:0]  i_data2,
    input   [47:0]  i_C,
    input           i_valid,
    output  [47:0]  o_p

    );

wire [47:0] inter;
reg [1:0]resetInter;
always @(posedge i_clk) begin
    resetInter[0] <= i_clr;
    resetInter[1] <= resetInter[0];
end

dsp_macro_0 DSP(
  .CLK(i_clk),    // input wire CLK
  .CE(i_valid),      // input wire CE
//   .SCLR(!i_rstn),  // input wire SCLR
  .A(i_data),        // input wire [17 : 0] A
  .B(i_data2),        // input wire [17 : 0] B
  .C(inter & {47{!resetInter[1]}}),        // input wire [47 : 0] C
  .P(inter)        // output wire [47 : 0] P
);
endmodule
