// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Jun 27 10:45:20 2025
// Host        : DESKTOP-DD0PJLS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ BicubicDDRTest_BicubicResizer_0_0_stub.v
// Design      : BicubicDDRTest_BicubicResizer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bicubicResizer,Vivado 2022.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(i_clk, i_rstn, s_axis_tdata, s_axis_tvalid, 
  s_axis_tready, m_axis_tdata, m_axis_tvalid, m_axis_tready, EOL, EOF)
/* synthesis syn_black_box black_box_pad_pin="i_clk,i_rstn,s_axis_tdata[31:0],s_axis_tvalid,s_axis_tready,m_axis_tdata[127:0],m_axis_tvalid,m_axis_tready,EOL,EOF" */;
  input i_clk;
  input i_rstn;
  input [31:0]s_axis_tdata;
  input s_axis_tvalid;
  output s_axis_tready;
  output [127:0]m_axis_tdata;
  output m_axis_tvalid;
  input m_axis_tready;
  output EOL;
  output EOF;
endmodule
