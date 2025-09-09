// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Sep  4 13:50:52 2025
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
