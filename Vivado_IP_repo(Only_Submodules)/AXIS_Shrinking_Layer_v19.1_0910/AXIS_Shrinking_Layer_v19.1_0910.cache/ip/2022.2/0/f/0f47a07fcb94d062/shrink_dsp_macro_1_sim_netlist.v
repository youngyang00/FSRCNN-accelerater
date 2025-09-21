// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Sep 11 22:21:49 2025
// Host        : DESKTOP-DD0PJLS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ shrink_dsp_macro_1_sim_netlist.v
// Design      : shrink_dsp_macro_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "shrink_dsp_macro_1,dsp_macro_v1_0_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_2,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    CE,
    SCLR,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [8:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [8:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [17:0]P;

  wire [8:0]A;
  wire [8:0]B;
  wire CE;
  wire CLK;
  wire [17:0]P;
  wire SCLR;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "9" *) 
  (* C_B_WIDTH = "9" *) 
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
  (* C_HAS_C = "0" *) 
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
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "17" *) 
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
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
m1aRMh8xUWNlhbiBoCIG2zz11SRzf1B3nQoC41c01x51NKdX7tivhI545E9LUjEb9h0P5VB2cFsY
HPpYO+2lyZc86nys0T+I3F3F+UotfCxAEsn9skNmm/5tJgwxlHkaDV8KUhe+MICGK8oA+4eEt00j
r+vtIQJHh07E/M2quDXDOOCXcv0alGp2TRL3tGgs7lVA9no3g2iME7vO2Y0PMcTP3jx0TcZN+Lpt
4xRH1cBPcVMix8QAv9XxQrz6aITXMH+epcy1hWW+e25qB9CH0yrsiBj6LjnOpr4+B1HouBOpPDmB
yoOOHq+VrdLfTYSao9zGqxZmWhzuN3xOuags6g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vVk2tEsj5ES8vgWGUTcPoNMFQ/JC3c1kjV2gbulielYBW53mKoQik9u+VOt8cH/w8xtEBKaH9IcM
MdOJN9izjrJvTW9Y9rnv1aY22nLsrEHC0CO3QYXttVN/7wqZ5PtbqGGHxSlrpdD4BeqoNtUuto5Q
ObvfpAR4pimXArlNyy3KVwh+5B980XFkDKpJxt3UZsISukfHeEhsOmWI9mNP+UQ1ov4/wXbTOek/
TfiSL70pGdDglENi+uSXBX9NTRoWpHzGMvhXx3WyFk4vHaP8vDoSyW2VyzVQFeTaOyp9lu/k7RLm
HIH8Y+hcv+dcpBZgvNMVr3ZoXXWP5E7MZ+FpLA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28400)
`pragma protect data_block
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
D/DFMnKTy1MIiP+3hqc=
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
