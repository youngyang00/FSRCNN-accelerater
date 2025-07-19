/* Testbench for PE_M_layer: MAC operation (P = A * B + C) */
`timescale 1ns/1ps

module tb_PE_M_layer;
  // Parameters
  parameter CLK_PERIOD = 10;

  // Inputs
  reg           i_clk;
  reg           i_clr;
  reg [17:0]    i_data;
  reg [17:0]    i_data2;
  reg [31:0]    i_C;
  reg           i_valid;

  // Output
  wire [47:0]   o_p;

  // Instantiate the PE_M_layer
  dsp_test uut (
    .i_clk   (i_clk),
    .i_clr  (i_clr),
    .i_data  (i_data),
    .i_data2 (i_data2),
    .i_C     (i_C),
    .i_valid (i_valid),
    .o_p     (o_p)
  );

  // Clock generation
  initial begin
    i_clk = 0;
    forever #(CLK_PERIOD/2) i_clk = ~i_clk;
  end

  // Test stimulus
  initial begin
    i_clr <= 1'b1;
    repeat(3)@(posedge i_clk);
    i_clr <= 1'b0;
    i_valid <= 1'b1;
    i_data <= 1;
    i_data2 <= 2;
    @(posedge i_clk);
    i_data <= 3;
    i_data2 <= 4;
    @(posedge i_clk);
    i_data <= 5;
    i_data2 <= 6;
    i_clr <= 1'b1;
    ///////////////////////////////
    @(posedge i_clk);
    i_clr <= 1'b0;
    i_data <= 1;
    i_data2 <= 2;
    @(posedge i_clk);
    i_data <= 3;
    i_data2 <= 4;
    @(posedge i_clk);
    i_valid <= 0;
    @(posedge i_clk);
    i_valid <= 1;
    i_data <= 5;
    i_data2 <= 6;
    @(posedge i_clk);
    @(posedge i_clk);
    $finish;
  end

endmodule
