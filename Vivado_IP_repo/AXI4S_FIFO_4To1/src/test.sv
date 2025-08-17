`timescale 1ns/1ps
`include "axi4s_io.sv"
`include "Generator.sv"
`include "Driver.sv"
`include "Receiver.sv"
`include "Scoreboard.sv"
`include "pixelTypes.h"


module tb_mappingLayer;
  logic clk = 0;
  axi4s_io tb_if(clk);
  
axis_4to3_fifo#(
  .DEPTH_BYTES(32)
)DUT(
    .aclk(clk),
    .aresetn(tb_if.i_rstn),
    .s_axis_tdata(tb_if.s_axis_tdata),
    .s_axis_tvalid(tb_if.s_axis_tvalid),
    .s_axis_tready(tb_if.s_axis_tready),
    .m_axis_tdata(tb_if.m_axis_tdata),
    .m_axis_tvalid(tb_if.m_axis_tvalid),
    .m_axis_tready(tb_if.m_axis_tready)
);

   mailbox #(in_pixel_t) mbox_drv = new();
   mailbox #(out_pixel_t) mbox_Recv = new();
   Generator gen;
   Driver drv;
   Receiver recv;
   Scoreboard sc;

  always #5 clk = ~clk;


  initial begin
   automatic int width = 240;
   automatic int depth = 180;
   automatic int out_width = 320;
   automatic int out_depth = 180;
   automatic int frame_count = 2;
   automatic int burst_len = 1000;
   automatic int pause_cycles = 1;
   automatic int master_ready_burst_len = 1000;
   automatic int master_ready_pause_cycles = 1;


   gen = new("gen", width, depth, frame_count, mbox_drv);
   drv = new(tb_if.TB, mbox_drv, burst_len, pause_cycles, width * depth * frame_count);
   recv = new(tb_if.TB, mbox_Recv , master_ready_burst_len , master_ready_pause_cycles);
   sc = new(mbox_Recv, out_width, out_depth, frame_count);

   fork
      drv.run();
      gen.run();
      recv.run();
      sc.run();
   join
  end
endmodule