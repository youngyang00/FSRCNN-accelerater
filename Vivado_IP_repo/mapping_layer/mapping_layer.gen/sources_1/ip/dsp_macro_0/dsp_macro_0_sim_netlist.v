// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Jul 13 19:19:59 2025
// Host        : DESKTOP-DD0PJLS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top dsp_macro_0 -prefix
//               dsp_macro_0_ dsp_macro_0_sim_netlist.v
// Design      : dsp_macro_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_0,dsp_macro_v1_0_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_2,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module dsp_macro_0
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
  dsp_macro_0_dsp_macro_v1_0_2 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26880)
`pragma protect data_block
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
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
