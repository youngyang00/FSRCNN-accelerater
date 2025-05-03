/* Testbench for kernelCalc module (16 pixels & 16 weights), continuous burst input test */
`timescale 1ns/1ps
module tb_kernelCalc;
  // Inputs
  reg          i_clk;
  reg          i_reset;
  reg          i_valid;
  reg [127:0]  i_pixel;
  reg [255:0]  i_weight;
  // Outputs
  wire         o_valid;
  wire [7:0]   o_pixel;

  // Instantiate the DUT
  kernelCalc dut (
    .i_clk(i_clk),
    .i_reset(i_reset),
    .i_valid(i_valid),
    .i_pixel(i_pixel),
    .i_weight(i_weight),
    .o_valid(o_valid),
    .o_pixel(o_pixel)
  );

  // Clock generation: 100 MHz
  initial begin
    i_clk = 0;
    forever #5 i_clk = ~i_clk;
  end

  // Stimulus arrays
  reg [7:0]         pix [0:15];
  reg signed [15:0] wgt [0:15];
  integer           idx, j;
  integer           burst_length;

  initial begin
    // Initialize
    i_reset = 1;
    i_valid = 0;
    i_pixel = 0;
    i_weight= 0;
    #20;
    i_reset = 0;

    // Continuous burst: feed inputs back-to-back
    burst_length = 256;  // number of consecutive cycles
    $display("Starting continuous burst of %0d cycles", burst_length);
    i_valid = 1;
    for (idx = 0; idx < burst_length; idx = idx + 1) begin
      // Randomize inputs
      for (j = 0; j < 16; j = j + 1) begin
        pix[j] = $urandom_range(0, 255);
        wgt[j] = $urandom_range(-32768, 32767);
      end
      // Pack and drive
      i_pixel  = {pix[15],pix[14],pix[13],pix[12],pix[11],pix[10],pix[9],pix[8],
                 pix[7],pix[6],pix[5],pix[4],pix[3],pix[2],pix[1],pix[0]};
      i_weight = {wgt[15],wgt[14],wgt[13],wgt[12],wgt[11],wgt[10],wgt[9],wgt[8],
                 wgt[7],wgt[6],wgt[5],wgt[4],wgt[3],wgt[2],wgt[1],wgt[0]};
      #10;  // one clock cycle
    end
    i_valid = 0;

    // Let pipeline flush
    #100;
    $finish;
  end

  // Monitor signals
  initial begin
    $display("Time(ns) | i_valid | o_valid | first_pix | o_pixel");
    $monitor("%0t     |    %b    |   %b    |    %0d     |   %0d", $time, i_valid, o_valid, pix[0], o_pixel);
  end
endmodule
