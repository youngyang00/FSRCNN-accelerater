// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Sep  4 16:22:33 2025
// Host        : DESKTOP-INFKKCG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top shrink_dsp48_macro_1 -prefix
//               shrink_dsp48_macro_1_ xbip_dsp48_macro_0_sim_netlist.v
// Design      : xbip_dsp48_macro_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "xbip_dsp48_macro_0,xbip_dsp48_macro_v3_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_dsp48_macro_v3_0_17,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module shrink_dsp48_macro_1
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
  shrink_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 U0
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
module shrink_dsp48_macro_1_xbip_dsp48_macro_v3_0_17
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
  shrink_dsp48_macro_1_xbip_dsp48_macro_v3_0_17_viv i_synth
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
W3SGUBE+cQr2kmqVDMgfyJJQ0KxJuYNAMalDzDXrthXLTqjuE7H8Ky4pu2LXg/y3+LUC+rg79ihD
CuLNYQ/w8cQKvSqd1NrOXuqNXvXFKG0n4okeCYeVo3Bv9IxpcI5yTftjFTAO44p/NwiWOsBjICFO
wZrR6fRHRszKW+hH7yWgDCETXvOZxBNVGDDS/jZo0FAZbK0/lBwNG4zEmRLL5k4NBAJcpGmxXNOu
1N+GxNQKTWMM/d3RjThDbqf+wrD0ZkDcX0TBav/B6s2zjsc+oGRkUKdvGsYhs1/gE3JZVvS2f/k3
5hnQ+HfXZPIx/4e2OwLCzalC+uzymhaDaNGxLA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
2QG6ydBh28GQGQziLejwYf/4DJw5h7UKt6gjuS/PNu0eE92a1ewMColut0lTKroQzbMS+0ogQB7o
Jt9qvtL/e9f094VLqTiIey5bUmIj16asc4HxbtfsLCgUoCHZvC4WYhXMNLOJw/thjvux15y7Ag/N
baO7W2N08b34iFMRAl0rA1plb1IWF1+Jdm2V21SAEVC4cwowzAofXlERCRwz/7HG8i0nRfz95D89
pJTdThBz0MdQKRHHBtg2xIQw7hTwWVYZYtiDDGQA3TCjMFEXLV/J9z0/hv/hISC83L71h7lTg9wj
U7Ks/GvLh7hmSFX0AuWAnHvvUC/NaDrnLBTrqQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10144)
`pragma protect data_block
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
IFyOuGydcBHwUsUqafQIZg==
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
