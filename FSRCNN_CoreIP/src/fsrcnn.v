//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Fri Sep 12 23:41:25 2025
//Host        : DESKTOP-DD0PJLS running 64-bit major release  (build 9200)
//Command     : generate_target fsrcnn.bd
//Design      : fsrcnn
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "fsrcnn,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=fsrcnn,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "fsrcnn.hwdef" *) 
module fsrcnn
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, CLK_DOMAIN fsrcnn_axi_clk_0, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [7:0]M_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS " *) input M_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS " *) output M_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, CLK_DOMAIN fsrcnn_axi_clk_0, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]S_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS " *) output S_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS " *) input S_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXIS_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXIS_ACLK, ASSOCIATED_BUSIF S_AXIS:M_AXIS, ASSOCIATED_RESET s_axis_aresetn, CLK_DOMAIN fsrcnn_axi_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input s_axis_aclk;
  input s_axis_aresetn;

  wire [127:0]AXIS_Expanding_Layer_0_m_axis_TDATA;
  wire AXIS_Expanding_Layer_0_m_axis_TREADY;
  wire AXIS_Expanding_Layer_0_m_axis_TVALID;
  wire [95:0]AXIS_Shrinking_Layer_0_m_axis_TDATA;
  wire AXIS_Shrinking_Layer_0_m_axis_TREADY;
  wire AXIS_Shrinking_Layer_0_m_axis_TVALID;
  wire [7:0]AXIS_Y_Converter_0_m_axis_TDATA;
  wire AXIS_Y_Converter_0_m_axis_TREADY;
  wire AXIS_Y_Converter_0_m_axis_TVALID;
  wire [95:0]AxiMappingLayer_0_m_axis_TDATA;
  wire AxiMappingLayer_0_m_axis_TREADY;
  wire AxiMappingLayer_0_m_axis_TVALID;
  wire [127:0]Feature_Extraction_L_0_m_axis_TDATA;
  wire Feature_Extraction_L_0_m_axis_TREADY;
  wire Feature_Extraction_L_0_m_axis_TVALID;
  wire axi_clk_0_1;
  wire axi_reset_n_0_1;
  wire deconv_top_0_EOF;
  wire deconv_top_0_EOL;
  wire [7:0]deconv_top_0_m_axis_TDATA;
  wire deconv_top_0_m_axis_TREADY;
  wire deconv_top_0_m_axis_TVALID;
  wire [31:0]s_axis_0_1_TDATA;
  wire s_axis_0_1_TREADY;
  wire s_axis_0_1_TVALID;

  assign EOF = deconv_top_0_EOF;
  assign EOL = deconv_top_0_EOL;
  assign M_AXIS_tdata[7:0] = deconv_top_0_m_axis_TDATA;
  assign M_AXIS_tvalid = deconv_top_0_m_axis_TVALID;
  assign S_AXIS_tready = s_axis_0_1_TREADY;
  assign axi_clk_0_1 = s_axis_aclk;
  assign axi_reset_n_0_1 = s_axis_aresetn;
  assign deconv_top_0_m_axis_TREADY = M_AXIS_tready;
  assign s_axis_0_1_TDATA = S_AXIS_tdata[31:0];
  assign s_axis_0_1_TVALID = S_AXIS_tvalid;
  fsrcnn_AXIS_Expanding_Layer_0_0 AXIS_Expanding_Layer_0
       (.axi_clk(axi_clk_0_1),
        .axi_reset_n(axi_reset_n_0_1),
        .m_axis_tdata(AXIS_Expanding_Layer_0_m_axis_TDATA),
        .m_axis_tready(AXIS_Expanding_Layer_0_m_axis_TREADY),
        .m_axis_tvalid(AXIS_Expanding_Layer_0_m_axis_TVALID),
        .s_axis_tdata(AxiMappingLayer_0_m_axis_TDATA),
        .s_axis_tready(AxiMappingLayer_0_m_axis_TREADY),
        .s_axis_tvalid(AxiMappingLayer_0_m_axis_TVALID));
  fsrcnn_AXIS_Shrinking_Layer_0_0 AXIS_Shrinking_Layer_0
       (.axi_clk(axi_clk_0_1),
        .axi_reset_n(axi_reset_n_0_1),
        .m_axis_tdata(AXIS_Shrinking_Layer_0_m_axis_TDATA),
        .m_axis_tready(AXIS_Shrinking_Layer_0_m_axis_TREADY),
        .m_axis_tvalid(AXIS_Shrinking_Layer_0_m_axis_TVALID),
        .s_axis_tdata(Feature_Extraction_L_0_m_axis_TDATA),
        .s_axis_tready(Feature_Extraction_L_0_m_axis_TREADY),
        .s_axis_tvalid(Feature_Extraction_L_0_m_axis_TVALID));
  fsrcnn_AXIS_Y_Converter_0_0 AXIS_Y_Converter_0
       (.axi_clk(axi_clk_0_1),
        .axi_reset_n(axi_reset_n_0_1),
        .m_axis_tdata(AXIS_Y_Converter_0_m_axis_TDATA),
        .m_axis_tready(AXIS_Y_Converter_0_m_axis_TREADY),
        .m_axis_tvalid(AXIS_Y_Converter_0_m_axis_TVALID),
        .s_axis_tdata(s_axis_0_1_TDATA),
        .s_axis_tready(s_axis_0_1_TREADY),
        .s_axis_tvalid(s_axis_0_1_TVALID));
  fsrcnn_AxiMappingLayer_0_0 AxiMappingLayer_0
       (.i_clk(axi_clk_0_1),
        .i_rstn(axi_reset_n_0_1),
        .m_axis_tdata(AxiMappingLayer_0_m_axis_TDATA),
        .m_axis_tready(AxiMappingLayer_0_m_axis_TREADY),
        .m_axis_tvalid(AxiMappingLayer_0_m_axis_TVALID),
        .s_axis_tdata(AXIS_Shrinking_Layer_0_m_axis_TDATA),
        .s_axis_tready(AXIS_Shrinking_Layer_0_m_axis_TREADY),
        .s_axis_tvalid(AXIS_Shrinking_Layer_0_m_axis_TVALID));
  fsrcnn_Feature_Extraction_L_0_0 Feature_Extraction_L_0
       (.axi_clk(axi_clk_0_1),
        .axi_reset_n(axi_reset_n_0_1),
        .m_axis_tdata(Feature_Extraction_L_0_m_axis_TDATA),
        .m_axis_tready(Feature_Extraction_L_0_m_axis_TREADY),
        .m_axis_tvalid(Feature_Extraction_L_0_m_axis_TVALID),
        .s_axis_tdata(AXIS_Y_Converter_0_m_axis_TDATA),
        .s_axis_tready(AXIS_Y_Converter_0_m_axis_TREADY),
        .s_axis_tvalid(AXIS_Y_Converter_0_m_axis_TVALID));
  fsrcnn_deconv_top_0_0 deconv_top_0
       (.EOF(deconv_top_0_EOF),
        .EOL(deconv_top_0_EOL),
        .axi_clk(axi_clk_0_1),
        .axi_reset_n(axi_reset_n_0_1),
        .m_axis_tdata(deconv_top_0_m_axis_TDATA),
        .m_axis_tready(deconv_top_0_m_axis_TREADY),
        .m_axis_tvalid(deconv_top_0_m_axis_TVALID),
        .s_axis_tdata(AXIS_Expanding_Layer_0_m_axis_TDATA),
        .s_axis_tready(AXIS_Expanding_Layer_0_m_axis_TREADY),
        .s_axis_tvalid(AXIS_Expanding_Layer_0_m_axis_TVALID));
endmodule
