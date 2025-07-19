// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Jul 13 19:44:20 2025
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
MhsdR+wYeu5ElNEvcuHHeI3mqqKXfn1j+o586tOOaTkhGXsz9A7HW3LwfJ5g8rmtk7eJSR2kf/87
tuZgxGbM0pzKGe9pkYsFUwRLV788aGGdf+p9avHWIC2zX/wcuUTlrDsfcAKOqd6KkfsfwTszJDhI
wnJ7afLi3IeRvSEiaw6IZ6/Uhd1Tj+5GYJyc3vYliBE6pvutFK7MctEW8A19WzOlQNMy5c3/aFOM
PQTKhXiWftZ/Ctfni9qNo2v6WdpOzcrPlOUdmwRixThJHZojw5neBzHJKJQdw/GoX1cd8rTKRsbp
fdDkCwJIpNPJoxHqW30XSeBiyeQjqzHK5dbxAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LVDOjk6XjFaDu7fXH+I2GMhkKo/GQrh1hz4EWs6q1QQQWuqlSIq4Pl/KvHwhrevr3Q65eiVEURw+
y8Z+kx83QCXoHBi2tuAVooVpvyfgKyZ3FjJrDJKYPyKMCy5rm+sJlbaRnRsQ6QmaeJlkS8WqYzbq
QHl1jFUlQBbkqZfDPPBtOWyLnKO3WqZVt7iTcVKhk85xyj85PGV8QwoPuUnvwTWRDAAC/Z9AW1Y7
moU2fJjwykVig6kNyC87brRkOdLErSS9FNpG8TIlpF2SmZos80kX7LgTxBHavKz6vJHA57Dx6gCj
RgtIfZ/h0nDnjPN9qooKph5vgV1rJbYl4n9xbw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27088)
`pragma protect data_block
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
quFVvpGO0YVL5Z0hPA==
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
