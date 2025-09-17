// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Sep  4 13:50:52 2025
// Host        : DESKTOP-INFKKCG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top expand_dsp48_macro_1 -prefix
//               expand_dsp48_macro_1_ xbip_dsp48_macro_0_sim_netlist.v
// Design      : xbip_dsp48_macro_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "xbip_dsp48_macro_0,xbip_dsp48_macro_v3_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_dsp48_macro_v3_0_17,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module expand_dsp48_macro_1
   (CLK,
    CE,
    SCLR,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [8:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [8:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [17:0]P;

  wire [8:0]A;
  wire [8:0]B;
  wire CE;
  wire CLK;
  wire [17:0]P;
  wire SCLR;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "9" *) 
  (* C_B_WIDTH = "9" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "128" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "17" *) 
  (* C_REG_CONFIG = "00000000000000000000000001000000" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYOUT(NLW_U0_CARRYOUT_UNCONNECTED),
        .CE(CE),
        .CEA(1'b1),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEA3(1'b1),
        .CEA4(1'b1),
        .CEB(1'b1),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEB3(1'b1),
        .CEB4(1'b1),
        .CEC(1'b1),
        .CEC1(1'b1),
        .CEC2(1'b1),
        .CEC3(1'b1),
        .CEC4(1'b1),
        .CEC5(1'b1),
        .CECONCAT(1'b1),
        .CECONCAT3(1'b1),
        .CECONCAT4(1'b1),
        .CECONCAT5(1'b1),
        .CED(1'b1),
        .CED1(1'b1),
        .CED2(1'b1),
        .CED3(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CESEL(1'b1),
        .CESEL1(1'b1),
        .CESEL2(1'b1),
        .CESEL3(1'b1),
        .CESEL4(1'b1),
        .CESEL5(1'b1),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_U0_PCOUT_UNCONNECTED[47:0]),
        .SCLR(SCLR),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule

(* C_A_WIDTH = "9" *) (* C_B_WIDTH = "9" *) (* C_CONCAT_WIDTH = "48" *) 
(* C_CONSTANT_1 = "1" *) (* C_C_WIDTH = "48" *) (* C_D_WIDTH = "18" *) 
(* C_HAS_A = "1" *) (* C_HAS_ACIN = "0" *) (* C_HAS_ACOUT = "0" *) 
(* C_HAS_B = "1" *) (* C_HAS_BCIN = "0" *) (* C_HAS_BCOUT = "0" *) 
(* C_HAS_C = "0" *) (* C_HAS_CARRYCASCIN = "0" *) (* C_HAS_CARRYCASCOUT = "0" *) 
(* C_HAS_CARRYIN = "0" *) (* C_HAS_CARRYOUT = "0" *) (* C_HAS_CE = "1" *) 
(* C_HAS_CEA = "0" *) (* C_HAS_CEB = "0" *) (* C_HAS_CEC = "0" *) 
(* C_HAS_CECONCAT = "0" *) (* C_HAS_CED = "0" *) (* C_HAS_CEM = "0" *) 
(* C_HAS_CEP = "0" *) (* C_HAS_CESEL = "0" *) (* C_HAS_CONCAT = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_INDEP_CE = "0" *) (* C_HAS_INDEP_SCLR = "0" *) 
(* C_HAS_PCIN = "0" *) (* C_HAS_PCOUT = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SCLRA = "0" *) (* C_HAS_SCLRB = "0" *) (* C_HAS_SCLRC = "0" *) 
(* C_HAS_SCLRCONCAT = "0" *) (* C_HAS_SCLRD = "0" *) (* C_HAS_SCLRM = "0" *) 
(* C_HAS_SCLRP = "0" *) (* C_HAS_SCLRSEL = "0" *) (* C_LATENCY = "128" *) 
(* C_MODEL_TYPE = "0" *) (* C_OPMODES = "000100100000010100000000" *) (* C_P_LSB = "0" *) 
(* C_P_MSB = "17" *) (* C_REG_CONFIG = "00000000000000000000000001000000" *) (* C_SEL_WIDTH = "0" *) 
(* C_TEST_CORE = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17
   (CLK,
    CE,
    SCLR,
    SEL,
    CARRYCASCIN,
    CARRYIN,
    PCIN,
    ACIN,
    BCIN,
    A,
    B,
    C,
    D,
    CONCAT,
    ACOUT,
    BCOUT,
    CARRYOUT,
    CARRYCASCOUT,
    PCOUT,
    P,
    CED,
    CED1,
    CED2,
    CED3,
    CEA,
    CEA1,
    CEA2,
    CEA3,
    CEA4,
    CEB,
    CEB1,
    CEB2,
    CEB3,
    CEB4,
    CECONCAT,
    CECONCAT3,
    CECONCAT4,
    CECONCAT5,
    CEC,
    CEC1,
    CEC2,
    CEC3,
    CEC4,
    CEC5,
    CEM,
    CEP,
    CESEL,
    CESEL1,
    CESEL2,
    CESEL3,
    CESEL4,
    CESEL5,
    SCLRD,
    SCLRA,
    SCLRB,
    SCLRCONCAT,
    SCLRC,
    SCLRM,
    SCLRP,
    SCLRSEL);
  input CLK;
  input CE;
  input SCLR;
  input [0:0]SEL;
  input CARRYCASCIN;
  input CARRYIN;
  input [47:0]PCIN;
  input [29:0]ACIN;
  input [17:0]BCIN;
  input [8:0]A;
  input [8:0]B;
  input [47:0]C;
  input [17:0]D;
  input [47:0]CONCAT;
  output [29:0]ACOUT;
  output [17:0]BCOUT;
  output CARRYOUT;
  output CARRYCASCOUT;
  output [47:0]PCOUT;
  output [17:0]P;
  input CED;
  input CED1;
  input CED2;
  input CED3;
  input CEA;
  input CEA1;
  input CEA2;
  input CEA3;
  input CEA4;
  input CEB;
  input CEB1;
  input CEB2;
  input CEB3;
  input CEB4;
  input CECONCAT;
  input CECONCAT3;
  input CECONCAT4;
  input CECONCAT5;
  input CEC;
  input CEC1;
  input CEC2;
  input CEC3;
  input CEC4;
  input CEC5;
  input CEM;
  input CEP;
  input CESEL;
  input CESEL1;
  input CESEL2;
  input CESEL3;
  input CESEL4;
  input CESEL5;
  input SCLRD;
  input SCLRA;
  input SCLRB;
  input SCLRCONCAT;
  input SCLRC;
  input SCLRM;
  input SCLRP;
  input SCLRSEL;

  wire [8:0]A;
  wire [29:0]ACIN;
  wire [29:0]ACOUT;
  wire [8:0]B;
  wire [17:0]BCIN;
  wire [17:0]BCOUT;
  wire CARRYCASCIN;
  wire CARRYCASCOUT;
  wire CARRYOUT;
  wire CE;
  wire CLK;
  wire [17:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;
  wire SCLR;

  (* C_A_WIDTH = "9" *) 
  (* C_B_WIDTH = "9" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "128" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "17" *) 
  (* C_REG_CONFIG = "00000000000000000000000001000000" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17_viv i_synth
       (.A(A),
        .ACIN(ACIN),
        .ACOUT(ACOUT),
        .B(B),
        .BCIN(BCIN),
        .BCOUT(BCOUT),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(CARRYCASCIN),
        .CARRYCASCOUT(CARRYCASCOUT),
        .CARRYIN(1'b0),
        .CARRYOUT(CARRYOUT),
        .CE(CE),
        .CEA(1'b0),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEA3(1'b0),
        .CEA4(1'b0),
        .CEB(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEB3(1'b0),
        .CEB4(1'b0),
        .CEC(1'b0),
        .CEC1(1'b0),
        .CEC2(1'b0),
        .CEC3(1'b0),
        .CEC4(1'b0),
        .CEC5(1'b0),
        .CECONCAT(1'b0),
        .CECONCAT3(1'b0),
        .CECONCAT4(1'b0),
        .CECONCAT5(1'b0),
        .CED(1'b0),
        .CED1(1'b0),
        .CED2(1'b0),
        .CED3(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CESEL(1'b0),
        .CESEL1(1'b0),
        .CESEL2(1'b0),
        .CESEL3(1'b0),
        .CESEL4(1'b0),
        .CESEL5(1'b0),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN(PCIN),
        .PCOUT(PCOUT),
        .SCLR(SCLR),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
nDT0FFr3kgAnVEb2awIM3BnKUBc7yihoXB0vfPof9ml3qiHsywja1jzpI0JL5TCkL5Vim5+pfP8I
0LoVeSlLdw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
leuQs1hhDH9+hOOQlz+rNh7VdTud8SM3XjvAtbigjfVXcA5aNVJUbTOxuEGUipSwD4xg6vAQhUNU
DDOXTaF36Kfc7A+qxERpwYqe3DoxX4tLp0gmxRsyUkB1xGkORCW/PFoyj32u2V5IiZ/5p/7rUXhw
gZ2aWWBj+bTQrQ0xwb8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ypbhn2W+iOZPt4pWarhni35O4FaP/76+bnxHXqRCMcOP8Qjoaah4eM0O2O/m3jnsQelmsTpYhA2O
6tnq7o+aOSa1Yrf7o8mke23hE7jOca1t8DqUxIHD+bvTrSeXLaRubFyUjUy/O8kNjDSJ9GZKD86P
xtVU6jm1cp3nuuD/pAPERRV13+MWckBp6glo9OlCWgTV/FM2zC9q5vLom2BOuzWz9mFFpmhKyNgj
NXhV/3gG/f16RvoR/hUdtXEPEc4WmUePjU8eT8LCLc5DHf/pDJM5vO0ier7HAAtAwPkXcxSHQK4X
NNBGzw3GV+MN9Y0abcvzkNo7bm0Vl9iCaMXOzQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hKfQEFSkz1+iUXEzpGZQXnEjl6Xu87VajUqqo6psFiQuSetWUEZHKUb5bIenWv9GpqyX444Y8Wf+
YkDM3axnFIfLHDX0RU410ylCx1Ip9IHSAk/Az7yTYCh2qTkhycA2wAVMaINYlXvVv9gDSWvLvNAl
tKInavD4D14joDZL1OhOHMaaei622MQt+uJwNXP0U+ojMJTJghCc7YYo3BY2IKwaf1EUWVcyPhTl
zQJ/4gRsDsVR8J8YdIEEMybZHxhCxL+O6pkLMTcpEctoRiYD7aDJB0koeBrsYHMGER2PRsbfFLAN
GZCnHjADfCfMNgsJkVG7gRGAaLFQEESPI1yW8g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mStClLzet5qWZ6xyWOxCXWIOJpxoFFAdb87C9h5/A+BwbXHdFkDYgyR/p4SRYfWVFP/21toTRpVF
O+BaFDbl/7bhGaiRAKqHROKAtxH+qra0evZ/fNCG0uKKLBgIA+UiAAhU1zOKKDZMhv1jO7hRKWrj
3IhG8tmDOu6h/LgZOSq0ED00GorsA5SHgXHrJxCBpHjqx16nuMDK2VhXKA6fCY/Oz9QNBgEUR9Y0
FAvuWLz0+64BreNMt0Rh/FCRZv2iSPVahsTncHAhtAn9zu45vFTlrav1Vzgfik3DX8jlByPmSRtj
ao57HQCyXxC6S7mRoStDfY1FM3Vrgaa8Q9FQOg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
OKqfJevTlfXHMYcxqeiJOSMVoQ7uWRORRRovYWsq7xdU598tCXUmOJS8I0GcbIZ1ZJF7En/DUT3U
uHy4fImCnIlBhvb7tWeR64l8fA3NDf8TROs4UwwkaPKveLah/9vvHfSCqRl67y9S8LmCfGhf2riD
6U2l/21Qoh+y8n47hl8=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hi65SSdBb27dkJQDyd0+ZUNHbJLTAPzntdwe6ND6gJJ93P/dmDIUtF2b1aGBky/6BsQZtkDi3XwM
xSpVlqUGnD0kWJFMfPQmSPynrZNLwgVPNB5o11haxVQZeMAOaRssP/m6WQ8dbuvAlCFcCu0q3DNf
6J6u0ISFJdKhGtxCoA4/S7eo2RXifv4f6bOrFvV+a10IkfZyKTVSi6jZruHcQVkg4mIDrd+TzUAw
/4YzGJ7WnzR1bjSdkzfIhcQkpgTDS+xshM0qRGBZu6P/zt/CRfWCGSGomapBi9ef1unBpMHn5nOi
ieiu2r//R53Rf1hwP2iXI/RY9ng1nM2uuySTBw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VB/LSo/uD6dSFyEhvlSxPwcZCSHWZXQefQz3l9wE4rkfxZwEiCcWHS5ZUJ2CmalrEfwvflRNj4SQ
S9hO9Xe6ZLHJDWLrJaI4kZ47dA2QdhdwFkgTSjw1cfLoD54ogkGuDJTQ6c1LcSJTKFjURgS9Hevl
J1hqhJmmAe7LeyF/+rCsdwmdMEVHuT7XhYnMkD1q/xcOS2JMhIiDKNkHDAKy6Xd+TwEWLwqNfLEj
bPuQ/Qh0KlwY2VjP7V5pu9YrP3uT65G+cGPGn1sCz4AeWGPq6Brr+0fca6LBTCP9iYfjVM4+RYQB
endGIZKFtOKB+ovWCImjLrPzbu8nE7iUUuWGoA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cHNNxBtImHkaFzp2FrYNxsKusFp4n0v4K3bxF1MvOgrJuIXlkpLaBs1erMsNhEUax5qipPDkD+DQ
6dB6jGuArWSLs4VWxMcJDc3wevTHmlS25EkAn298UP/5JZ5wiXXoWR679c2vrWLfzdL2PhlNc2Od
a8zsQGKyO2FsqpV74V9bkHB5bI9sMR4o8fLUMxDkrpv+bfjEfZL4XRpWZihC6oKZmFkkLavBmOMx
BV/4HaS/jd5rtatH49iS3qFNeyoCel+h1+2lkE6hLCrHR8OYCUIaTzaowvPnn3XjgNug0eMALbrK
zqISUC/ebacy9NIkgx/AjwsLkNNG3uVcIailkw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10144)
`pragma protect data_block
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
aoBAVp/NTh78fRxFyuMBrQ==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
