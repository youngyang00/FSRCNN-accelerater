// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Jul 13 19:19:59 2025
// Host        : DESKTOP-DD0PJLS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dsp_macro_0_sim_netlist.v
// Design      : dsp_macro_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_0,dsp_macro_v1_0_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_2,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    CE,
    A,
    B,
    C,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [17:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [31:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [36:0]P;

  wire [17:0]A;
  wire [17:0]B;
  wire [31:0]C;
  wire CE;
  wire CLK;
  wire [36:0]P;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "18" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "32" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "1" *) 
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
  (* C_HAS_SCLR = "0" *) 
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
  (* C_OPMODES = "000100111000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "36" *) 
  (* C_REG_CONFIG = "00000000000000000011000011000000" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dsp_macro_v1_0_2 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C(C),
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
        .SCLR(1'b0),
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
C6jZK6NIVv+7/1tlzJd4eRQQ6rM6USDHddvHQqrYM6OqNVuoDb5I2SckTZTmmFHG4KTN9Yt9o/Kd
5NKjautnKkQ7HWmmRE2W4jwm1PX1GFp/IAoBUnks73GXVRbQoXKN3zCXrZDeSoyxDTitlRMZ3lXM
LTjoOwU6YuvMhQ4bfco=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
B4lewz1Cy21BLdfd1yNiQAHEcPQq4OWCx5YiBFfP6ZU+1aLJ0rknLauGGcTOSRFkZL+QV6iyLcZZ
zysCItt7Jt15ffijwFA7jaft+7jawlZABJbceyyMNVv/23YugnhYk53jGkYnp2xDy/q61XS1ludF
Ed97kHsPfq6lI9WgyLnd2KkjQPS9s2yUAxEQ6juHGEBu2HsXUWwL2FYIuKxM/4x+nm3n0d1TnuiL
saaiFyZw4VktFHREZPeaGPT8x77Sk2QDOJ1cSPE7bttHihi/lHU6r3v99pb9axCZipRKpPnreT16
srZfmXqqxAZB6tuEsAzms8JGKjMWefmghhBJHw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
fdbTTtSy1o2SuzHY7hHnh7YxkGYBmOuQmkSKyL5Qx1U6qHWeYLWcwez9/4Tw/AgnafXHLR4zDAXR
6bT3DnLG6W8BAhN8J/uTjlIk5fVkKVDvbEzn9gyAaKWmXZIlnHkgOpIxz3CWEddMCuor3N1nEtJg
LN/0GFLpa3SOrzgSuAg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WOcDpzvWO34xEOiPvcGX3mgCzAYEWdhwsRO5dLZBtsZvfxKeCT+VqXfStZjvdkms7wNGDVqj81Rn
TqUFU96bLdzl28PxoG3NrFyo2/6kmtQlE/mnT4Bzk4ZWJc3V7pk9z3UimkvyCuUCC59BC18lEARX
ItIOAkkfxrYcCWt+oQrYDslq0Lo8h2p39idJiF6/iWFwAcWsGrxh1dBWoWTd8K1/chHeMKLB+PFl
nFWgeN/Wus+nkbSRgmuCIxA0u10haujiodnkyESbhhCon96pwG9uNvRch19GjAlHeSCYtWr/6Xo/
cGSs71rTga7lB9rHIGtuNH5WRRW4IfyWWSr3cQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
w5zvy+xN1IK2h995gNfb/PJc3lx6bmpb32X3OPGD6Cz+Hnut1WrRpDFxI1y+U9ZAKyRpeoVCrR7H
DS2lr0IqNfhG/ydpwmzqPQi1vGf4Gng0NpOWNzEaGFyuKsbfdOChGU6F+ZKUuPx1LInV/Acty0E/
Uf9HEK6WHi89FNEmbMTaavhyW6cgFs9+Gtxb1hLAp/+JJ+bfL0i+fvaVdFmy4Tpic02W0rez30dp
k+L8j0wlpmGEjGUci3V8DO2W70LDuEbVuVXEdte0Gy724MMNN6iwKoXCLDTDnEoOR2gxuGga4TNt
kv/7GOkMvrJOAwslzMwvVwXfnlQ39huRWRIn4A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FRGUkQCUsk/6aRxdk37mwHCCsCa1DvfY6nbxnsehLy12mB+1Rg4+OUWeOAWDWMpxHfnp+3Ne7Hdk
ji8VoJ8pjFkdxQG7zDSRL9mJfCaLyJmwoetg6/1XEKnJ6KOLTpiJ0P6W19SioDXptOZGjNO2u88h
87VrQw+nNz3Y0WAs04NEfuZCKspz8RMDCaVJcaSUKryAGqpTHASUYqzlwnIV00rVJAdiAzVI4vf+
YKCTsvA/LL98nZvGU4y85CClSJRxraLDLzyfBt9cojmuseIWD0/QLFd+jg+feBcGqK37hiY+LA90
bPnYlJsCRi7KUXQf+R4o3aUe25budbQp5O/hGA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LPEZd7tMkPwqna9oBQOVsS+EroGq7hX2uysf/rHwyuoVq58mgOc8lNbyn9IaWwlLmDWZTOdau9Js
4gsBWmIOee12BH0adhmdrZzbrhLhkeLDETc3El6IU1G4kGpVjIzo1hPF+LI2vm5PO4S2GAhjdnF4
viO4wTcqZZNiPVoqsEo12WUsrFTBIXK9wnFz6creZaBsWjcfFSRsULDJVV8IvGKIC2acGD5S9aJ3
NmN72HPXR1vgfbfAJ4dJPuxwe/kG/Rus2F+bp+H13iqGQ+5/5gkfzJbuUO3k+a1CaGH/S5OFFoFH
mfROvi1WVzy86BSvfO+Ixp5DqrawhZnlmOXGZg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
Ai9OZMMAM3N67/csiK0jt4C1EW8kzQ4ZuwLYrh8tqcVPB3k2nqMKHjodBIZJY01reA0v8nfkdQhG
nRJTv8miJQ/Ir0q2jI3ok0n5kToxVZBjpYwMrax6vV16U0CxBuOeTSw9X9buYX4zKs22XrMG5voM
kcaCy4UUQ/AZEhE6W8ggYQBcfpHgPc/C+wGiFwaIcm1yn2HWUMg360Pfk79Y/tSLYCi3gdacUVYL
B8pCvdPM8DVx2d1Q9yjYaZ4pshEZLF83/pAVdo/+ONRTv3XH36vSTXNSbo1pfVwGMyjGDMMqdSry
V6QDC6bIvL0husCHNCy5OUqT1Zp5a6ZcqX8B+X2we/6kUdCHqCCeqVQy5JUpuQ4RHrw9rrvanbdE
F9E1O9ZnM3Lr7E0nAJpHkY6NEeoC5Zz/U5gGEGUDTF48BGLMfDICUNPtiAgoWSEzhhr0q7ncfIpL
iRwXzCS2bfWndq0Y+ACZDpboAdbV4rtTYxTq6lbwkKSCqtB+2NJFJra/

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eOp10fJ5pjAsqI2Kz+zVsQ9fVvxkxqEkBfGA6W2BxCFjw1UIRU0CFsl9fapK95u4Qa63GeWb67eF
Yfd/Ynuz4hEtzLP1dgD479zGaq1CzV6V0oLr3QtHYJLUmgmO5c2DiP+NPt1VM2IZpNwBwVT+KARj
Znb+5RgiR8mK+Bmc4YQfiQTUj+DN7NCgSbkQWEKQN/y4K6oR29x693+BwjWUQnUjpJLGi/xMBMpx
PVUnDib6K+wFyENiTHZjWsXWS/xbkSHx4DvvJoSGCgi1TPma511meqPPX3LEFWigKNoeUHosmR7I
V6o2mtx2bIlydD/OZDal+9lOVxxX15LoXfZd3Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gyn8JvXd1rfYwkYqfirxXtTL5E2nrtaLopPxD/H2NmUnWWQnp4jBRORZfkSyMRF8JH1JvITBXSYU
7DYFp/PFUa4ivpIWrBxaloN1S5TfvYbbXMisvdNofyyLLO9B5/Qw9mDVoUcN8oM6wh/qwNDWmXPE
FWYgK0LiUaJ5/+HQYpWTZEqyBC057MEsFKbMoWAf9XCLP7/Wvi+TxurtCSuxspii+52wEb/z61f8
FlFVxOXPxDgIh72Msvirff27ZvQKOTmMiU1Dpy2Sv5TLcGH4MJd/dSNzpt+V1+99VbVdT5oP2OPL
FLsq5haXDolLSlbUVe6qGfQF5woNL38yki/FoQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QSJLlkxUZqPyDV0RzHsuvuh5Fpw+HPZaCtXRyyBiZaoXTo+5OfVaroGRkvJLfXa49ymHvqKSa8dE
hRhIcD06jJ+yyxp6jlk3N0uN1XkWJnWhiEVHy3YqWFk/VPCH+8ZXJj6/1cgbQ0GfrocdtWDI5te/
QjFulX+A3hLp+xRkLZBSJMPgx+Yw9GqqkaeBhGY2W0USQROnqRMShrv8iu8kQnRvdrJIwhFi8ijR
sNT61yfaoVnquQWwe+ISTq2XZGZeBt8p9i/i/vCmgji2Z3PEj8CkkzOuUv25QYxSLT/otUPuuLau
lYbNBG4tvPOEUJHPrsMtQ0eb/Chm8QpC4FPfYQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27088)
`pragma protect data_block
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
G5hzFRXkTewC5JqIDw==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
