// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Sep  5 10:56:02 2025
// Host        : xylo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ feature_dsp_Requant_sim_netlist.v
// Design      : feature_dsp_Requant
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "feature_dsp_Requant,dsp_macro_v1_0_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_2,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    A,
    B,
    C,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [23:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [10:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [1:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [35:0]P;

  wire [23:0]A;
  wire [10:0]B;
  wire [1:0]C;
  wire CLK;
  wire [35:0]P;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "24" *) 
  (* C_B_WIDTH = "11" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "2" *) 
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
  (* C_P_MSB = "35" *) 
  (* C_REG_CONFIG = "00000000000000000000000001000000" *) 
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
ed/aNGAheXOsSr5A52OVp8DjbAtCAKjqSF6sF8/jCF7TnpVdM/tXODujSgtQCekreSWA6xQy07W0
nuP41xrAv+5hGDyLgB5CGvrnSoZWX/Q4iVVPveF380dom8hHpw8zly7NVP8vWsdA3j1Vnd4Hg5nZ
TqreSeDYjeYtfjkZMWN81rPY2xjl+5nVzm9GMD5AOW64LtrLsVkuk8v1vQ4ZT/orAvb9sHN32mWh
peLFuVLIZbv0PuCY3VNTsk9s5jODgDChRj4euW7cFOj2eS0TXVHumNFvRvLhLG4XQOsebsne1WsL
lhxS2EhnMUO7zgzB0RmAHkzFMKLU8PZnIb57+A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
4xZ9RTRg/iPXXoWK3Y/fsHnPV1S/wGq16IIjd5zjfrtL2riDClvssmq4Pzc+rfOWsweS1M54w4cw
vcn0YQE5okv259ZjEe++QQNxikBaHeTbcQklcbhce5dCqAk7nXL7fob0LFRTX9tXdKTLHhdwUguQ
ueLIppsgoZ6PN0KNj6++5zKm1/Nj52DggVLS5wNUCv3a38DE9Umhp8mkZvNmHS2Ut2DDskhBBXZP
vrq8P0krCROzE+Ir4Ur59Frvpc3DHA1+BKgjW8B+lHoXBhKvG24cF+7wRArQ78z/cWYUF7y7s0dN
otNIMxwUwQCzvYhF1AhgYSgYOZZHlUk/6D9l2g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27216)
`pragma protect data_block
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
qWpkhevMINsVI6Jc7RMUc/WnlBfQqT7MdHRY
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
