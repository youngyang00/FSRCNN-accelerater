// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Jul 13 16:10:54 2025
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
  (* C_REG_CONFIG = "00000000000000000011100011000000" *) 
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
nP95gNbIcQtxxlvJFNkRvR+h/DImm8A/x3nGQeh4DeBmU7gCshAPt74cGRnWi4rRcr6RNFYOWpwm
kUxwwGx+h/657nPiPviK6xOvq/m4DR9TrT07EB1TQ8cIFv+b4P8cLmZQcIEpF9wqhNcjthzhSPjQ
8HPkhJol0IEeByjiP/35kORFTBjINBZ2sbc29UfcqmyuTn8eTbZDxLi+dMcFVmgiJErhR78SMbt4
oRdtirJRWNnnoh78kuzp25TfhwiA+GJsAol7y9jAyigEAiUYky/k/JFZPEPZ+HNP1vSYMV+DJ4uV
vSQ9/1e1JZ//+/1fS2ocR1KUBavmquRhLWQuww==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ovtOZZdSCScWPSSSlDfZ0vSMiXuHMEBlO5PTjjiHN/btTjE4XOsw/kav3cJJFqs0YNHnFkbeariK
QdzGeSQvw+FITItX3umae4lVK9MPTWFc6+k/kJZYLnRQdZMiEOJkDxrlZELzIqGckF5cLPb5YtbT
6WHZaD3f8iVY9XFDj3oDAeCtBNQRuJ0xnjrneV1g/u8WJFiAXpA08Wgj3qmOPvNiRNLlspq8+tgg
ZOCXQWdEteE52bZMXT4LFbHsgAL0Hyg8ZreR4fDpUqmEyWdbieKW2tK7moQpwIy5VGrfmfoEHUJI
+spAHfKAcbuDrdvC6Ffc7d5sW8ou6OCtVR5qLw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 36672)
`pragma protect data_block
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
wTaf8I5SWSCk0Pt8vgf9NfxWG29F
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
