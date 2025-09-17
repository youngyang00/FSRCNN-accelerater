// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Sep  5 10:54:14 2025
// Host        : xylo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/submit/AXI4S_Feature_Extraction_Layer/AXI4S_Feature_Extraction_Layer.gen/sources_1/ip/feature_dsp_macro_0/feature_dsp_macro_0_stub.v
// Design      : feature_dsp_macro_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dsp_macro_v1_0_2,Vivado 2022.2" *)
module feature_dsp_macro_0(CLK, CE, A, B, C, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,CE,A[17:0],B[17:0],C[31:0],P[36:0]" */;
  input CLK;
  input CE;
  input [17:0]A;
  input [17:0]B;
  input [31:0]C;
  output [36:0]P;
endmodule
