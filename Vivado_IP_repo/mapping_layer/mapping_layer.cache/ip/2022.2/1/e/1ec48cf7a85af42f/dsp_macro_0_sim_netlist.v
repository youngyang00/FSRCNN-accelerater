// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Jul 13 19:52:30 2025
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
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;

  wire [17:0]A;
  wire [17:0]B;
  wire [31:0]C;
  wire CE;
  wire CLK;
  wire [31:0]P;
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
  (* C_P_LSB = "5" *) 
  (* C_P_MSB = "36" *) 
  (* C_REG_CONFIG = "00000000000000000011000011000100" *) 
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
P8mGtgCzTtApeObyeq77sVE1dj0LHChk9zL8928WjcaWOTxyW4OSVVz38M1W9pDQgThafVbG+jCP
RdAP3WQB1xDiCoFQSHsoK7dwVT8DpxVHc78gV2iPe1sn7dMo0sUwDjbxcku27UA0G7y2SWr6mdUp
Cekh6eu+lSySlwdinyw12bBDBnisADj0mStyeSZhS/WAMFrpV8LxSXOLCgIftG2q4mPt6CrJAJCB
FeQVDVNFGBEUrtLSWfd/EwrukDOEwywM0BTnH0l/p0wI2rMGbO1Nq1db2z9RZzI9aJjxfVTpT+EG
IyCwAlqKPL4hXXydvU3pHveOs5LvL5HZGZTM4g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
5Ck0Jep8ySUYpZN6X0BxCLaMXGI7pywCnDEBgkYmKKJk6lCN11q0ysMrq4AXuCZugaFMOoI2WTaH
NbzlAviFfJyHT/h0I1h4Mdq+lLq+8P4jirH6bO7d8Y8e5jCslu69VqPV9pPRJjwLySSFP+2dYwNt
Ak5dL7z4ueI5it2T2m40uEGYxOPnXIGjJHUB+ddFQ5WWs5XuM8xrPV6OCKPA50CMqZw042NX4ZKk
BaffywLg9zGH7RHhIJQzGI/uUfPsXtFVvfzvB1zEdaH/uppATABYeQp/T/FjTcPZpB1d3GPbTVvZ
5qh380z/JcOmyC/G8xyHGhCKIo3n7psufXnbxg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27312)
`pragma protect data_block
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
ftpqdLE2MzYd
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
