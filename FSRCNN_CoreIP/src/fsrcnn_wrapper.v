//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Sun Sep 21 12:10:38 2025
//Host        : DESKTOP-DD0PJLS running 64-bit major release  (build 9200)
//Command     : generate_target fsrcnn_wrapper.bd
//Design      : fsrcnn_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module fsrcnn_wrapper
   (EOF,
    EOL,
    M_AXIS_tdata,
    M_AXIS_tready,
    M_AXIS_tvalid,
    S_AXIS_tdata,
    S_AXIS_tready,
    S_AXIS_tvalid,
    s_axis_aclk,
    s_axis_aresetn);
  output EOF;
  output EOL;
  output [7:0]M_AXIS_tdata;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  input [31:0]S_AXIS_tdata;
  output S_AXIS_tready;
  input S_AXIS_tvalid;
  input s_axis_aclk;
  input s_axis_aresetn;

  wire EOF;
  wire EOL;
  wire [7:0]M_AXIS_tdata;
  wire M_AXIS_tready;
  wire M_AXIS_tvalid;
  wire [31:0]S_AXIS_tdata;
  wire S_AXIS_tready;
  wire S_AXIS_tvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;

  fsrcnn fsrcnn_i
       (.EOF(EOF),
        .EOL(EOL),
        .M_AXIS_tdata(M_AXIS_tdata),
        .M_AXIS_tready(M_AXIS_tready),
        .M_AXIS_tvalid(M_AXIS_tvalid),
        .S_AXIS_tdata(S_AXIS_tdata),
        .S_AXIS_tready(S_AXIS_tready),
        .S_AXIS_tvalid(S_AXIS_tvalid),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aresetn(s_axis_aresetn));
endmodule
