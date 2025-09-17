// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Sep 11 22:14:32 2025
// Host        : DESKTOP-DD0PJLS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ expand_dsp_macro_1_sim_netlist.v
// Design      : expand_dsp_macro_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "expand_dsp_macro_1,dsp_macro_v1_0_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_2,Vivado 2022.2" *) 
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
AezxtihqZDyq0FqSY3rgJuUF6y99RRiuVbeMXlRhYhA0CgRLZyl/u5eGvfO3n/lUxNgM4bTHtNb1
arvHKiUfgcROHMlh6QNtDRZ2nsj5fBxibB1lq04+v0qGoKi/yR94nQnLj4N+m0VEj2Lp8Dguyhyq
qVcknzeNa1xUVFr9s7SGf7Yb2QlBFLYk5TXc/hD9+fFMoARBTp01N9KREk6xkaOVeRsEW/ydXHje
e8ZYyl2+EbZNjZzBOzsotj5C7iSxztB/o7yc7Kwg1v0869qfmXQ7ttm7PSXucJm1fpy+j744NdBj
3Qf1DmmqbLBhrqrw3iEmGR3omGY+rafW0irO2g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KdhXOPWt+l+j+FgKRn3fQqL806zELh6FVf6FsAsz2UzNfKGKlejM9SDBlJoYM0LFQm60aUl16tGq
sooERIBXs0ZKzH2ZoCYPneGMQsDFhk9LrFkESVZAqK2Z8GVBSf3eb3LkOOO2DkCWoNpQXGveFlOM
J/s22fcoRhiX7dDJOrZv9Is88be3WCTyeDpEFjWGDgoKyMVJuyBS6f+2HTwwgbaJnovyZyo/SniY
qYtehDowYSpIta/FkGsytG2TYH3tz2uFA9BFVeAZY/SxoUjWgI9hucMbCn3qTMYKCUnA11qBkn/U
TMfIeeFCxlfnsNSF3SVeE88syXyBi23U0bdOaA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28400)
`pragma protect data_block
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
cyUjYf5tNQ6GYhfYORM=
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
