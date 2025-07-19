// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Jul 13 16:13:44 2025
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
    SCLR,
    A,
    B,
    C,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [17:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [47:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;

  wire [17:0]A;
  wire [17:0]B;
  wire [47:0]C;
  wire CLK;
  wire [47:0]P;
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
  (* C_HAS_C = "1" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
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
  (* C_OPMODES = "000100111000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
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
        .CE(1'b1),
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
CEXWGaueCToZ6PZL0txDn49pTtp3S8HhgM1VgmpiBv3B3bRRsj7ApYB/LprPJnJLXTAhmLTnMwqo
W35PC1pEvUhxgvsuuKMJsOh0wSKoJmvPKIT+z/Zv9ZuLJn6QctIxfKsYzRFI+bgCeFc7LGX7eSMT
lgh1A/SynmaLc/cj4aSfBwgOtidR0z88XgJHh7c+MixiMrUmGSoFQvsg4ZX8uLeur3imIq8MVpbY
iwgzbikrmxK+Hl0qjbOuC+Utq8BTbOuRsys4NvFNNgNal9Ic4j21UaxDxx6FP+L/auW7850/xp/k
0rmSSIc9Dsx38enacmbRJYtyF6gEngqcjgnTBw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cBmLlG0G4rYDv7SyXDCuyYmCgU2H2Cvsaj9DRacusk7uCggmCcGh3V9K6g+oBiAyT1V5HRDKM9Dy
KB9I3I7dJSVfcnRH0blVIGhdlN7OIURLet3T+Qjl1JRuJQzAf79uY6eTPajEMcg1cvEUP/MEZ8U4
u69aV/dAuSzAYRdG2o/vBc4LdUcGiSXKjnrqDs4W9Dc97gMdrSP5VwUjjFsvLjMQnRT5uooueej/
jg5kQhCOqZ0KrPuOlFhakV5phVL+7hlsekKMoOGfzrUuDhDAnYG6cLZdCyWS0bx/MyrNjx0Ne3f7
NOBWvXgCaYV+H5oiNaNJZPpddDswN4HSvc54TA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26560)
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
