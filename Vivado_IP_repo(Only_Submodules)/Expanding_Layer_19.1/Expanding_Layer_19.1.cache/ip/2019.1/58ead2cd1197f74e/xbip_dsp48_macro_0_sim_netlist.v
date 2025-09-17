// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Sep  4 13:37:05 2025
// Host        : DESKTOP-INFKKCG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ xbip_dsp48_macro_0_sim_netlist.v
// Design      : xbip_dsp48_macro_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "xbip_dsp48_macro_0,xbip_dsp48_macro_v3_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_dsp48_macro_v3_0_17,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    CE,
    SCLR,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [17:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [35:0]P;

  wire [17:0]A;
  wire [17:0]B;
  wire CE;
  wire CLK;
  wire [35:0]P;
  wire SCLR;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "18" *) 
  (* C_B_WIDTH = "18" *) 
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
  (* C_P_MSB = "35" *) 
  (* C_REG_CONFIG = "00000000000000000000000001000000" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_dsp48_macro_v3_0_17 U0
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

(* C_A_WIDTH = "18" *) (* C_B_WIDTH = "18" *) (* C_CONCAT_WIDTH = "48" *) 
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
(* C_P_MSB = "35" *) (* C_REG_CONFIG = "00000000000000000000000001000000" *) (* C_SEL_WIDTH = "0" *) 
(* C_TEST_CORE = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_dsp48_macro_v3_0_17
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
  input [17:0]A;
  input [17:0]B;
  input [47:0]C;
  input [17:0]D;
  input [47:0]CONCAT;
  output [29:0]ACOUT;
  output [17:0]BCOUT;
  output CARRYOUT;
  output CARRYCASCOUT;
  output [47:0]PCOUT;
  output [35:0]P;
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

  wire [17:0]A;
  wire [29:0]ACIN;
  wire [29:0]ACOUT;
  wire [17:0]B;
  wire [17:0]BCIN;
  wire [17:0]BCOUT;
  wire CARRYCASCIN;
  wire CARRYCASCOUT;
  wire CARRYOUT;
  wire CE;
  wire CLK;
  wire [35:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;
  wire SCLR;

  (* C_A_WIDTH = "18" *) 
  (* C_B_WIDTH = "18" *) 
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
  (* C_P_MSB = "35" *) 
  (* C_REG_CONFIG = "00000000000000000000000001000000" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_dsp48_macro_v3_0_17_viv i_synth
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
dGPs9SSRq63/XrLF/ffmlfD6NFiMiQ/rQqJUTVdxa+miU64No6iwcbHY4RrnQlGmBmxJe5ERz+NZ
vSvVP5eE14IrlW5KAA9cJlBqVFbabL0TLhNFcQdcCH/oA0urSBoXOiztHUpxDiKVMOtOrA1lgToP
5cWJci46bAzCoyvUC5mpon8nK6Vm2RbZKmu9jMinBK4q0pIWyDILT1fYrjkVWkphB7WRfc3jSC1P
Aq4/cCS6gaKS3eUbx8iP9kFhHI0TR+T/DpSb6QkopNW/Fxrqn/KHaqOsJSE938QCDm4UQPYfsMGj
4+z75c3VEUJ6XdP/+h71UXV4wXw4BGMXK5sHFg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WGHIsfx2J3kU4dTKgFGBtIKgBxaLZFXqkjSP3QoSW7CS4NUJvKLLrk7U3lM4NAWSnKuEz/SkJo0B
irszKjemEJpX4X01QPuit901eAACUym7K11qHWVJLKm0dO/DEdAbuPwyXr3pBQ+okwFNp10AgM6N
8n1OL9KFH4tBHES6MYUACj1B7168BSnMnJIHjGcAZoG2A61Z3Ti2zgmrOlx84fHgB8yGc6Rm12ri
X4hH/e2qey9mgyXsoZbpoxvCZv/JLFd3jYJPTHr+8Fw6htgARTFroAUHzxTOgWnT4JncACbQdm49
bMkfxab4Pp/73tYYBRYgfwAYZlT4Qnj25CesnA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9328)
`pragma protect data_block
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
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
