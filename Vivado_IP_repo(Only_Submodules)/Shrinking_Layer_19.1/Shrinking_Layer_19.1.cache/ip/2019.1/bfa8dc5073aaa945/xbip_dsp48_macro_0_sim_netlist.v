// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Sep  4 16:22:33 2025
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
