// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Jul 19 09:37:56 2025
// Host        : DESKTOP-DD0PJLS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/mapping_layer/mapping_layer.gen/sources_1/ip/dsp_Requant/dsp_Requant_sim_netlist.v
// Design      : dsp_Requant
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_Requant,dsp_macro_v1_0_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_2,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module dsp_Requant
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
  dsp_Requant_dsp_macro_v1_0_2 U0
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
mHaN5BHTLsALV1PtxgZh3mn2jh0etjL+xzpftCa2Zr+Q17CcHaInq+wi1zN42vnLeT922GMS1yhw
GY9uJ0pSow8FYbzVUSyyig7xnNBSj8xKpjz84TSYX/AoomlS3JGv0/6qB8bHcxXacz2YiZ48Nfhb
HIk20zafGPNT4n0Ud1CQfqG4eGUKPAafK+bE2sxD+9Ies3QaooD7kPrWr6SupP6LNlZgttdu6yIE
V3Kk+9L3VKDNE2jNMpj+T8JC7uPQ+zcHzO6OuLEudVjmP8dHITdDXsD4h4o6MFhbhHNIH9XaNAnb
BTXiNqVhAdtWcgEizlf3TUD5VnQEoYBGi2pY7g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TbbF8VjQoG5OvtA7GvXuKNiGEwJ/qdZhotb0Lx8VAbMXXxCziutgEEJk/jha3hej7f898LU8NvrU
EaldhrYQXDK8kIFeNEstYW1+92DQerBjPBLwXBDeTAXRDoti60t7TW7Uuiy/ePitHEeOsI9oyh7E
yMdZ7iuNzikH8mOON2e0RJDqrfHvvVEX9yRGBlbaih+DnJQQQPwWKFr6YuGcLYYwkjDcksKgVV+S
hh0fXQCqSyLG8ZpFWbfmHZABojVDGUc437snfJv0s47GfVcSzJDGZe8Ly1eFjcAzrqmRsWTLB8um
r233DQdgGtZyK0VjKCQm2pT4Zz2KkIYGtzEDZA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27184)
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
