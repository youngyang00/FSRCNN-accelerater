// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Sep  5 10:56:03 2025
// Host        : xylo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/submit/AXI4S_Feature_Extraction_Layer/AXI4S_Feature_Extraction_Layer.gen/sources_1/ip/feature_dsp_Requant/feature_dsp_Requant_sim_netlist.v
// Design      : feature_dsp_Requant
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "feature_dsp_Requant,dsp_macro_v1_0_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_2,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module feature_dsp_Requant
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
  feature_dsp_Requant_dsp_macro_v1_0_2 U0
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
a6q2MIU/1DXKJKYuHD9eGBNepaMxwyOSspF05mf4EZYLFaUhIKPWwtcI6EycGxqv58bMSh3X7z4X
/SvqscgGnAz6QPoHHuUQFkMJ9mrS5mOqtTBQOY1syv0KGOe3bXZomVNRADNxdGWPKbd87IZj0bU8
ES1XH7hlZsDhDRgaCrreNFAmq/FNn1ZZC6lRh8edHg6gX252d38y083pp2aGx1EfD0A+RecR6VYU
4WsjqrorufH3neVFXt1CB07h5YWSSiEeYmGtLfGA+vPN/LCupVPegv8SyfcMkkXDOSuk57cftQJU
wNvv32DKf24flvsE2/Ahtc+M/jV4rmqrSCVV7A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BuwvfcdQt3q9q5zlt03RfYrqwX8lxrxsfaGnYLL4p9qiqgMwOAUSyVev9TUrrhm3OfIKbE9+/Dii
SqMC2nVp7qjkyJiOUIbVpkVEBw1BGs0TAGa+45hTaz5SdgqS5dJPPqzr+p+UZRtLi8NjgYg78Ct+
LMizGBZn6KEgZ7tEfpHjE7B9rapwiXaEJktuVBqGJI2rjJ2JKWRzQQCodupX9VeNFvRBkSZoB5be
APeGC44ZUnmtOPURA4s/kmDazylPzCHNJgMtGKbwM+mc6i9lIqEn5wVKVAGqly9QIZLyvY/jOE6G
RjIvQEJAsTAUwNbQjXNzxwYqkc9TXJ3Qhbe+bg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27248)
`pragma protect data_block
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
v3E=
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
