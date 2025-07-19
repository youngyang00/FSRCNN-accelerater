// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Jul 19 09:28:00 2025
// Host        : DESKTOP-DD0PJLS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dsp_Requant_sim_netlist.v
// Design      : dsp_Requant
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_Requant,dsp_macro_v1_0_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_2,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    A,
    B,
    C,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [23:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [9:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [1:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [34:0]P;

  wire [23:0]A;
  wire [9:0]B;
  wire [1:0]C;
  wire CLK;
  wire [34:0]P;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "24" *) 
  (* C_B_WIDTH = "10" *) 
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
  (* C_P_MSB = "34" *) 
  (* C_REG_CONFIG = "00000000000000000011000000000000" *) 
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
MwEc2cpPiFbEs7ZZl/IBMFfNZqNq3n7EHTigE++Q4NTkDBVWOJ5o1CyBUk96GJwHunienHf1L0ap
hfjDpRuREvHPlpBOlh4N2oJ1soT/XRfdKr2QmqjGOSIwcg+1bS+4sTD+vv4ioTDI9Rl16gX1DGS8
/pVbLh+Oj00goUpQ6JJ44fDD8/lWF+n3IqUyaMowq3oT6sgpswxUuvyXTohGUM/7OkT9TJgobQzK
35dWhB3bTDW0b6GlgHZYLL1SD6YcwR5LGOg+Nx7mam2E0yuNaJwFkeSi/o1G33oKduH8ukZG6uDc
q+XUCuWNIH7GmJ9eCGMJ+Rlr7eR7qcMRXqEBNQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pjXcS0GOVpHNDOjcchhLkrfnkm2BkDzAle8D7qifOzSvoXRB0mJyfJxu2LD2gLOr+2E5NViiGL6U
+jhDpaT5Uq8cB8JRLLrppCNg21T9VFM0Xmrr+cr7ETiE6YGGhUXhr+vSiw0FMEY3wLZDDuof+P+F
xjFlpIWpZ0XwAK6ZRVS0uiH5idX+IFEwVEO1Mj3TSoNlCQ3QNVQM+0gGVgm8DIoM7iY3bth/RkgR
4UR4FXoY1YgDLuMzRT17+nwK7LFIvls0nVBBDIT1ZuhvhioiOFg0/+1nNlLU93nrlus7W+er4+2I
pUP7tDNeZDab834Kpce01Fa55eJocXkN3qivXQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27248)
`pragma protect data_block
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
iOI=
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
