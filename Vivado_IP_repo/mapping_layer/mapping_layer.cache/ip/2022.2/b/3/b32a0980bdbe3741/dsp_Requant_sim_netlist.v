// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Jul 19 09:32:46 2025
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
XlLPACthbZMSrv/FmNJQdslxdS+dqAB71K2PlhLu0kJfqqvO2VfSlGfOBUYZ0E4mUmLoKBCgd8kH
14ivJSCClKohn8hzZaHRiy9Xb7I14mKAeuuO5D7B1+o3R/pDivZPHXaSBnMemzc4O2HnmV4118I7
PTwvPc0nIBK0kHycBxPF0K0+ESmX14Ne2K2p0xIWo+kcWcFpGr+HT1pHen/HtwOh5PtJjbSdNIYA
VIRC5RVdyOL7zFobK3zRIYqjCClFg/PVEud+iVrl4cQGPiSDbsmrNUe6v7YOSE73RNOmk2IgkUTr
xUQvYyQxLdjFgCACJI7yA+4IuFzQDL4p6u60Aw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fGuLnFuUYBrIcG/sXY8Ly01afFNEKt1Ziuh9QecHFcZVCFFoNi4iN4JUEZRV6Nk+LFBJGHL+G8q7
/ItxCxMI5L526W5IUdqFxGuAZx7sr3Ig6IhJ2WuEZq6FE44mJ8Pm0dddEkltfP3+sazcthNYMjyt
p7gJOW6u/Qsek3GQYNn4vxXKP9/wY/habwzgj63F9I9GT3bJAWWOQWP63BhOudNdekm5oRMZNPde
32lLSKyx8AqYZcCjie+L+CpBUPY+c483WUM6k3asj/qlGUWzKjJckd2//fRqbGxjH77gj3BaaCs0
+BIs+fwp5oqFjbfLNEmt7k0EFI+/LyNCufZtzw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27248)
`pragma protect data_block
F5DxdDDpdl8YKnzmmFpqua56qO+RhJxiZzAd0Wsop4s2DSg6pBdd/Nt5ISdVxyZrfORTpCS7Mg/a
R0nV78PAM/EgTyUsrHwtnqiBpqzxQo76DMcaWysAcVs4zFI0kDwZAIkBcnrE5yOV2EazQ2eWdmt/
ItbKlaTb/HQhjb3c+3U1FPuCYknzKPkj+dNVmrICqMQiKISuPMNv424C59RsFxku0mw2xOJ+qRXV
KRCQRRpbnEMkfeXyYISLRSdKMn8IVRPpaBYLSz8pnWCcH1KCMOWeXCqIaqR8JJTLS2iaQrzDrR69
xAQ5JpoPd/6IHDl3XjrAx1+xDI0a7bt1693cz+Cnv3X4hRALVrUz4s4OAWONJKSGO8UXNPPthx1b
8ihHv2RTYYqa+UlP//AaGoZMbWdZ0S0jkf2v1IueuhFkCbU9QR/sf7zTUopb620MZiCk2LZyr4kM
wAYcUr5jm5BbyIvkeR/t/e/niL8+cylavzDwtYfBz5AuID+7IsXYt0CL0MwCK8QNsrnJzAofJfVi
hxSw6d/eY+WJFSCItvfaOjBs3ZHZMfcwIAcqwZqA5YZ5RamdHB12LJQ7+Qib+T4yNEh/yStXK/+1
O/G4VSlaQNA+XKesLQTnpx5m1WHUP9VY1AYw7tmTDsIAg8zwwURz4iT6T+BPMO8gKbAwIrDhVDXv
ADDyBL6xobgs4RzI4uDr4HPdZTewEEBml/DXQQy9QGkeBsWIN8UFY+oFoZAxZYaXw8hjSmy/CKv+
57LcH+IbFZ/Wwy2z2n6IW0f2X0sKUzUunqRSEZcSYvYCtXRsbhgDBUkZtvsfWszxW/7nNTOqovNg
AcmXxYxZqQR6yBKrj/T2rg7EcwJik0xrdGl9J98wBQI92uDVFr7R9M5zXiUKM3Nib+M9AizsyTsk
VQcOcHV6RDNp0qmq02kWSTqM3RCXNCDAU8Z2+PuNSzv9Fv1KB77qd/uE/TaBxy2pcfBqcC7unzya
1+YEeDwBeE95QICB9m8y0lQkJ9P4AfO7qyrb32k4JgFyR1TNGGHf1ulvOJWtOmItwLjYvMlpqqMz
FDtoy3cdi+cJpFb4wMquXc4FOHzQR+HEEgBORPKbNeYpL2A0SNAwXZhp60wbYH5/6FWxG3EOxi09
CeJIZp1velDBUUCWH4U5HOrk6vo33GeRJpD5zz6WGIGle9f5FWLYgVY0jX9Z8sJErZDhkkfA3p6e
Le3kooeD3kwgHmOzSPHxKs0Q4lxgFkYdwq/Ld86WaKMhfUMCJb33trBMZ+OvCaaRKhPkmJgGlHDY
TWEhW1nzyiUrXvLjSTOoPp/d7qGKe3qynrQVQ6zZvTsntCnWpSvd6nmKX8RAQZhTbpxkZe7wGr/G
gf1LC1jNCA6oK02RSX3qXcpL7HwDSub9t83v7KI/haDTBcwmMJTYVEbXDYMMR9NYBco4sRpTEQPM
6BcCytJREeaSxMPyCVEKB5PghNHrXP9hwollIkXCJh6IlgUE3RmVdd1YFqA0QiCUuDAYoKryFbZz
Mzb21MsmzK0Rlgj6Ma+pllOWh1wq1uK1to3spGKcG3E8UJnksGrkYAGXMNa5J4fcU4ysTPl5Nh+R
lcs7J7rfbtUyFZyHRgjtCphdteD2JAGLbGjBf39QDQfUKSkbvxKJqP2JjcDnSmhD1BES8oFX0kiS
zvbQDLNnPtcuEx5clLF2fG3QPxbDnt+jKD4p1uiTXL89YKeSaSzPkhKvFh87UaKDMKvmPxP6sWe5
24vAyWF29t4Meuq96md/2P8EkPqf9/Nq12kAD0XHYQG2CxPd8A6NAo4wxdwc9jxKQTsXnhqulA/G
ytRz8SnzpXQkTMpBX/6AgBLG2QBhc+2dz+vsjqfrpiUgnsMAXzT1rUby7PzUPrK1RRw5hXyT2pMI
9RnRp27w7GZea2oC/3uWwNh60jVACqp7EYeo6oLnPzKqq57UPAJx2JkEI/Mbp/ubAznwewDGDxpp
HzY3cpJlgpx78dSB7wCH7cwhO40wRAARL2pWhHbx2lU019+EwIeARsFRb5+s5GU2msHMAoxEmEsD
/bJUqvXbIXW0izWpojhqayutvLCHraaOAvHXWlalBC6jlN7HUJQFqOCA/MWkEWcK8X0UeeupdS8S
YTHZRscP9+CHcmyPYW4HPhnqwuJXG9es+iM172zcM2yLqBJwyFLIz8904RUO07z/w6lminOwSI85
fP98b6JaY/bSvTFDmlcCZfR0SpbfJIJIH4gZq4YzhpLRizQMxLE4F+3wNpWJAxPAVeRxTZLOHjoz
8uPENBjhjFa1jPdiscXQZKA2dXAKsPeUQyVUGxQMhRhtPBIkcJalRFUcuh8kh/9KgIfi9M3uiyaH
9w/HrqjyLZYFIeDIhgIANlYlu6+STWtsp8U63PsC6Z2by43ThXcaP06UcLp8RTz3f1R3VdS3JeL9
jkTcz9EJpoc/U7VzmbbKxxbjIynTZDTAOIB8X3h2FqlplMNBxe69uXdzgJX8AGnU0g1pDWVYwQmI
WF8Ewa4Z6+fFQ/o0Jtmx46vOJyudcZoq6oN+x680q2yla95J5+F/vUly1BqS7/sBjDWYRg9ePmGO
Wmn1Mav9g7ZKTL+v2wD7T1CyoxgAuVUIpYrTO2crzfKdhyvUlWxmjoDVw7STacgugGgU0Fq8xSAw
XS1husAXKWfyo+bEYxRpig7AGX1Tc/O2BKW5Lpz9VGZ/QyAMNW9HQ7E9SUpZn7IeO5fbTP6XIl+N
Sz+N+FPtanvsafVjP/BhxOam6NrrdfhUjSQ98VLLhkVoLScJHGw8o9KPME0L0zTDJHpIpPozmOSi
O3STliYrq4CjQX/cFBOltkC2vDBkd2vXkiaFmxrHl4L/mNZPNKC5/e73x0HNBjLw+TW9E1ZSg4VN
oGmevS9PtApJMWOtOWRnNwc7Tft59BQmYCafdBLVlWl2uOBmkT7u7rJdXP+nZ4aN1WsNHnYKxZ4l
3HiwH83oNek1CQdBXDPr/xnl5FvGbKUK6NhC+dc/qKILnqjzasGqG1OEHCDapKONTItgvimIYGQV
WX/voj32oY+9BxBO92lcc7sHNLWVwkX6M3J6sncijZJ6yN7MIg+V3iYjZacZqq313KVtrWWA4OTm
yzmxSu+b0vdGyT65Dq8/QTqlSfpDcS5dO6Oqs9Hwz+UTFBdjMivrckLyQ5FmFyukvjG9cjITpnhp
pI+hpkRl78XhfYtegLZd8aKwSeOPSQ2MyOpTbzBxsnwVpBKp2R8qb11IkUB88U5iDQuWSLi435BJ
XtUC0oKpOC/WSFrgdoCVgdodmfLpt2WhSam4niIf6ZMssVGeVey5ozz65rjOFVWURCP2yLeqCLUz
i99ZsXmSW41JE0c1ghzUS5WRGZqxmX72aOnSl5Gmv5Lypg1HTAz2DUpJryiOsQj2/KaBZ1FVB+Fm
74kfaG6JbbrWOKll3p+6mTipp6hjKe9K4sx3uJQA3WFU5VwjfAoMllh4R33QLLPYC1D9WNzhPrU+
R2xsEY13pIQr0xs52Z9chcXcAthIey9EuXWFiMhJW7A6CKdsXczexmvgzw9C0HF0mC3Wo/S/7dPi
34kPFohhWz29SKk10nmKAbKGppmM+Ja+kIloDywmb18RKp10N7qfT5hl4vLCNmU+7qe9Onk/8+yD
Ns96oW0cG84odcT1GoX+0Xeeon5V66/JXr7Ye946qwjuBGlCknPEynwsv/SXIZQQ0mPs9GfJ1vBO
DcNK/w/3/tMu2E7AjN4ouwYmcgEdyS406kgSYeHcchuf1p+p9HQyWZBQvU+3ilQDu5NJVnJbD7oV
nQlE/vAjwh+SHRTgTlfsdCH3be7v88b70uRiTHuCEN+Z28AwDocpeMw7lxMOoZ6AOGAeY7M8Mbz4
hPnAho31rGXxCOVIeW89UEMQwilffySM3JjXX9lRAjYMgfGLFaB0m4PLGYaE62tud05tZ891eC9r
QQ8sFFRaTaacmXAaN7wDQYg9/16gvodQhHEGnMlN3gm80c69dRa7tl+HPa4rd7c8YD2J2ydIQtww
C2suI9XCU+HUbsj7vIFn3YapAW1nsaXK9OGG5fm2xl0C1OP4+xwmvKEFZNR7p3/AR7CBJi/itBei
iAtQZM8WouCf659H+/0OnMGYtYcJJociMS1j/xiX0MSCj4DABmrr4BavTLd8RP89vWJXnNeUlNwV
L3BdSF1diz0ewQc6gp7yCigBnoOnY0fDVwRyuMdpqohwaYgrbTK6wYTuL8p3ANyz7/LjXm/rzm73
OIBJsexulPdXLp+y9m1x8oLrvIXJaQXU5LP1gNOqT0HDCXwYAbiVARfqbzeIiR/kq8k2xFB8s/vv
Y48oxZLW8c2qmGK3X1A4ggnVzro+piJlb7+fBTovvTHsRckGDAR9uOdTEEYOL79Yv0fWSR2smevD
MTl+4+d+EW6Z+Np1lEiFj6K+aezNIU0nU6ETDpgwjuWYB0JSPJktKOmZ3c4RKnDzniZvvFidr25x
aVPrqATasjqAaeVDCkoCqXe8blSRftDyK2zYU6skXQwT2MQ1psRHjCLTU5+mTMtLNQBYBaeogay4
dLxzBvK0hkYuBaFZuj74/bzj/hQ30AlxUbvZznx/4NOZdjrkJ5RLD0xp/84Rch+blo5Eaq3mJD0S
SDXZnC4hK0obtF4fRi53qTwiq+l9ARVH1+9TtIeqkc+kPXN5lLJ4OPwK8pENx1B5Fhkgfphymw4F
h4Gan6sL5Erhh2NDeXAKcRLU4G3NlYOQnPtcNf1F/U2bu2dQW5QBw75RCBcq9mKlbaL7pLH3mwVM
ZrHgH14UsFqXDxHO90CoNVJC8gCGL9GZMp5F7mj0u2pugBL8MbHlhe8/GM9w6zLyn7OCWoh2j7nE
TkWaXaJr26Gyh4EpL0+W28HuZS2NJRkdcwQWFL+JeolfITwmPA//6cQp5OiNmGL98nlspqKnXxgp
H0Ttx2YxdiiqbNbEjhHTMEOXV4yjUocnAg73dU9ADb7QJZSEb1pMk/g0mEhbFwe90ZPkyC6Lw7d1
aM/EKVfYDaCEaxGL9lvafqjypOW0V4ZxZzyya+0zJdRJGC5HW94j10Hkw1iXnblK0d/DSALHxdvo
rZEV+EnugY+vSU0qOAP8iTVeahCgksJPHJwIY1OO8lS3PcwVrpvdpzW3Ui2imKnQQ/6LvoUvkBPC
cyrQv343A4siAcOqQB969/PJiJ4EPc2SFv08qQ67ErufFGH0HIs9lXmXtoysDvw940F4IaTbfEGi
GYqGbHtnfdtGgCWGSGBG7Sp6sm2qA8LnK/keQB/jgP/VkBGGf/UFoowrahpPQMp6jDQTqPL6MR7G
Nkw0u0UTESZ2xLJfwNcstMPNRFkRudogloNgVwW1e3nOqBMbJaRb0w131u/QhTcvif/ySVn9/vcb
d0AvmpZSGHfPKYuNYyB+RzUCgcfYGAZCJnQIWtObG4jZ91sVLzL0iKr6EH3cpk+O1oHZIGzMzE+6
cNpceoYTvs0vVyUo6Smvb97C6J/Mbglm/iPw+6Mfz2wujm74vkutfP+Nxrtv4OQXk8Fbc1xR7Mhu
ltgBI4YGUPL8EmSwQtQW7lrPv53yOW70Ko2iV+7Rhopoh0fVKIocT8HfhB/PLZcYl/305MtCU+z0
y0CKldu+0KduC6yF7F6xcS5nelMbPVy8D9XlwaHzlaiNdnHOEfLQkD+AYrvfuhDSbiyEqKb50U+G
6oYyIa+OJqcHaXVScsMl8BlMDJKrBiwSUhG7A6CmpJvarPEFVmlG+qB8RrX82OLQgbDgOrSH2rl+
ZYu8GjtyGYj4GO+vz8Y1jWg26sYQvKddjNoVoFhMPc+ye3NXO7r49du7ZoLxFwJKMG91f17LhX1i
AHUHry40ytC0JzQzKS/pVPFmpOxF8nmSDQ33XJM6qv7pRlmKy4q0Fk308pns3gKaaX05L1Brd7Cl
khe753ihKOgR/RWz+Uygi/c0AR0l2mqZql9YMmbfJQp5ivXRTMg4aSknZ15eGwxTOScfgoHQ4wgg
zKiQtAY1lYGEnmt6WY1tI9rXuRiZzdyMd74SJTv2Eynd7WWi28F2aUsSN9Cw4/t4lcGQXO6dI1SI
qR4wmzWP+UPs21p7M8uxHQVnZ5F27StuB3nskkf7t0ef4veSzj/pL/2PyqbpouvM/wScmyb973qf
/ixCsfPS+s4XjQMq3ND37u2V5CJyLJfzqNLgc1j8hAR7to2AxtRGlrr+e2Vn3oXTotHBFKYxUxU+
OAoNiObUXXo6arpks3FkLlaSVJD1fNcvnCUn+J7VRuQNP+/0xqoeSwqCCjuci9vogBbvl8v4S2Pl
pAO/0+J5tPKdXGlOOGLDvePxY2bLSKtymFgDB3XkhUklJDbEaH6exHY/Wuj0WYatFeJNG9x5Fvur
1Jeel1rBLilIpZmN4zYZEpm5hH/+i67YtcVVFuInzEUyV1m0WOH+IMJiuqAo1mgG0V4tLudSY4x/
b7vN4HdoCi7urRQ1wk4b+wKHW2tlJhmT+czHHpS3CLhDHX4zfCXqoBIzNSvcwRYyaUupsHB8hwdQ
surgqv8WN1NvgmJkvRyql0dO6mFFYp/Y6JUfFpvM59QFtKLHNmH8vr/PEb2QSZK1dzEUJ8buOs3a
gRKsASUq1r338n89M6TSytP0abWt37wxiF3FL3faZ91Z52v3DiuHfXcTINTcJQP7fXPT0gbwWMYz
xA/VpQraTUkh0pgyHirgVLDvi/cKZIa1BS09qElLUlULgy8uI+NSR/KfFkyvUFdGWo7G2EAdrbjN
LAsLOXkj9viUovGwAkAFnGjPBOWkUKCkE3gCUu+jQCHQhwQanSlhraOU5zqgiQAIPibgVPTi9JsC
RTlpm5adpGFNRcpCxml8B6D71cg7iBKxS0ptxWlEZsQLyPvxv3G+THar87Vg12xLlmtTO7+ffG1D
B3JJNC3caf9kVJpOf1cSabPRDA++0O6E4eMDoBUDtTPxDnrxoOrAmqPRHfUog6bi42RkgtZI5Cwp
L+Yzt78Fh9VaMQqJZrr6+fQjJpBwW0IlX4ttumg51mgvsXrgmYKEdb+aQ2fj9lPxWMGdj4n29Mt0
6K1BH/0JqN27yznhcC6YhjFl7XI7+u6M1DkBeKytJ8mV0VOJuO6kZH9YchK/2v0PfK2j+bIFaytO
0f6PvLsehNMOPVhUrV8s3e4wzKy+jarcCWR42eebtyZYMS+h+3Kj5ragfbHRZlBLW0G5prUUi3mX
BDz558FWPYW/Z1dX/6ad0VnsDz8F9tcQdDSueJwJAHtE44w93barNin4E4Qv/ket9/JU6J+M49rL
oBSzrP6W864X3D6ojI21iYyrr0JYDXMN4NAf0B8Sg5DBu8+g1K47YtMklglUnRpOmho7BsxhgMzQ
UUKiSLgcegS4aTq5HOfNy7Ewfhs3+n6V824Y9a5BUtppPrvC+c6LA63OcQtcosX018pyKMxTeNJT
FlGIdji9iJXUnZhj+88KYR75E76ROxQCd752t9nbyMBHL6Jop7PHI7uLTQeHSy3Cec5UHlM9/5YR
zL9QT9OppGgNEOeVAmvW5UuWYmxz0GA3Wl0qoTiI4pI0YlP/6F2CXcy0YHUyy8GHTQBN86zgSdTD
RV6VWBWdBEsrPJzdGZQD/LXzyMnUZIowyitu8jT2k8sRE7yMCKwyzoi3bHHo2cRu1sgwr7khk09+
qO6uVfS0S1VJAYdRHoP2064h0pqcDbJXhhURtxJEd2CDaeDsVv5qQ0T2urvky4PMV4BtXmw3M/1x
VufFtliF+YzC9ViwVJ7hpVm/HciSMkqEgLfo5siAgfdpbDMfYDuTBt0NDpO0DrsKvqTL6XH5qMUe
6Gc6VkxWfdfCSXXQ1hENl6jqI47RqaggG+Fm6YmviAqQw7vsHMka0xP5cVfg7UdcVSscXGVVpuU0
ZLS64gsGUyyTfp02PapSIudSSsSTa6In8xRi7RCf6pISumnnDnJKiWTvbYWa6IKz4PRTe4kKAIY+
lpL0m4xQEZ92kR4oi1YUZ5TnrCuYyxbX1Qfsk6J5pCWGHoSpoGEtx/9LovCO06jiSnr0aILbfwTn
BK0yA9kkgMxDphQBOgI+hyaA1K1VS3cGLidZTYd9hMQ0xCwyEdzxzXiXkWTqMcTUS1LGm4aHF/em
YPPTTdF3E/Y75InEk9mE1Y8YepDp2aOEQJSNGVEmiQB2FnA4whsFCTkSafgcDyZEbpgnoshCR9ZC
M0Kvm/tR3tmAD2ak0jMivjTt2C9szJSZ6+VZZlNmT8P1uAj62x6nATsNwySphd5tiwvFH4IW8n+s
8WBYLPKXXnHVnDqBkaDBAb2oNeE29x3YW3W8uVwht8Nm9WIXf/dctxIptCjg30ydXJtrUHAqlHoG
3L5VQzzVPJ2tFjzQwvTZBoCOuwQanEGQ7bLxvw6EJGSKo8unfqqkNU1lWtdeuNwqyCG8zt/KMDBS
nd99u1qDafbRuIOs/8DcN3rgCi9iZvdVU7SVkcABv99gWWZPDH3bV/QjxybZ/lcJ2TivqtM4G5US
fFNdBqBU3VQRtOFUdUheXzqAxJravcVZHB68Yh1kDmCNQKom9JQOIqCLjEIXRODwPSqmxydtJtKy
RVz01IPeFvrnKB0k1KeVKCLR8lhOu6gohFFCfF7NR2m9ue+XoQZ1Z2vG/33vVgwrdvR9TzP3X5/G
nAhC4/u+Ls9QzQ3pVn4BF/QlTYmQzVjfeYUPfXpxq4TuQd/mq2/n5rDo4CdBrZHf+ho8W8GSsYmv
apO5cmrXXio2ZPEANBekC7C1kjSNSy8fnWW8mBTJFhJtEDu47fpu1LpYvaNjHisBYXxk3WChjOvM
k/pT79pCkPJjOCOFLjUVMvF74JEXHZPjUMacu05MeU3FGJWNnIhC2oWppYbSwTjH/qDX4+E3FgAn
XOFMsHbggvpEPYlE+wRFxZ8pMfcbZ44QcojdqgJ7Dy/rSVenNIWz3dqLDoD87AUUEh5mJzzwsOe1
bhYrQ7l6Q1wcJKfXhUGreQvky8ISNIH06l+Kc2rOdJHg1cjlCpsxohb9Gt+U5y1RQBl8xZF5lzXl
rIjpjdlK2Kil+NIiw8KhwVQjAREtjZqTnS6BGzAivlYJWPUBoyJcS0+i/P/6+IvnqhgFwS1wnnqR
jGgJRqFEi1LHwbtz4O4BX7xngi3/BfUUGZXJA5aLcB+MBv7MhpSIO5fsE77P+wq0PRwCE0IwfYUe
Og7J3YAFV2KE4JMQHynJV87jSAk1S/U/Iy4Ufj1e0Ifb0X1v1tE64UiGn+nKEqgYzH5fpy0rI/g+
qaNyNjbC3p3H78OWkGvUZmBFQrXDqaM1kC/CWyuJJ6DF/u0NEmtrgDKL1TV2pkAAt9hNbgaAO6+r
XTNNPuahLwhZVIHFNaKCu67PTyjIUhpW1xgMsmy70484bAUBFuAHIuEBgnADSeA+kkMzINHMGdLC
w2w8UvYInSZJ9Qb0JYc7JqSeYaY6Iw2C4PHcofR5d1TcRRAYS02yWUu2+eJiOrJ6nTY5UcDLDzF7
lb3MZkfJc3oi0bVIO9NTBz6g4cktXUZ7vX/253oeqcf7nz5gT+N6BbKg/HOr1KzuphzxAA+4aqXm
Xa3XS6WaF/p5Vg7jUoia1GnTeAzdmgsX+0j8Rd+dlG+EQd03/6HrCNhtYwRqs7xF1umGHSwAQDhp
vr88fOk2G1iek/kruky3OZE5jZ1DWV/lagATyU3NYHiBZAwMYc82DacMoaSqORYNrswrdcQvQ2UC
evmUUFz40qzL4EuRgFwVdRHLoUOl0TCJ7irE0Pku/Jzrk+sS1sMzqhzG/I6z+vqoc72mwFQNo5KK
mSgzeKhQNvHXkbFlvHldfgilQJgIb7+hwuO41zqVvrKGwf6yiS1hJ+zI6ZLzo6nwuykpNkv+dSf1
RQ2MDDLjN3JODqNlgvSWrnrj2eR7iLr0B/g/tzKJ4mAjQ/PkkDKaDRDI1MXyJ1jy5kMRxr6UZDOJ
HrO9JX7JDk/mnG4TtdJXox/FNVVpYG080YleJ+30zXmUq1DgpT7yZXhapWLxG9L1Zn6kB/uwiRJH
aZSza4CQMg3kSkIhmxMT6YHkk/xbF7TWeg/klGxvjgMgWb4UEJoUwKkEGxIvJNGjBF0Ajl+51wHd
ciMd4cZP8sDXyhlyzo3fIezyVYbxWocP7OJ5UNVM0HHpymH1Zibkw8bscChX7QBCZWTy1j8/9ntA
UW+vYTHQSCVKWUShTLx6apypTMGWjb1woP25BQt6pqgjNc9coHY9qNvM/ZXpjCMsFrQDb0SS2uJ/
ZVt8L3pxMoGTvnJ9Jpn8rBKOhZyhbmF9THJYPKF/F4fD/E3UQrAW8/m3eaMcCDXgySeoCL3om1EF
nhgEkFUMU3jfmO0/xVyXD2ZZ9UnegYfUtBURA+HKWw0BYJFU/NzROCNjD5+FMHspyNTMxIOgunWA
zJ4/o4Wc+7IGFHC5yLJ9MzdSJzh78IwHeQ0uS9dWSDXjjeSAY14yDzmxLHAEEh3L3YiiED/WjSU5
LgD7CsLTADq4ifR6gO8zc4i+Wsux/UmU3CgzFlfGUnLAY+Xugfzp71d9J9d6vDaJNHTeIXTdfDiU
jgjnczxUNbWMNdDERI5kGleRyp8V53y8XVaubhCkf+yzUFzGyY7rIJ2xCPkb5ucXjKv0KM7dCj6r
7qSPdRgiKXIwRiILHaig9ARk2zpoUot0EagUF2HdSRsaGD9/Pb15v8MOU3EAfIocyYC5/uD9pco+
yYu6+A+igNRa2Suv3yd1mTKHKcCZkduFROY8MqR1K2ZZBIjV477JMbE5z8OWsmezm+6KYT7szlR6
9FCwfqEwSJ5FKQp4JHJN4wuVPPZQnhM/u0AV/j6W8Lrrocnw+Pfu/3mr/l1T2DsSk+u+RJzibblJ
Usxy/Mf4fG9LiG1u+jeGRioD82GGap4qK+grEpZDaVOIFRx1FrGpg4vipEkNFkXL027ffX850Bri
3ajYbVc+WhaGKSWs+1655czzhCR+IaJAWXiajN+M3cKy/jKb4+QgUHehrRgCo3at++4Go61QbXSw
VXwCM1N09yWDFZzZMCOyed5ZnHBnr5s8j6/433fwkdDyrhEEydjnJlGXfb5TWroeDPxG26gXLnZl
KMaTIFOwOcFqv4wJXlpR6HFI3u9WXABfEb9UbMlirCk6y2cXTzF/mt1kRW7txopmqCEhsUTevBsU
3MXwWTXV67e3girMqwYC1nsaGd80HXb4sHkQQLscAyVGlep+3NuGP8GUS1+6+pXLW6IpmeFtOzyA
d8d+h3tDbzliAd/MIp14qH+dMi4RIFpxzI7GqOSGT7hjUAZcpp96eEQoHs+5EIMTUemrW8EluXR3
Gg3kMNH7L9S4bS4PmxRGBsMYDJL/yezNHt+2qQUH+KInyI8w3NWqgu4bfJ+V+5mNRQzmAsfQtBOS
BJrNfjO1XSQs6BMjcbD6Poqcl7CLIafdz0L4ttAA3aYfIeRRLrJhK2dQfZeoMWfmAGz+mu6M0xJN
WtK2rHNetLKCdoY4o/6HqFvMIHgtN/aSCV4C0dPZ6AElzL/CHeahT7HvQTPRFu/tlSR7yFytfnDj
2EAf6RHtOCajdXviPZWgl0++p69eWShc39mF1kcvz3Sk8RdYuGJ/7iM9PUzdF0c+MqvCX5IhpiF9
5+Nlq0N5o4Bw/A2zCwz+0UqbPuofwcRuHaBcsYhGBkaYUouRGeobolnp583B+95SzZQbXmw/Exz3
AvL4U7MbA9LuZqS0IKOJo/kG6XQnTEQxEJM26unxJ1RgMgr+fkDQJCRIYHqMVXhL7Fpw/g8NWqrU
ln6U1vVuf5sL/+HUpcgasXoaY87qj0PLAgPErxdIU24aseE8OR4OG0gdk+mztIqsAj8cmSskwjxV
gWBowk8AoV77dHSMUEWRXRUIDchdeU281YKX6FR89OWujOEqi/t8NXXkqs3L8p4xmLMrwsRYT0xf
zko3bhIGv+keIRi5USdRpCWL0y8IZPA0hgB/bRaiVyzRyXHBmc7ChYf13lkxULLz+3Agv07u6YkT
m3mowyZM7pt7psqkVG5s56bOY28cbMTnuT0GzRDpiEN5E/yaVSdMYapJdZTdU0i4dnJqCcrpF++y
AxIoF6IhYe7a41vPXt1e2IW4v9sk+YrmMHy7THLGctrV3EjCa+T2N45YMeckU7ShtQGzl8uNEdU1
diriYx0CcAU2lx3NfA0emyhdF284XPTiqOZklkFb7kEOyOyijddWNcG4hUT3MM9+GR7uWMPnaTow
+DdsRDtqOsW9wsAhmE//WVs3BGbntSVigRUSXZIKAPgpNFE96cNEyBIV5raNLEa5GadFQe0KW2Fl
8zkSaa5G+eBBwGv7/0SWhmdVLV8l5ceK9sFqI1Yms/EwU7RzqN1QMKmEEkRU4M4rMaI5pmDWilar
0lXLG/n9sUcbBIKgQ9HDwwDZRjPNWqBGJ6zu2oVttJt5OQxW2AYflfmPNC0pFt7mMVXszzCamI3q
EsJnB+3kuMgI/yKMiDpGKuWTmbXulfD10JH7wnRgkjkeRKbRy6p4VQT3MSYjIR7bWz+EZ7lSgnWw
Wg24hqwMggOD22wMZRoyHonyMmO7oyJggRfBg/GhjiGpPV4P6dpT1Ahe9a7Ms2TQdHi6LjXMkIaC
sOCOiOpH/+pXNMUE4DPpXpSIRVW5hC4tAgxbS2EC4fapBcpctJ9b4UbHCVsCLW3TCREn+I3R6us0
9AZ9tz0gsny5km8uiFPPj1+522eVekutwK2gWcZv1795vcGbeD0arylUg3HLVrVWNilSXJuMCaba
HOl9KLbRPtOQ1E3J7n967jAlgRxsfijWXmYB9Qj5gCaRnT91HwZ8GfD3+8cvJIr4nKiIsIOYvDKd
zt8y8p3pGTFux2g2Jz124mieCopOWuYE77o7cQTYZIrNOb0JWPxskh/Ji/4yMRx6aVzhHgsZ7vbv
89OknBdavx1WmtvgWmmlMtwShs9Gnn1AUDOkGudC6KwP4eK7kRGn57fzPWVkOT/aY7asebgM/lGp
QwucgknNdhl1+rPSngZLM5V1/w/glC4Uv0eILIB+v9V/oCW6/yL6ooqlDbo8qD1igzGcfgk15Nhf
66BkoQ8dY+ogcjAOy9P799pSCXrMDDVremULrFohobKGccy4zsbFtgbmOw+TvSI1h7GIaZCTuRnM
QjDCBkVMHjPekvNbvXUeuAfYHeb0IMaaEg4ZZa2E405wPyijUAgzvV0WuDARB6zfK8V+M75jfrjl
DUnZqYlyFNj0aD3iIQjV6xrgFCP6yVu1aar8j18ZzPkuTGuGTOo1e7Wwhbmf+J2deCWTv5EfD7PG
BqG/rchJuPeEuSvDGB00tokr1gP/e5PLtVUuCdifRAI/jX67MeUSqByu0AFwCobgrklWCXMYeofC
0IsLXUhmSos+6zxX+zD5uDl13du2pDj9VtIjqIgu72TVkzPPtpLcQhvpgx5qerQNiRkfxcaUFTw1
itDrGmC2jkERtMfcztVjTZQJdgSLiaEL6jBHooPDXNori6OEu2Yc7xLkvFScnILla6OQSYc4gOsn
usDUi0NyhV9/UMCUav0OEFuZaPtjrMx9XwMB/AvOLUmQwyR7FKWSCi4dT+TmWL3ot70QhG1j6JcW
OCuKbt7Rm8uSE7YyCMGkB7R1UoRY5Fl3CdbC6IY3+nsAtP4sgWt2yYGkwvlzx/9cbvTrjXDS49xO
2VGwb4cgh9P3ojO7+vBHT7B7c+E2O+mqqjX7Guyr1esIvIeDdLfAFzFScCIjeeUSb0gW8/vzdYar
W9/5IlBW0/xuYC2Uvmc5ufJWrLkWtIgKGaCOXuXWdlqsHNHLwwixT3lR6MfWBbbLRSBNJUGWuB7Q
8yD4xYIOPiqc6I0YK58ut7LWK+c9FxCSEFVwezKNf42MoXwTYaORsu6yCIdC7kLwAijKDCRrbH4O
hIHUXsswKe9yvekxkJvTUm1cazGF5VwXSEnUQqcaseF+BC7Lo2bi2PKxVkfA43+XaQn0GnRAAMzd
YV846TxjlpKh+qeHe8IN1wwXIHwvfNcZYllz/piizv8B0tIrBnI20wiAvevQtc4LJ8fQwwLrX7oF
qClE3u9+kBT6QYmIavCf2MfIsinobXltsIhTjAheQ1ue9Ib7iLbcsSVbYEpRzAqvNhDIe+1IkbIr
kcKcJ396CM+Vni8cOHgEmt8GJboU5WA3K9e4oMSMwh2Wtg/aF3whzYf8o0wTZrf6egXZboUSkLg7
o4wl7lDJTs6agVhVASfrWjMxrOcwKJrH97IFhkQgpsy1wiSU7hbbPgK5d0V509HxwpYfyK8g47Qu
yaIAFQJUTNu7yNiU57Gjy5tggnl05pFPkj59kqChhq9JiJk237/hcz+LWC80NV4IfeI3R6i2Wdcv
3p7RG/0iaQQH374Ua8GgvRUYEktvo+8KrwguoZ30tUZOEsNhKnXv4ZbV1Th4AWIrLVRe6gl+Fdkk
/PFOodKFEhFLWtS/YtWT1aa6SgFBLuvGwGkKOQG4TbxWOz7VI4xH12jTBIfuZ+vwcMK4I7wyxqW7
ukO0iw2NNzLKFyakbmQ1TEEfuxRmjAUbwdgaHqkaK6cHBC+oTdZ0ehzwSXrec0yPeSQvyL3LW/Ec
EPJHBbQ+94VTbRTLdvNFOK85yRTmCaXkWm0Y1+3n/hNJeEPPPnYyzy9MT1yFENnZY181fFPqfjXW
qLk6POzIBe8RxaVJuhLI1WtW5rO4VtIKgw7OYkk538Fo+Gzn4zR6yvHjnl/vDePhw/1KpQttLdd+
t5FXCzO+9kzhefh5jwu4QehDdTc6o+ZlBTcmbyEzD2Te5WgLGwxIQW65JpfA+pL+TWn65iajMd9J
bjkJIYBhFls71WoFBetC5AInZwc+b1UTV42SD+Xyanj+u5NadQPt3y1t1I62k7SzkeD7zWTqGdz3
DgO/MOU+R1ei/g/lT39eLTv7z6VvJ8Giu7lnA5uub0l6YExvEkTjB3Ee285s0MQJxCP89WiJNABX
uKPJNDolNxsLmpLRdGdk1917Hpdw3+/8hwElt3Xi6JPbR4bOvzQY5mjO3tjyWzz73jKCXH2VrQYE
ESpgMPwu0U2D6WxpeGDKzTjYKJqPV8el4s+tgx0d8d7g8GiM4unO5vNxdXYs/odzf5zdKwOt465B
6csOR4o7y3ROIuiQcyZSzox++N3wI3w441YKQATsgOxz1xOqFapDErYX3JziS4MD7jn80+nVBGl0
2P1C0E1ezK5BPPMsyXCwLAGnw4ikXfY/PDGmSq6TJge6smAakMuhNVjWdAjwRdZ5gHs5UaAf+tap
yKbUDICJQuuZd4Cr1GFI6nFb0Gr7l5RX3zenwhFlcSq9Nl0V9bU5HwhvdtUPiYoOSJ4WA41iM6eY
QbL/+990IK00BYIHpzA4ADx1m/lQY2TF9MCOl1uzBNrynDyu60/i2aGfU7NiMhNg4tHf15qThcUF
46AqFvKWHfRLsYdjLpnpJOouIcvTH++syGzx1dQ2KG/+0Rv/lWCXyH2RpiES4izcDCrlHWZ9LDji
tNRbItGGKqHuOLqpYtMz64xKGbxoTsptCYrHYLgwWHdnLBdB6sq2OfV6Nm8t6wQVikDASd22whci
a03nfac6FDFhWk3jax/gr5DpgiwOsNl60IMv8bHzHFfP5CdJ7swP42e5TI/Q4rJw4jUScbxonmA2
CieBmIRM43hrMvFZxbZvjmAEMPEpIEDPXXamP+zz6n9FDhsabk1bcptfED6ZLl0RQf8aRecMDAc2
ExoagyiIokGvkWtztKNqL+of9Zu61n32hHdx9QeJ9d2SOkQLzv5sTVBc7zjr5RNOp5ef08fSoLpI
ODY//tCzXdRwrLir6OrHcThCDUwfrT6i57DL7wqoX/L6H53chKYPbttZVATRmY+ZPTT1rR8gYryn
6crX8oo+HUoDOrbo/xKsz400uDQElE+cjSZ5E+fWRpdwWa1Vubpnq5xC9aAB8jhHOM/hvOR5KFCt
qvTsjVWqRdcSpc8Kq19Wj1CuicE4FrQFXUxjZZxQEKZb2yaq+D66XHZXX8S0jJLgFh3H26hfoYxF
4SlXtMXTscPkZr3wGj/YGnlwlj3B9LsJyEQJbjEj4iAjmY3wkEGGmMiOKKnEQLyFPfpwB861riwv
08sVcHp9uAQftIrLLKSXdlzmmqDx72Sp+FLtcKO+SB2rH7HxvDBLpymZ8+u7u9B4DFkLWY6fjKn1
7l0yfS3wBzr7rHtip2xM8WQ/U86qEkUo/w/wdgfbi3178suc4NMu5B/OzK3zme7PmU6/yunIQRK/
5G8Eu07mVs8JaL9JrVT+FW5AFmmustFu08Kt1oQ6jGQ/U+eAbh9aSnkRJ+EtHAUTFi3etqYPPc6s
X8SuDwyyLL90Ed+Wod06ZCIL4tT2fFNKVYId5cuMIRr3916s0Dt7OWnLxkF3RXkJABOaHIXKSsQG
vUdB9Onm85HV11uL08moaH0ImCM3BbexlNF37hQGQ5sWpOnm0FQT2ineFpr9YvCi+udM1Uj0Tt13
2iy+2HhWktIEEgup0jJ9ulxJwl8wEaBfgfpid11WtQ+cmKqi/O1UyuM/SXBMjsc/j4GyDKSn3Upc
uRjLkxQrcrEwTX7yK1VlocnjpjP+KkWhtNRspxEB5B+LcVC2erBs74wx98i7aU0RIMSlTe2rOBLv
EGCJLEj6HNiVw/hIhm54MUok7fuZ78+qNHgQ/ZB5NuCNrdCCX7Wr7UkRb9Zl5dgra2v+dgsO81qP
jE30cmdp+X04kx5n+EnOw9YcgGid3L43OeTrkRmUiWt4dt6lsxCufPe+kwpXZ4Mgl2ZYj8h6IRMb
9f9jqMtwNhbvb5XtlIWTalts2NVWGGNDaQEFNWQM0ISHMPdcO2YL/B6NuF742Z2YtjHA6p7TnbMb
G2rJYZ/APr1Vh6AaCHDs6/cnTvVpTVKCJEv/oxrUPAALTsnQb7uTYweVzI/LZ5qp8OJjnON4zdS4
epvDOIhuVfIy2h/xwXMj4I1O9BGJtGPvB1L99xOyfuwBC1uId7m4Qgg19u5QAegKkGRG3IL/kuzu
oLzAnSx6LBV73i9yjQjhQzHe5FnxmhCNfrlEASLAgh3zD+tVn1CLg3KZbbFb0qnePryM/vGXjZup
L1+v3oPuJTFjl4YrZ+7dTqxih5GqmpguDUzkUYDwPeaIfL4XKe+Tkw/Bl+BS3PGNbh5hsOL8XEh5
6i4mQ7xoYdaNajq1XKLZx78Ta2NE5JtDnEv/EOj0w5DABpuxJUyltbfEf9tRau1DBQKQ19KgfbUV
TptfGHzupypY7hhYuMMhg5OrFmRgNwME0gjm06of9C1cv/kAl8f1gV6aXD4XYzfsTi7nmw47pG3G
9rk8o/NogM4dKuLID/IpiCEY0l5QFz/M2moBspmSaFR4oJZmpNaH8epRZTX5V9qr6JUI8ow1vBHP
JKTr7JlLxBOjkP+4iMTB2U+lXjWM1T9qHwdmCydyTm+7uEaEKNMVHlKNVLrAXcFqoyEHaZinLO0P
IMm2DePYISST/fsAhxuCzLpH5snXnfgNsl5XbW0EVptcWvyEesoKham64ApEOXpAT5M4eU2W3XlA
lkf80uspGZGi3BsDY2mzO3iAVyCDlGUCSiSNweaDvbpzXwQ2jRCLaDY6pmx6Q3vPzKrhn8EYbSNU
oIHdF0dOvympJe7Y0Q96zTkywi9mczsT404znY2iqijB1OzKTZoUqsmkK+E8O8E2KODKNzEYYv5u
vU45InnJj/nzvdExqbK0O9z/GJec6zc1ioDfHUpWd2uWXoC8mExMFknK71ds3j8ISdse2mMbbVk3
fdX5XSUMT8XI/tJVacWHY3mOHQOWWZpCKXJ4t6xfMgb54Hd3KR0ZGtGjh79qH4HpaWmgs2QcbkeX
ViPUt7h+WeAgF+kKnKpWbDofvAg9KfxfggJ+bfUKkTj3XJ4FCREvkyhguw5D48pFm1ngUjJTOeuI
cUtuY4PuhRmMEvfy59P6AfbzbrgCJswxaoebQwPApArnKGQjQYvJSzpJQd7jtpW8vTMaTxzUiu9g
d7EzuRSzj6+DNYdPgLwR9MU7QkxTZLXReoAX5/1FF+tgMiF8L09VLepKifhsYqzccH+Nb1ENuvaP
jP1e1rpunq45JFGbRvJtRnF6aYj42O+OLCRX7v9jO4rpz+hZlsKG91Hjsoao1/nVrnmxEtr4myO9
PQEtk+V8uH4HpeHGLYW8yq8CyRZZNMS2UVPmyBL3Fz//rOEjAiU/zZ/upX0IHqJX8M4x7kT6EFNK
TDnKEsDbjK5blWWRKYSo5ADX/B4K/MT010uP7ZFxYKeKSsq+LdFQLk3n+2KHH+N7+/EPssRr2uEI
m3/t/Beq4C7b3E6L12mb/Iqc7ndl2dToBq+ko0seuUUfO4HpwBjqq2uMgf41YcXvkFFkrygHSKMZ
Cwr/5FY8aaZa7cDgkFpfyUtZARQe4kRxXF9xuYegyrBDFq5H+fQM0R77zL57vtg52MZQjSLGEx07
4aHNmgcMnzSSRAZngr8lwx+KIKuqL0bzh3+NjDN+w4W6F1LPv0akz9qmi1097pEwgHF55O6gWy6n
fQDNis7ZruPU3A63JYCTynzM4zsk56SmA1EcrNaAo6h1NAhH0ORy804p8nkJm1qATUbx9cn9BQH1
gGD7zPFH9ILGwuySb3Jn0Wn041GJefSTi53Uav5pk2Y2or4gBnSncODYHeo9J8xyECkQMSa9DBIX
C1ClnGwv0jUkjKHjp4zB7JXod9D7L/QLpGCYc5yTfhkpc5U1+z5JyqQNKUAomQSOk2jQm5+ziAjg
SKv2+z4Z2KXVR7r9PNp1p9QtI3YceHA2sJLcA5qKkDNz9dGOktum0nvAgOEmqg+7gjqweuvkZsn5
UTHiA+Ubf1sKmQOwFgxNv5ZWQUVhOsV2hARGcHJHf/Wq9iDDCTXxcN48YFj2zJ+uSZPG8+87vrDy
Li/tkwwMc/gcVOa+wbNHa/lHi4NnXnRuhXg5uiThs2fVN/QvLczfQwW9VjJOWL6b5fnH9nZ0Wlkc
wtXHpAZsdBDcNcTdEHezfb5wYlS3UOtZCX8N2DRjIFZfkO4ogXM4m0EQWiZuu5vOVBjBLw082nvn
yMhVA33e0mnMUh15zr5iR8ZGEPWTKKyy6b0wHLFag6Qh5/jY+H1MCbBpTxn1PMCximIgwgcw5LAm
Kc6Wsn6Kjh6rgB8upGsmMrIC6zG98gSP2FD4OCZH095wnE5w77oDr0ZSY0DVSVsHnoPcTBf/tTfl
VylgaV1eaCN4FtysWuef27451aGR8MUEPd3C3WuTfBubCYjk5hbYaIp9ZkdmsRd7tl3UEo8tp6EN
tQg+xAaH/h9sxez8JRmWY88XREV3YUCBvCC4QoucAO6s77W3csrNPZHLd2bs46/+0P+DZKllX8Mm
eVqDxqq4MjgNOz0GFTHVhXb5sE69E9dy5I5U3bHmLqNdyjyPmhO7K3l3kbPU7CvZMsh7rtjM5M3w
vTGrnx8QRluG5UpreOjoiyDi9i69/gbGqFJPi/sk9ut8KF0iVjinfZel9Bh1tweMcuXdNw28Hdnm
qvOuZoU6qql1BKBkFLyrA9xfD7CVxwW2TkumVu0roTVBsw29A7umbHukEyS4yWVWmOuYjt9vQUBi
g1GpYPEclaxZh4Kxb68WBis200imPgZl4K76UWx0qCsjrcsYAZRQ9/WxbKazrrPXrS5mwb6jlMpx
9BCFA6pt5V9XVHLuAUglauffBjeLcb/5DFFrPPWMnzGOhnHoms6R2UsK6xy5rZvMcDEflyqjFp0z
syPqsW+8xzvGg8DOr+Dwo9lOXPjBgZIuPvo/6Ywd4tXGuecQGycTpyR32UA2wJb6OKLX9thOUbSF
00UlfMxcO+I5ZolDTR4xm5ox1tOcAA6CGCAMSskDLRoDylf41c+peODzEDb2HOAiJuo0pZOPvvF9
O2evJ+hUbm19xOJclhXZZ87c1+jNj8TVT5DJefCoEDSuPLeqCkVC0xt/do22KG29Wjtuaz87Dc49
zl8r1Q3sHh1dSggSR7DS3yNxDIMR/Cxskx9USWrUAM874y/rpLsFlH6rmuuGr6mZtS+zbEOnvDly
wL2KCVJHJTc64xW/bIKUcBbirzMRHzZa/cniC46f10nCZ01ToTMWJoHwY9821y170DEKHKZz9te6
bKEywc058IJAY+CfPfnB+aKjIPvdT6REDmFDO7hIRkJ3AXr/M4Uex2YmsklbvgaLHZFNm1rZZY09
GG2QtV0fa0fr+TEVE/5lLn02CaiL0rREqmVFMJcsuFhq53BRzEobI2Zt3MYH7Al/jT5AG+pWympk
BFo2pR2rvWPoX3ouT5MFB58oweg8CwKR3o8Lv/84CODfM7v59uL5qbKCYI6VWZeJKIJEc1nKWuKc
lcEN/pEQ1azGI9SQ5PHX7eexs493d9KBNRDTqRSJ15m3G0P2GGsDaTDyWvfi+sfHodLd1U2QXfxb
nBQTVNYcWyo0Q++m3X/6p1pVneWwgObv2hQq/2G0YULe6a0iDhaecBHKtn80L6p0lUExJ4L9Ji2R
DkTVvAA8extIPHVIMQDRUxlvnArdtJ62vnsde8EwmuEzK62Ld0Z4tMnTYKoHhlaU+mCy4P0wZePq
KpG9tWqSLXfzrlJSQfZYI5j4rD+kf4kav94V5y5DBDXJeVXoMtOf23HK64WTBeSkEV2ngXEyMXIA
so0pdPk7MwW/WGvO8W+joJdAQa1n/y4jOK8wxweaPXZSPASfC6SdE/RrD0XYMLVZgQO0H4UPeXR6
UNSUecZztcS7/hs+wdikr/g0CXucVR54gc4mwXYespoA8Kf4vqcN5XbFD2NbO9D1GLyFB+1Oo7q1
FD4M0JIC3csiEUZk6Q/IvblJMn/fN97YF2YL7bCH+E8gi9WD+jeRpR8nSVDo4o6Y2SX9qh7R44n/
MaP2DVkazsqnvkxYWHgFOArBr/532OVVtsmeoW78DlpRPLvcT5aAGKATbBwjDAEnX8XE2UXGoYri
dfNP+LWs5kDU+bjW173cNFr8i91ZPx8W7hmFe2w8jIj/J4CwKt8tT8hThFIqHiE/CNYf9fCRjjP9
4sWzl8Xt9J3WPGLouW6mjfqDFZgAzbauAyuS9vF4xhPTIt3pDtU6Y25wYRHdvoSEcUC6XM2QjRhr
fIaLynxFA+eP8soERPlr25IcBYwYjianFpalAfuAjRYQw/rN749SIYZ6zzCYrYV519Z/BZy/1m63
Xls/43FRWZ0TFy9GdEp9/8sIYjc05IPn8SOSrh7yHx8lPT3AjosuQ4KRtnh/Tqq6I7P5OSufaLAZ
JTyHZygz98O4a6LcskwwhDhjempbc0oJMr3BGSwGnlQ52x6WRPjMnwrveKE4qcJ8NsdhpBJXBSRu
zQOYJMRggPTpAIzpYcaZLvRzFIecpngeh808Cy9rNvWCUO5aSAYNATeDIuZ1yS7mx+0ufB2o1fYn
tVHjkt0m5BoJLP1lheqnqAy4UHDvVLroQRpB7YJlQK/VEcfoIzzSMRL27ejeFJrcHozx/30j7UuA
ZQ+8Oc+Iy0dZBKOHvIVF8cpxkAn9eTDEkllAWICqMyp+iFFsZBANk0hQMj+GyLq1IZcpuRRpQbT1
HZuu3uEyXf12X25VEYDLP7vJolil0csRjl69gKalBbc9/fO+WMB++ulgd87vOsrbtKwfhMK4awCN
Oht8xI40pEWMopnxKdrNeu3NxXCrmgigsPPxexbJQA/tD74GpUsSWqys1S8+7BcreIy7N73Scvne
xIyS2v8GYVp4au6ZKaw8knfbDyKDByOPwB17Zo/qqZwnaJ8UIkVbHgG5e5kxZgf/TKVDjGD22e6j
IebdGb4ZxQgLwyGCq7nHDsqdLt/ScVEo3RYL4SzlK8jLhZ9JuEnmY+eMiw4kM7jE2vr8XlMqto6n
89xDRX7FmG8S5yo5hid1wpdYcnKvPL+aoMfdvbnfakmVlvL4NLS+q4qqzd0GhS/TEFHOrkkjER4F
Cqec9lz9k+J/HCdor3E2uGeGAegSlmtauAONJ8gtK+mpq70L0fUoxpS3dnwE6ZR2qfiQxbKoqYYv
xcDcfwS2kQZYUyy65Y2Le/DVGaKLLuZhXD9uAY1P3O0U/nUaUJCV8MU0KL+ekrJ77HDL+09tKlG9
jF3RlYocLW/mzzEOe9vQUXjwMCZJF26V2M6KZWJPjVobP2WrHaZz/MgihQiPt/pTcUlaq5v5x8xN
L4tE8VZegungfOTSKisO8XXJNuYlsFBspzJyEbKErBcrZoQXkHXTdNxvFOjMxPwEm+bXyXwrujDQ
tRnyufMiD4oixQDOcC/DImSAf6bIUsAzq2yzol3bGiwRQg7b6oJt9gpp5qybW3VYkxOvUAbiJJ1x
d2ZVGY9G2ZFrXqJPSsLCVfgyiFIxoEYowU0VngV6tHBXbth1Oa0UmIlpVaDJ33Yo9xUVY7EeH4f6
FrHDDfx1A055FwmdkNNf+AdguEwz6XOZlrMexC10KdO1tzbkTFpujIBENa5iDIziD2Bu7//4GxZ/
FCwaQpW5L0cn+YAH7QXKMcsNgdT0e/uHlm5r9wlJ7WZ+5lDVj/gZ2FamI0ZzwF6g+S4IDoGZafyU
yU1JLnn9xdegb4EI827EQPFU3QFlzicTbXYSh2Uysr0OYAq6muVHRcbtWaZcxCcZ/3L1YEiGcXvg
x3LnoM4YtXVouIseWIpRoRmtlax7IUbE3B5OWbvhjKCDIdUrMVRuACjQA73tTl8P9W9aILKTv+WP
OQseQkBBgpkL9QYTCXNUC4zv/1jRlSHUl7Mz4+MT7SyLw3BP8sfLzE69NqCLUMxEgLGKmrG1wQBL
DrK4S1oTGSstaD4hY6Iwl3ZAr1aFxF2u/I5O+HKHWJg1SfTMxSNyxOiHIWi8NZgM5fsPDuT6srbi
VmdDwhGaNdXW/kbqlt7q+ZKtyYZIOmrKmwIgBhvocYyXJ+7fUpJxHnzWMl4/gQl3RDMj7wzaGmWJ
gZWArDdOkXtclZ6X6KtSBXwy77WNKW27gWpSQxNWsiHADl9fqOryMywPAJ846ouzQGFLTEunIQ39
Rtd+nEcokOby2i7J2hKgvb+U0WSuZBWbY8SpVcbt+2WZVn+sNxhW7AMfV1N0CjjC8P4y8B5Xw+q+
dnvJRqQgRhSlUJq5RLLu96t7flochLGegm53PJs9q7jVTYwvJie80DHybnQABX9y3ZLsnyUwUdnh
mB3MDMWq7zlorAlS8YWnykr4J5neGSq0MclGySDM+7UJonFYMoyYK7JYLHh+R13K9Wnn4OefiBf+
/m8z7UZD2u8Vhf9fjm728E6zdNUbCvS2wGP+jnDRihHLUNy/XcJ8YIAX3CO23+dWMTJmMYXI+Ueu
MuANyQnKWSeqUX8LoReBFOegHDt07nvr66U/shub/gCtHXAf4XN3QMnRwvOXIvjB+28KWUJ5Cjr0
Vq1mT0UBPXzuJimyBWk7odZXQ5oLNiGuNCySaQfb6Q3PP7rzITatpSokKimEF2bln2CjbRp4GaJ4
3bS9JDBqmbRMYCrH5fRQvckA6mIyRQo/Lod1s5YBkP3kC+cPd1r305U0N6Im/jdKNPINlKpzC8yg
Q2Uig9GymSW4EJ7sXWdfcONm4QvvRoDR5u3nyLUdjBiMPDa1NIncsyFwSp8kbVTuSPlodN7jXnVC
NhV2J7Nirt+h/n1atJxJWFd28XPjwr3LDUCtqKh5sKsNwa14tcxYqFEmfNWpbfv+wt3pBcRJ51Xe
KjJeveJ8cWZ3alKBPPrQjANxMOVHW56Pp5fHtc60PsA3U+STxdiur/oS0laEyMR402cvQGhBY0Up
Jwy2owGD+z4Gh5W9x+DyjGSsk+DPltNJYQZgIyRCEaDyaCuvQQuHICUv7mTnbrBoTqxNBPCxKnQ1
RhIrEjYsLLWGq2HvH+W7vThAqfUUb48ySoWdLvIBmVYDEq6RfvezeIRHO1YjnMUdKfF7IYiGxygr
UBmukesA02iH/pfhbquh0k1J32YChffApQlgXDRLgusVTjvrGquvDGLqK0H7uzGZchhxrdGx4rV5
q56bmmXzBPg35nBsulyxsRdxS/jq7oWRoaBYJcjLAbOirR2gRu6vxbKfzsS2M2kdmXlEFYZ60yCW
3ETnFCgbbAJoavIglA1V89TlfMv1cGg1pPKlXKi1C+16gwMGiDA3xBt17yrPthzXKXe8MjaOvbTU
hMDBXecvE40GxPOUKzsTlu0Fd+kr0YoJUTevwvLSdCxLTwPsixRgf47hq7TFTZm9BBtPimQgWWd2
jNnz51o52EQ/IZPb3gdJt0Z7CzOVqOFih93su6zX7KazXCayRPMjHurTi5SdmrBaGxF+75dZetex
wGTGbFfaP61y99VhQx38Moxig2fNiGZ6FpzYjhkY4YFlZZPg96TcKpTzvY3RSzxnNz9aiUFZFKmJ
XzfYxTQjJ7gryuwqo8zHNHBYPz4LHEJbJ3UIPy3GJsHVL9fdkEdcBwZWRlvC0NmCVY4FglGvJk7f
x374PeLGvE2nHwsmgVgyRLiWOzluXkvS7AFGyE/C0q0wMXSwEurhdM/vGUjvrcSuMhRsxex0boFl
j2Y+sIISpPKgbwIJpDyZcHq7r20kpTeeQDCCoIA+LHw24UjH22fIw0Vi6XqQCxFwy271/lXbYXJ7
XcDE3CEr5AfpkKUCFIsAAVkBWdyErlIlbQroqyXsSnfJZev8om/9Lzldx9MllI1ytR7nUyohnCii
KcHfxxOOg0UmsSW6nJwMNY3GDS0fqjJ8n3+lYZ2iMQ4O6NvWPYgnC9yVyplX1NjjNeidDuGh1s29
6tel9+LGHOeGk4hxPr7MOb98Tg8sn5NQcYKVOJmd4Z1Mls/oE5awyawqSDS9O8gW63anT9RE/K+Y
WEMynYCN1aFBHFRC7TjC2Q0ytgJyJlamfBSObCsmJoF760m6p45F6pUxw40cwe0DbgAkFf7O9QZE
O/uadZwJQ6hmCs6knTDpypzqhjwJlOxokhC54NvkqwfKFC2NTALtN2GsOZAiIQ0mlLr1U7dM42ld
1m6acqBWfygR9y5sBAtb8TgUBXo8GMbv0Mm1cY4hLJbAUCrEbf5Oj4Tw8mAdv/HI7jkf4tr7sEZ0
nQSMgE8wThsRMXTKCRlfZjIhaNm+JZxY0V9AjhqYWFo+T0jjZGgDcvGqKG3jLKs/Jq50uzGJqBbl
p9YcGJaLowES6iCZCmTmaOuffl8SirogfWI4uH8mt9MCQHULbGTvqlYe5tMrSbT4DrQsc8sv1Te0
N2A/L0u3C9u8BK7/KVa5Ni51c+jugSdDDv0qEDhH2CT91Wf/gFsICw1hSkJteTwagxx7CVeX+z0n
dM+y6b7eLycvn4ZW1gjDTadHgpCg5YatxOalGdnQEd3vDsIh9oOiZHlq7vXlYp+qrL8whdrCROcP
MUV/0d5c7QYnL86PPRsr+i0oqEvkLR1L0VYx+pPMymegPNpV1WyOdV0H3nyrKTLCRtnwcpquVFL/
SZhC8ttYTrBlhG0Watt6kYpMgfiz0hGTUnL4LDnbl+17JWTLYBgvDC42RXxdC16Nut40LEOgH7Mc
YMi7hN3KLkj0x60KGGYqVKh8uUMnX6GMeFBbIXpnLJn2kw2+/jGX91h2r10rXlMLJIbJwotq3L5/
K2riuTmAxOnAQ3sPJBeSZv7Fw01Jd2orVml2QJ7wf5ivIDDRLFg+vskCrjBX7UdmvSXAjzz2duqF
TeRVFWdNrNbc5mACD0/hKE/5Ki2fvd2LPnb7XgnU3tT8FHLOsi0vrveUO0T43SDYTmi06XaRMgQX
YtLreslPgq4LJ4dTMG+iWbs4eySkUegNd61aaXTIyjy7L+dfLfkKSacgYN5Y5oMaJEOg/a2quZL/
fSXIoX4PA29UZwYgIyqwHo4N7QQHJpTspzVo5Gn8HPNvT/V6W9WtA1sjybjMB4aGF0H2z7V9kKo1
pzy9+IWFkutj508NZ87xaA4ylkW7LTwYvPKHtEfE90vNQN+qX2Iy3N5PdvZUodMfDYETTeTG6ExR
S/dfExJE/XA81wOwdPcXBk8UhJRgVcy0xsn2HGPF1UON4+Eir3ROHaO4nrw7Bs21hcWcciK7RLr4
/KoOPc3+ejRqyE8LpuTSai9nd0pCiiBIvdPc6iFFrNH80VqJv50XCDkHCLQ8XuiOBHzZ9hcz+UwC
hiEbIkO77SHjJSPUQHA0MBOeL1rPaK766uTLKCay28V+fR7vetpnkWLm6+sill+UoMrpDHmM9gdn
aKv3m05m2sZOGET4eEkvnC7GiPXCAjSWrPoWooDBvsYX/7VLzGQngxMzinR8Yye3VdIzdUX+rmKp
RZK2fBnLVSriGwEmHWTdznp7NAuYnvnmSU5vKhRjAHwSOpNLwkfqu63/q80TDlSZkn/Usyi8Pi2U
mf0yh28BPVLAPxs7B89y7CCBRSsVf8aIIjmn7/ZWDs0GhyRQynBUAOMXzsqxpG2R9E78BlSxxQEh
JMPTAgoL8wBO8z0ES9kJTCOMF3d0sJB8P2DpVElbInyFK047HRT/KApZAtLpwH8P/RtM6+903aV8
37Tat6wH3C6ksZy7T6qpzWOWAq5cJ3UoOHPMRYS0mCMXsWOF33pOTkad/Q78QsiDBsKbjJ+UbLXK
Pu5qiXh9BgD1EHKrr1ChI3J5ZothRcpzrk9l84lrzJ26RY940gQ2CwnG7VlhbO5P5O4pFX9S+9js
4kSc83vgA6UES3acffkehZqLsjsoJg1cHnFiYCVG+fGxLqILfMT2EN5ig4UF5Hno2CVEJNaw12t6
KUjSy7+6wic9OZHtjnyK101sy15YXEvyiHba2hwpuwODSQpCm273YK82D9B2ztT1ocX8c5hq7tID
HGjFl703/osjV3RvXfSswx2lleWLyvT843BAUAV5ed1dGMM1TkcFbKp9gQzJjUnA8T7LFC0U5S2K
KsKu2xqLlN+gYD1t/uhfFYe9r9j/A3OzcY9yvdjQmKtW+9SufPhLpnzOB40HG+aB0HVriapraxDX
MsCQrl8nwgKBYArCiuOb7XBaNqjiXSSF3tboWHSsBxS5y4kBlimNtJG3wDCfx0a8f1R8FZjmZs61
eHgBhwo2RULbyCR+r6phS06QnkbeIYN158HoY/EjZzrTDxVcksI0SSp0eB5ZN36MbNpakvT0QSx7
3YvuWumrgbC0iYTzVFvKIWPFAbeLkjrsPeaSZvX5Yt9qmQxt7FslRL8+cCg8KR+86o54lQ1+B6y5
uYx5F0MdCXHxk7PioAVkFTBX98C39Pn/GEikbBvLCMrFkHdV2tGNlSL4s+0TKmeMLtCtMWWI2xgo
X4isn1cUKGcmnlniW7KjpEkRD8+NYx9UcGf4wl/iQU2aSQazL6HPjF+VLB+MW/qLi2SSB5aRvJuO
YzIapQfAtstR/nIfFXgX5VNIcqAeq95pwVqKm+HVSPpDbUmIrvOvnWth3y+U+SFN1JKzD32KpMkK
kRZLLEdqahP7/xx0owgQXi+DZoiM32E1yJ66VwCyscpfPOJTNUjmXHRtlyMrQx1T6RDUR/1j4ea5
ednlzo9u6HLQBFTw7cWuKarjJk33advYxracg+vLqE9ZR7Nym3tpHknNP0oiH2ZfLTqbypFIQvqC
A7oxM25/c458jOFL2zWpSFdDkrX1djcIL1+w6LEAISjC0fKN3OOXcxYNZA+3nJL5IRfSr0L8y/fl
2nbrs7gE8QVmNuIlGTilVN44j3V+Q7xYPjYAuzFddrIDNFyZtJmG9Ka5pDc3wvmo153GbAPewdpR
Afhs4e1sWfKRQimSvYs69DXQjy8uH2kapd5SdExaZfJTYcCf84KMMmr4gn1svRqU+GeYlt863GU9
g+5dIznAilSaEvyWNL3d5mWr2ymXXoM//VaiPS7c+5jfvl+qQKVGJ5LhH+ezq9A68D2gKFItotJ7
SoWuOKW3uIPt+yVtIXQ3pRRH0ATR6loFyn3PS8okWGyiU7OZufQEELebgu+YeHuzZ5bTepfzngEK
B+wg7TFSTO5LLdX17CC4T78/On7zpahLbMfWFvY0NImRV3UHJIGhr4JtWAJfnjGMkjjqDBwqFEc5
0d5umCk/orXyeieQ8PHKgID7REDA/rpIM7bgFnuiXrgE3cele5zWo563RyW4h9Ns2gm8Z9/WLApj
zXrAWk5ag4EfEbIACrthyR5kjxh91D+GHxJ3ZoKIz58/KYbwid5HRW+Q4Umuq2ko+d1P+0VVxQxf
E/JsYxexHyOSyaeHgK8OwrpEG9D3DkhC3eCVzQQOmz4L18SHas7wgJPGuz7v5BbbPq/fmHOA5aDe
Zs8SeNTrdbdrislq7hv1KreuMOKp1FMsBSfAti00ozREbUfJ8EO2DD44ARoPVHLKDU/CVmA5RISA
qxo3vLpLpH8YGwHoKHC+Aj6hwPieuhG6ExvXMpSZjntLaWU+TD6WdVPmwxiX9Vc9Ztg5Q+febbiv
9cmtddCewRxEiewZLXyb6BGa+Tx3axfqWewLWhFfn/vTfgBNPKuD/IDi5SUMKtM2Jg4mwYFCzKP0
U6zG2eEnXiCWWTAnxW2WyTSCeRyUk7Og+InwKAvfuhwzDDUyE0h7/yNnouh58BtuDO5UFyOfkr2R
ZM90M+IUXMw0a906lkY01lBSWA8aklwpx/62lg9idaKBpQqg5IeUa4jbxPDaLlqhxL2ZZEaB2vbb
s9Vch951V1ulvashCM+hEd453/s+6Hb8h3Kxit3lRUozXISdhbGFDXxaE4fojri4+Qa2oIjzwzuJ
rvkK02vQFGE1hbMSbOX/rgs9KE8VXY3hx+4uOxZwSFJOK37mB7SNz6vIx9Wqi5NDJFS/DxByDNDk
4VoA/gO/7Mu88MJ3yyH30jvCI3w+ZqImA+PAaCKYjIBbSGWlP1NoTQaA4sSCfVVYNzV5fy0LL5T1
bYASS2qPBGOL3GI9hbFHlbHiBDPgLzxF6SD/fvPOIX6QrdK5suRjzyJyB+t/qxEM/xgSFAq+4AQ9
v6o8ClJztw7vJIyf1p3UbGGJiVTvAmoqIbfU+hav0l2YNaetTId3XF62HZXi+RA+7WMDDZbsPSZW
NlUCj+Cg9czX7B611IqPZ/GD+jUnVlAMsUQlEVmTbjuy0pbPLi5EwzEKzDLbfwXPG4vWFWT6eZFe
uBk0Eifem6wCE7cHDz1hrL4SmcRSiinJlzzNKPb9Sp/SqHzeTDcIyFm3TEvgUtudDKZFlLSTgxnp
1ZZxXD0uNMg0RctftE4G8M0yCZFfyon+zHPxRZsYkFw9qjMuM3fBLzfIbExhrcr0C15KM6hCG6rT
gWwjTiroDUEgTOEZt9P2eK8aS6r65D88NA9HAJYWmPPSnjBa8g9pea4eyjRUdiW6WDN+6v98tO6Q
W3DstSASv3z9tc8JDXibgPsH/2qzjguBOYRsItqncqy3zBXkJPLTQv9S65gjxmsfmxvHdL5Tr31O
3+I7KHnDPMWePEHgcwPqdEEomlLWwHpx7HT+clIhGlV5nSyDguUh9uCFT/S1z6/HUVNwDVxy5atK
QLkoV8KMXmZOXjJa3t1N/QSRm0tTgD7nf5nIjJ1k5/EI+kqydO372zwPg/QZMKewWCyaBxtHAwJr
EQzSFU43WebgG5A9M82La+MOZ3xP5SiHgChUpCpPfU5DztoEpIA1Urivrb9tkSOhS6GZEIfnYozj
N5MGv1HYgygSSOYf1mWmh8XUbpeVg14Z58MJCo7Zm4lGAk9LpNY28j7/R0G5Zyz9HhNaKqKY/F5B
pUjxOGS5+vKDdBgxYLpnEd2Eppd7Rd5cX7Pq+nWQ7gjknABVPCH54ULKboRSiZaoVroL42QAXj8l
BgRZs/J46uf3DWRcsKt74e+3UBeAJWlIgxBW7L1Vfwe6/q8PSs+8GV7loKupM6OAVz+ptex4PdBB
eWbSKAqh3ZUgHBySX2vllHi9HDPGiaorDjodqObdovrlj1UgPc/T5qIEs2Q8oU5RwLOP9ec1nqX3
YRh+uFpFANKaN2Pxn/I/Qp5icaUEcc1YjJ38EaaPVaAv/XgYrwWrgGyuR2ds01WNomYZVHcfn05O
cRqRQl9Azathw3wW5kxBk/fCPSx7PnFERy9UpRQLJj8mzZtWdjBsE+icdYov77btwyt2z/G15aiB
Ezg08PsnUw+tHv3V6sI/pL8wyYIBwtl9Ye9GlR5Zkk+UfC9gHxR8qWhzJAkNxl8uH4ah4OVKafyM
xfiMaoJaX+Fe56akla4sL2Sdp7YfYdaLiuYA7M2lZVsRCoMburmHZR/7WVjg5bW2jvpUEn0Efh4C
5+41sdHsnff3zguPh+WYvh6ljhJ49Hju39TZOj2EYOQ6oU9IDC2WAJDqBovIg9QIAg91dcgROXhh
bnvH/7osyb6Gip1+24kdvftvmZvmBGPNjDMyI2esrxEO2ipdzcXdEQ+Qj3zA4c9ddSoij3Z2BlfD
Fi6PaG6AIbCL02iaV9ty/38r2b2I34F8gveUbHbUCjzix1Xkx98CKZfC5CuHem6VQK1lK0GWUDS9
2tIuhOFn89KaAu/p1Wcf365tB3OlS7z7CCr6UASPmpLzy17vh11JGcXUfDV8iE+4pGeYS5yHUW1h
A4/oMReEkkzoofD1d05MMoruCiRfye+RtZNLYsHIbJ5eXTC8MfYYpFtGiLEmQbmG7IyRILE5z7Zs
ynIQIdPlF32qSWf8H7x43VsxHwKSIP2BNeU89o10Nh1kKS5mlReQU84GCGs9SNjp6USeBoZQSIFY
AI8JGUPIMUEanQHu+dV2m6eqcOa9TV6Bl5pjqccBiHE69JNI/vbd0QZW4CMdP1+ARvugQ3WAh5FB
ijRZ93VIO5jgbR0482IcC0M09PcjQsfdiY51sM4mqi+zuq4weEbnrTDu7GldemKm5sBdHsZTIDaF
WygnMQFZSPIDJfAZISVFQAst+C3hbw6YxhMfqMJuVyoMB32AhIJnGyuhm9N2cZD5qnZxcNyS1921
4m2Fw5Guc1m9kDsFOjd5vFgLvqWegQWeRXmnuHKfPOFVtDqpciw/EuqYqOeJuGCH67/SN6EIurXF
erpryxjz/AY1rOMJRnVSPzZGDzERJLShI47wtcOtVoF2THk5pvUuS7Lrx1v7UlE+Gi+wGrjaC75P
3i4F76/UD4EbzT2iX1naX9G294ca2XthPOTYGaO1moLyazBTtRF45fED0qORXhSqv212ZZ2NNSWh
KQbzsnMGvqbxNZ45+pmCLImCKxDsYpr7c3PsNqs7Fbrv3vrt4+AbHQJjNN/QSO7yXvem1aBTDVkA
8Q/PgOVguyga4eO7KlsMryXtlsTFE2Sh9TddNynmhK0+3zOOgI+dgwU8EqRgwIjPTC70JvAqeHAL
KIQBjX0G1gAeaGC/teSWNx4Nua3UAVKP+qWxs2xxOa0VVQnlDdEtIlfMUmzqKwNY7jVTeMLIEnR4
kun0cB/MNk/yUgYyfLnRj1PH367eYjOER4NGxjRB58YI8dim+E4wr+Nd4gsUK3mXVtLyxSRXZAsx
AsrPI/LD4NTWB+EnZve/pTDKt8ZWTz4EvzpWDiwqV3JmEgn8jAWfOiCj2pL/Rpq5WFrynVgSyt+C
d+ZWgvn49EXH3e7gMTBIzCml6v4apPPVfhVBkhoZmdRboJOoXriYJtqLyfDhsNVX4l8I7Eb+u2ir
3W4fPScFIgh0eG1ax4saHMb2aQAD+9UR/pnYXxFqwS85+jR+9Cod7UW8tA8i3WD9GSriScp7T1ok
udjpodzPU8Rssnufsv9ztpNJK+Jy8VvSYWE8yFsEpQ1lrDx0KOzmpy6MRkqPhNezqzwjv/7bv8Td
SiNP7WvWTek+NhwqcrIRJH8Kqg+F6yjMCKADSzA4QBZ9rKXzrJMty8fXqwfbkbTll1FxHv78kLLW
dE+LHYYx2I3x+MO8PK2oW6nLRb3UT1Pn/c57ls25Xoru6MzmN92bN/WCAMWqhLAX0qiXnjjmDIwy
bI98jPCi5nzn6kpah4r0gpXESZTP7udubwKRO87I5+NhhUhXHuD7ebFfKZoyy3KVf0iZvnIp+woA
8I971jgpIsaOcBBckZbW/6Addi8DiNeZoiAtXwJvdc0ivI59BClLr4M2pFdsYM8e8zQQHSpOB4W8
uHZnIEQJPEvYazuNKtN9mVRR/X5G3znPKN1/Z9j06Wwb0DtZ2rxItJHQIe97mmxDtUwz1x51+M2/
PuC80cw5KoNhgipJLqBmrPy0qnDcSkMpSTiOQkjM/45HpcLjCEQs2hnM2symdn/EOcbxmVNXbdmI
AdOOFMCF+vnYDHb4G/sZeBHvxvaJaNXA9DD84IeKz6KNG16tkWIrkdHQNFSDY2VzfpSQP3zFHSh3
m1AbYg2R32qPMs687iv5xguKKMA6k9HnRsp//6UcfcKtpNvfdBt1kgF4/+zh/nXFtOqKcMzsbCbB
YmTX63Ag6QsTIOWttIeqmqt5wbMNOkUxQG5pZmI1e5U+FQhBDCOf7j2FhZ6ByXZew3FBXO3sZx45
1UnqY6iNraa66Za65mBHVQoJnqsW8KtiwUjwz2CpqCz4bkNyhkDYYtaG2F5TSX2nfbKGZwF72wox
yH8WFaABnKj+9xxDXouvU5nE3ejw6sd1AHl2DFQ5fuTuHCWsNvMvh5wm1rxOV/kyRjmoWINJtCkJ
Qtt1tTEDFdNaditRG1PfG5aRjx5L8+LW6tlXFoy42WKdMqi0E1hUTLhbz4SNj6wfuAYkNByNSqRk
2tdDM2lPRmVfjFuEQxo4BDGZlSmcgv8EHGq+EjvrvCJTw5wTKBGm0aEB2HroaMR3J9vASNBtQNpl
uEejBNkovcGHVCxkduU0Q9oE8OrbUw1FrzTyBqOGaRWubzcae0DiCBHhadIJH7Jy/dDu/bWDkbME
UNo/q0VzQYcXuSv+6nVWz+1VphT284p7locImo/T2aNr6gEo+2AHXtwWb1f9BXv1i04pzvGdvyRo
KKt7Om7FZyGra7PYbfh26eNeS4qkBDHP43y3YRGJcV9/E0zVvw87crbj0xDt7hdkOuT5+yBPzWBt
7Baps5dZcbFN2FYrLR/lHepgmDk1h1/6/oxGf8dBT5Kcs05BQXjxc2WbPGAeqomZEK7lQ3ev7JXh
y61MoOL4nyj2bjwQpplTsi4a4vO/6tIyxK6M05tuzMgQnEygfTWf4S1d2ui6UNKfB+bVpw+tAvKi
lguKzmwvvZWi3/eIl6FvssNoZF9wpWqOjuj/ryCe0LYPqQf/+wyg8qTDGJJ3nbV6a3AHCmRa1fAL
hQ7wP2miz9dVVUMMX1ufO/aovR3pXoUuqe2BqPPsDhsaEOHYl95olXfID2dQpDIAWcuEcQKWJiVy
wFMJT6Q5B/zX1cvmKYX/lgbSMc3A/k7k2BV+K1Mafe2c5elywsxEsmXW9crD7R3mTBN+hCdwNA5D
bKhQncvkKnzQi/Gqhkh/DobEChFn/X6K5WyAFCRwXnA3cnOkpLNnvhLbEUciBkkir+to3PKlQYRC
3tijEDOAdPFspwmBMjUiHWDNq3FMXdMAxcBtydzcbWe3zGfibtqmj42rRU1G0ZfAzVf+Di3m/ZmX
Ph0Y8Y5cUcTLERiCxMB8SQdD535fW7OaN0hNFd8xAV0rDpf/B6pJ2rb097vLEFIbaWSWGQVysgYE
M432fBx+BT3MA8R4tRTI9PkpHGh1oCpvwvO2vtiy4nilcWfla2r0gZiqzIq1JHlz7Quj+pwjPPEz
GYY/VmRVEUiN4QDIGz4rTDLluS7BWvzbP8gUftjeEZ8k/oBb/vkcDGdBYeHpzMiVO2SvmZlPwj4I
Dxsf8yhU2gdyGn30L8CR+0OeGS4VpA4G9I59qGxc6hsSki11EAIdL0i32aHBpl19mk1gWJY+EAJr
AsGXLwJe56RHER5SMTN07dDy7lkHJ28imKFfnT9BeSJ7EyxFY1W/0/XL9vEXB894CMKWGGlc3tlu
BD+UO2Dpuces0FZ4DxtrwuV8uQTzoMHjJ3Oplp5Ez9c3lA+EkWtdqEz9wg9PPBxNvxn1KVvoJO1w
Chi3APmUF5tHUBMnUzboLsOhUovFpwb9nQY9S6hrdtWGZHuAJZ8fDA1P/tw1sBm0CvvChlZ4iO75
Mjp9uJX9KoqLGj14q1f3w/VNTRDGC7Gxg/10FGZ2S3eQdBopauzxJSBOvQJ+yq78WNq0P9uUada8
2fkXxvjLDsbZbX/WmaU0OKcj/H06DR64CT7ZQmaLVz0M9Rmpb7ZjgTcr0Z6MVC5YCFIqhefo1yoU
D0PxOgaeR7Ua9QzK5WDEPuxj8Hn8qf/pXTmrnx0UZNlu0ToWdP/vRp+mGjnmbGeDHJIQLQZdcafE
3qa7OI/q+cFfBLs0IvcP2/niiq44eU1AwebOCZABTUKh2awv/8pcFxR6ojaL1X/r64Yt/gDZ8szJ
vurnvgRUvlpbJB++/fcjZVXB3ZdmzWuuehQBBGuwDPc1+86Jen3+L3SjHMuoIYTziB8x8CNw4S7A
D3nXQRKs5azgKDhe8K8PI7Bw+VQO9IKfVJlxk1G+XVUaLw3WSnLEPkNnAWWVkvohA1rxDzvyzvrG
auOSrKzlJ02pnkknCd5HZLXfiNuCxqrRBC0vDXHZaUtuCvN45e8Mrcl226whu3IYJdpxJguH+rNE
L8mKuvbP6E6/iz0Kn9Jv9l+aiWzCyEqUvmjgi0GJN7qePAmQ8Zmf8AKpo8mwUGx5eRkofkP49Nyh
h2DQ8F7f02g6yCiCu/ZQylaLuAjex6SiB6bp0iPTk8vt4LXPtVDTlTyhB4Vb3WA6Db6/gEY4iNlR
wNj261TfUDAxh3Hoy79e0KNM0oVTSJ+J/KAmlvF2Xx/koWtOFfuxOpB6LVTYoUzCH5Q60Lso8f1D
PDGlnmEaTh8YEQODHTq2O45HgViy+XqY/sK/qGiFl0hTreWJM83ItdRmIcjlkZfGUheEo5Nd2zPh
/G5Oq+asgo+blzSllNsoCVlJlgdK2o3kiSqh3OMrv3xK0PYk7V5Vf+jdyVserjSFYQT5wqJSGLAq
amJtzo4+jgCVMl2I+wLiTG2QI5En/1HkD1KJ1cbMTOxndA0S1BwzWQig8qL2kYgpnKZ0FGKQgmcD
jQKfd4N1yhJPrgqqMyQ7fiIUD6UcPcltNCMNjXxlvp7KChepY3XG+L6CFe5HAheEu8ebDqeYvC6A
CBLubQdziGDLkfjTMqNyXd9CgTTRAHdLG2pCyMkBdakl4ez6G8b9JuOhas5UPN/mYmWXmJxBP6sl
0+BbY2DK7QO9txlpHjW8O054QGFK7ykS9A5FsW3oWZpk18zz3jwK26D+8SJp80dbdtvp7YaBXCQJ
R9r7xInecYkmFESUd9/STof0QzJ1iVPdlWvkWTLZ33RhrNDmQqCN1OSw3KGVr8xHdNj3GrU5oLCI
EgITt1rnFCyK8eqU1srOFAIEk3gjZXFZD015871FembI1CGu4RYNzsY208n9v7fafJBtCc8d5ucl
Y3+ECAR5sq/PbPmkn/LegXYvaZ+NwY0DJMX/GQBHlnJCFpTN7J2Z8DvzOvBaxcyo5bpqKIdImyy0
legAJuCNRmtZlVcekRAoEp/nHE8h7EqAV1rggsdG74Gopu5pyF7YJtUu48SNyXiFOIBKzzxTv48V
recr2QnKiOygEJYw+zIpXU05JIBBPLr/q4jneY6GRxRAu9daNIt30+C6Q5WJ9gCIr+dwxk2aeVWa
SrpLzR6M0YSBgWqwCXu1TTtB8w/3Vrh8LtjVcarWnZoAREVmXr0osNh3en6I6i6SWHU3fAhgfruM
Al9jWIJf6YE7w+hLTXDPopVMrAM41dzXBX/O0ae3s+d3b4uFpYpn2buPJytKUhNfP5FE67mtTm0j
hFgVl6NBbciza2+E/z7oBNocod4Hz8IniHtuvnPYjgCuqr2vw1Y7uyuq9OI/e4c1K86M6dDMMrcH
Vqkben6naMZTsk9TNv3Pa6x/4HedLIW49XPtUSJ8AA61nX7M/2RPW6S6mIjYNe7VFXer7iimepXB
xexHj8fceb4xvfSH8YsCVSTBY0W4sFtG0XGtD/4pUHoa7owONRWWNSaE956cHdrG6J1iRcLvY8vA
0srBIhBxTRnT2FG+aMIWwMyeMyDPzwi9ra2OI2dgSvza13nlYke++ZKDSLW1HKhA3SHldi/WewIM
93q0tMzW3/vewnI6iC7XEX+eUlo8pwQcHd179apqoNTPLfj8SkOWgY+XvK65DntxgzVV+3fufx4W
em5+Mr8ENF+7Ki4CzH9kuVLD1LkPGaH48wNtfqIa2vUymWKO/LNZcoqYlxALRRZLILhDv7DQva2e
INa4/XMs+dSSClSuwj8zJEWhBSXHkLLDtwK67R9uCiNpcFBxiv1GpGkNfFgREuDNJrjsOOnLS1EY
g8Y=
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
