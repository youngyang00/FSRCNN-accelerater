// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Sep  5 10:54:13 2025
// Host        : xylo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ feature_dsp_macro_0_sim_netlist.v
// Design      : feature_dsp_macro_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "feature_dsp_macro_0,dsp_macro_v1_0_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_2,Vivado 2022.2" *) 
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
YaE9Ty7k96dP/30pt/KbLyDWH+eOXrSTsmz7V0S7nU0nzxEExOCY0S/OMItNbgetoU7WMe8169VZ
5dX1b0hdBTwJybk2wt5YCyT17sHDCFPm8ps+PCOeKOts+bNpiLhzQ8ThyvTH9QZxGNDe+LCuXCQa
69LoWUE+Xl321zZxZWs4gtDWLw9ZihRkDQN48/HW+eKOtvMb3lnlx/OsXPjkzVzYfr980ockITsU
9Jaq1T/5jgBgBOyXKDUXw5nj5dzT4hqdrEg5Wq+kB8ygiiwMi9IVxN/TRQZtU2jGMQyFhglRbxg6
3v4m+clWOAIDBWrt+c3ZFWVeUOPIfVATBoWDtw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KssPkcCR2j49pLcSVvR6A0QqHX1DwxMEGJQhCQJkwIn0XeFi4T2v973Me79eE12UDH73kpom62+O
8xGfTSILMaAdtk12OCCkn6c66pzhG09FXDUDMxTdOFebWda4Jy3J8vQxMRw+1WYwm70ieJMr5maf
eh9veb/A6LicUU2ExvcflrVY2bbEJJPLYBO6z4oQti43b/fKcuVo3VkApqlb3zcRvIqyJmx396zy
4gwzIfmScjjgyDl7hnlARww52NFeDZk19NlVKxzTFTSVXUNJeOlUAJQ+14QDIJswCs6oLG4LWPBC
QJXowwtuR2fgsHjkhG04ePnPLNEcqv2/5q/aWg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27088)
`pragma protect data_block
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
V+M7+RUliw1UhGxmVg==
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
