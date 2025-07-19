module pixelArranger(
   input          i_clk,
   input          i_rstn,
   input [95:0]   s_axis_tdata, // 8 x 12 bits
   input          s_axis_tvalid,
   output         s_axis_tready,
   output [287:0] o_data, // 8 x 3 x 12 bits
   output         o_valid
);

xilinx_true_dual_port_no_change_1_clock_ram #(
  .RAM_WIDTH(96),
  .RAM_DEPTH(1024),
  .RAM_PERFORMANCE("LOW_LATENCY"),
  .INIT_FILE("D:/mapping_layer/mapping_layer.srcs/sources_1/new/zero.txt")
) lineBuffer (
  .addra(),
  .addrb(),
  .dina(),
  .dinb(),
  .clka(),
  .wea(),
  .web(),
  .ena(),
  .enb(),
  .rsta(),
  .rstb(),
  .regcea(),
  .regceb(),
  .douta(),
  .doutb()
);
   
endmodule