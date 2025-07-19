// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Jul 13 16:17:07 2025
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
    SCLR,
    A,
    B,
    C,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
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
rFSgIra29C9Aa4Rt9D06vCGp/vybVEU9jEKDBW0XevzJH2caIObIGNLHcoHGG1fj2lLFWsFm6SRr
cMfbb/r9MlW3sPmRN2YZWROkB6lc1TboNkRjKYKSitNJ3Z8bznfZa9d/LcEOWwjqvJ1/xcACrklV
ExZVMSaZdNvZgzqQScfi9lryPbqNi2LXm12EWEQlR1b0w/X6Nw0fMFlI4Mxuo6I3ndir/B5wcxof
JHZvC1oKkfTplTbvum6sHUelWBXLW6gKTaTFaz190I3wcayVXxyaIL2wx0fx0uykV4VREFD2AuVt
/g1ix+xRagexzM0CO0hIXvG/yw+3qBO9eTfujA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
egBB7BiRS+YAJUynujU1SJWyu3WsgkCTnO6wG2AZyz/tzR2+bUVTBJ4rXMago9MktuF2DWZ1L2rO
EjVaVkOea56eOH6EMcmSAjJwfwTdoH4MahOi+8PIz949aPq9v4VIXVc2+0Hv8KTXM1xSoTCn4/fO
MJqobXvvqnIACOwFrNbP6K7T8mrsXKjHAoJaH45pQHt1lt+rHFF4uek7yhWdF34vZZ6VvHZVYQtb
qPcdMyTe8C/rJGPW+VSnq6Sz3EJX1Bmb5RgSYdNiNXwbo3yLCHA04KDvhfb6sybidmnXxwKP9NPN
CE+rtF1FN6uoHE04G6wy+DFFPehvTUwm2Y/lAg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26672)
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
