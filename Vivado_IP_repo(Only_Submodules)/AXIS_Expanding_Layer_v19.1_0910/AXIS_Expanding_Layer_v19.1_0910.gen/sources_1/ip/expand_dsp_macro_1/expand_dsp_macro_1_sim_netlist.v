// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Sep 11 22:14:32 2025
// Host        : DESKTOP-DD0PJLS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FSRCNN_imple2/ip_repo/AXIS_Expanding_Layer_v19.1_0910/AXIS_Expanding_Layer_v19.1_0910.gen/sources_1/ip/expand_dsp_macro_1/expand_dsp_macro_1_sim_netlist.v
// Design      : expand_dsp_macro_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "expand_dsp_macro_1,dsp_macro_v1_0_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_2,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module expand_dsp_macro_1
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
  expand_dsp_macro_1_dsp_macro_v1_0_2 U0
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
blFfZBFthHQVtjYA44McYk0ExRB1Gf7xlYxvON4TtNUlkT02hLXWiqKC5jSCz+KBoaJ2XlOPKaFU
knFuWLnbiP1xBUlEfxq2N3V/tizKAGyRFK8JkF+IwnEsj5i1dt3pAjfftL29Qchs/WBESM9xqr5R
apypmA4pw4Kfntd8985SHkdcENcQYYAZhE3pyEpvpJlKGZZTnHztiOaqa88EZ//QRhcMRqsRccBA
vx9cFsC+ROOUuoPcwYWCQpnqA0lgvEJMUq5yBjj6ssCAzpKPptsbRJE0y/cs4ebKOcu6xM90LD3T
huK048NTpuhEW8FwdmCvG8vwEZxj+U6TYupiow==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KWynchT5FWMJGy0IVuTanyESB/jbkNVaeVSwEU+fYulHcNFB/krTrO326qdqqwpXX5jl/BzgJUmQ
XAS+qicaVpyn+IFMR9XH7WvCNNBhcDjAf1uSOydDmX8WFE3YQdkpFqdQ7z7PxHZN2RDey8Xj/2aF
2Iz4LBBq1FQfkSxwPQHyg4Ee8crNWu2xc+LznC6k+gSMaE7soRg0MaoEcnoCIz77jaCFsqPiS9aw
jDWn/wDCqi+v91HNV2xRwn0VrFaTX0xCEAfOyEHJACVOudHNRmiTIVNoSsAgUsw3EaxRnyJIXsLT
wl3sO1LTHkbCfaQHnw1wk5uXJjbsgqBn58uREA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28416)
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
