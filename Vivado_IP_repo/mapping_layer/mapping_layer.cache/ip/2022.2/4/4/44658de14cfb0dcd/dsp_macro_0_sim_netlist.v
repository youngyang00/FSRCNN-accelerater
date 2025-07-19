// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Jul 13 17:19:27 2025
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
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [47:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;

  wire [17:0]A;
  wire [17:0]B;
  wire [47:0]C;
  wire CE;
  wire CLK;
  wire [47:0]P;
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
oQkBmajTQWIHU/KfW5Wafc4EZTaJ5QolyWKXeeyTddVRly4cSJIRqQrXWyKcudyE0RRhAMm/piEl
KgrL8Gl+0BCulhSaxhe+rRVMSZQyRve834BQVQ9f6cBOTHR0m3fPsU7z3m8MZctZpV2LgloMoBEi
+SjB07IT5ypUFGACafzBote0WFcCsCeT5YHlmvQ3wiejWRUB42NlroRAb5Fg2YIogRgc+K6V7VJe
8zDkKPcD46x0Ta6KvpRYgvrcyRMOrYsvBAdBXZIUKWsRFD/+LOlaefQJA0K+kffK5h9IMSgfj3TG
cbzY060ExNLQSERlaaW3VAfVe8X7bcB17ayFzA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AmGTzSY1q1FZGgzxFyclLGlLNbKu0aLUh+Dlo8+jivnzeUs6vQ+ebyigRiHpYrjgF9uJKIGw06+I
gPSDSmrasyljVp8OPLPQTJHepEz4Z2m6OHaBZuGIKg83XhIDxVdPSDAg9JHM0zKdjI/UTI1X2bmm
a2lrc6maP408wPvQYi6eBdqsSgH3YIhZIgjEe1xQg9zqbdez8/MmlkaDQTExbT6lhw/XYL66jD5r
s85NhkRXuJlbLJiesoWO6fmX40KQHmSzwSGYfc2Weninn2I+tM9FYwrbNlshYgtXkSqytV9aNOO+
T41wLhaB+OrHf+OMBJX57HWLQ48J8tKgELVU/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26528)
`pragma protect data_block
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
4hTtI5UCwukrN2TBjDJgoGJFnZbosvA=
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
