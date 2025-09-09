// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Sep  5 10:54:14 2025
// Host        : xylo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/submit/AXI4S_Feature_Extraction_Layer/AXI4S_Feature_Extraction_Layer.gen/sources_1/ip/feature_dsp_macro_0/feature_dsp_macro_0_sim_netlist.v
// Design      : feature_dsp_macro_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "feature_dsp_macro_0,dsp_macro_v1_0_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_2,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module feature_dsp_macro_0
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
  feature_dsp_macro_0_dsp_macro_v1_0_2 U0
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
IToTyDe/1J4RshAUMER62TZVN0YQGNparBfYjqpeWahF7Km+n100pPHAADTn61FHM9uslXHUdXNq
IpQq47FgZv+m+MeViftWWrvRAroDAtZE6Uzscz3QnOrr2YkW90c+/ej/busYFueyLdpb98FZtxpR
opm1j5h71WKQhIW2sBOW1rstpqZlXTH+8WvXIval5UxVlnsj42hc4yLtH8j2a0Ka/VLLl4FyZ3AS
ofzslHh0SZQoAE/9l/NY758QxC3SGdYcUQiaTOL02YDJ5ZMzaWf+Lt6r0YDI641ibvfv6I571ovD
yGt3cdwh5ncgN28skwWwPDoF1PBBxmYdX5vR1Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
REJ92sPulmkhOXPs7FeTBrbFUZowdu8mIXMfyfWoX6105ocF6roOySqdEC/k4f2SujBKGzXhr6IV
Mz2/xfsG6fazeN6zxAvrXMtHhGmdqGAJ4wLEfr0ZH7hcGl4Df5T095rQ4p5gbElOMabEXMQGgUjF
Rmy9qgjVCA+mcie0F/Ph4jGNPVFQZkM2MrHsQlwl6knBSelAp8+KlsCxVEG0vblTvY8wwNJD1wsI
rkW4VhjoOYESXRnjN8uLqHm4lD5e7C/rOnD2IyFdC87qBBF3d6+cjmNChwgw9clUPJegTMElyMRv
2rsrbSO7QYXC/EJfUU0lh9dcVXuzTXSRlPyCcw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27120)
`pragma protect data_block
dT1oTtbiNhMDoqTFQ9fCWfoIzd22053DRagv1tibUlNCKG9XWQj+qgMLllaZy84eHrIWVrwbNMp6
4CLHYCpFKyJeeLmC7yCo9Jxs7GyvPepIYy1Y4P4OleGXQdNkoPdn0Mk+S5IuzdAhnVw19Rp+57Oe
LzmCs0EjHhZE/pLghwyF80YIktjI0eD82MLMuma7DfMlbcVZ1i2tveAiPSGF8gpGPSEaQaG1Tef0
W2VbPenuNuXr+kiqg2RMLYMrPcE5gWERct37AT+sng03u+47caPZlErZI1aNEyQz7dH2vqkmKDpC
lPfhwlcs/Uj1UgSlDOFTk+HVsfo8k7Rv2cX3oGdOjtaYYo9rMC/D9//jhM4jLKO5YwOl/KLEdiTZ
L4ueXKsnho76TIg8b4Mz5xbIKuEGOIVBC+4NSUO1EDuAp0ABfo8yJ1SWB0WNyD/Ckuaejh+h6QM2
CS0ktG3MgCJTrm1Ut+xhYCN+9zLkEK+JM2AqKyVua93JNeZz8UalBLZ8+JsQ1gp/FA7eAcJt+nOi
jNuBbkzsUGKTRs+evb3CnjMBLdIstzMK+M7fi3O7tEkN7tJ/DOoeYOEV4dxmuTd34Npysnbywkoy
KtHThzHYKjirAbuV9XB0dxR716tGtlkkdlzy058L00t69cIO2zOXYixCgG4U1BdFxqaEm7Mf1CT6
KzpiVL71dPcFv3tUvYJSFoMZMBv/iId2Q6BhpjYzw/lh/t2BmVAOAIz3XkkswI12ix91nQOxJNkm
v2nacPPZH+N3/hCbZypnhFXN6Qs6BJXIOgD0jXnt1jUJz7+OIV+LUPSkGSEz5LHVSz57OJZj83DE
rrxcg6R8djEYcMNxFP4xBqHD2W26venrzznfrQvQmcsnxo6RQVGlpve3zjr1Wi4+EP12QI+d223F
klPBA4JP7DRuPJ641jhVbIEl1i1Nq3sXUu44RolTTXEUi24McPtOm4AE7jOw4XP7lek9tgFunOz5
PLQcGxbc7RERJ9yCH8k3Rxw2HHLyjtdQp7pEjAebnfvCpr+1DRo847lnaFGXYUV6et0SfC/gko7E
mOtzZqmsNRMJZ85ht1z8tNiVX0QI455ohs1braENNdm73/AP1gHcHYEIJXqVR5KL8UOkHAVSUyY+
KJONAKSsYnwXRR6C7DDUjkfwiNmpxetGX4Ml8r2AKkGOdK+k0qZ2R7+ppQgdMp+lkP5UhKkEtd+u
+y6ngP1pjiX+2NJaplb90ZxOqKW+JYxwq/zQ3eyKRxCbaA8oR/0OgoMGIQFEkcfi06Ogat+NYzfF
7r721C2ZInCT3suIigD/S5e45/Dq4EyrPaQjs1iKulOH73eBn33pgOGKgyv2xlgV1aUf8jE2MSOX
ztwpM3N6egqfQ++QFYuMnwTUpiAEzW0dLNN5Uh7ETz0UaFwVAnoRnhcKXlCD4gQm35ZGZ9pIPG00
i8R/ogXOy52xv6stOdPrZ/9gKzgF5E+jz2tLpFZ5DtBnktrC4Su2ZI1Zy9r+j3BoePd/bMswZdLd
ToogDSrPsNolXwGtfZpUeHb93UbWLvE5y9abMAZemlHdA/byCErX2UDJce4BhQFzYNWFnkBcwhAW
vXtBXgFneV09vwZEkakeAujE4HKWBRhs4djvYpZVI7h5p+MmOX0haXW5eHwk3o1UCz3awrogUCuY
VNfiltik8bexLwRs+q8sNXBi6BuOC9eL1TJ73HZljzGtPCh+LQULLPSKE74oh64kw+Kfq8BG3vb1
iyrizByyUrt+0qIbhoFNt6yKfRC77VmU5Oq5xXJSp8nG0234gevpv9uKxrTBa3hY3bh5+rUtqlO5
/g35PFZ+Tw824yMdrvNUIapZTUsOtzqb2v1ET1rmrDPyjNsJfKcuI0p9sg9JxU81gNUyOwreSSiL
mAQqfc/Gcdncpv66A7MLX5dVzKi9v9fdqWHiC8q4NJCjbwv7eXwc4qVDiLJ2L+4B5Hwji1Y6Yxh7
p12+Wv3OO1hQUMz0RZbfSDGjW4aMXbEN4HtYT6RdlOO9BaQn0M+bH5mzz/qIzo3cTyw4zQp4P01m
9BViCKwpV4KaO2rLLaErnXxyNhHjLXlhW38esssl15ZJCyZM3dN3JwlHKrDAoaWFyCnJjV0tpt9R
MluX1drIieZz0hfLwRtIxJLgriM6iMtJMklGN/X1ZisJXs+fb1Xxd/jzEW5F0GCUq3j8nsr0Yi3t
7ppAj2LDW3E18bNby+nlZg/YsdXF7vqJF+BnFa2z9S4/nVie+UPEIuu8q7gqEoSX6EMAyeW23kbs
Bho8jq7qPK8gskuVHX9cMdVQ08nuKSF0ZGy2wgmsGYJuKTSVEhYpIPvsOfZpcprftig7MUKavJkM
lah17nfvywCy4Ka+bqHQ7KE7bxN3LCRreB6J53s3rT8Vz//8CgsRYDNBFYahWSl0Npg033a/sMrZ
m7hlS/fUcHSs8FT29E9zkuimmOp2zGI4pWjzDqVLCF3yZgQzxwaKPconss6LyWog8VQufEtsHheK
GCqnZG3IAe4jO66WqoIeNB5imVR/Ybd2JrLN7Rn7PV5z39RlCe4va8MUAqaAZ2lWCPdQYhz7Z8NZ
Hej5JXHttCHJYHi7wIpoGgvdRd3nLhGVDmHgiXYCRIKCDz0VlkNm+eT1+UBdjQpBsNAAP5m80XFO
GOq1YfteiKD3pXZoLexJ7qjB5sKQ/zGwDkzgzeNsC/UOjS/CEDapD3N0CQqC8abkUo/JazIu8iUa
R7YP9ZyjlNxIs/2fMNdquaKuhM/6b8e1vxmIiP/kCP8JmpD8wK04wvjNSCptuQYxILj+f/Fk57+L
TsHIRlgD6m33eB2DPyr/7UDzwCTFpzqDkVd9updmAhB0/4x0qs/wXZxLKfvg9/LQ+2mL2HuQ65W7
rpTodmzJMXVg6ib1gTYXSU6w3CuMpnA11NSZDoPuS2T2o2cVadzVFPl1wart4axtWW83EwgGjm8o
AMqZS0UgG9sxAA/noZ+4vG0cO4nQbS0CHhE4774+fTnoKPN2R69fZ+00PJiQy/Q21VujXjxMKFAT
nyny7uS81e5WGEvO+h1PBE58KFiGsl3BXgP3LMFgD0VbAlhF4wjmgBT2oLOIi9vfIA7zK6xnnOhr
wpWphUZZNcIxODkierYHrYTH6JTaED0OKhbagMJPfuAA+M/vtV+uzocxUjjpZZIWNs6giOnmEb5G
zbfdBpqCD47sC2tY71CMx+ChiVYV2h9rfyXGQPkRihBfk0eixggKvFxvfpamo7chKhBBjeIa3dA6
GTmZbPEJZH8XIwvNuNN/35QxPg1sVZsqTPpGF5Z++yGAf0dsnXbJ2r+C5fqOf6E6LtvuAK9Fs7MQ
oRrccaiq63wvPFlrfaL4Xvc4Pfwc9pnq4jCAxRLqkS3xb3n5nD1P/hhfdWZmwd+wsARpm1hwdS6k
X1zPun3Wfh5MA17dSXmw+JjePQ5IIJ4gSFx7Ergt3Et//yWJv2MJSsFOFWynqVj678m/hn2Mvan0
NMujKEQaB9VC39WLSlqMXo/WMmtM1yplkl/pHlvjOEHFGH0nzD0IxRi9jBOQOXVbSygC/niCpddB
j0lRTGZUEMhja/SLJQkFgUeDpHuW1ebyeXpNMH6wyMqZCOWAV4qqbqO5e/CWuQ2QZwzpLkYTr0Ep
nNuOJzDlmJGsGdLv6WFOD/C4ZaQaxtP52ZcO4+6VvbiTfYdJ3RPyea81SGDy8os+7JDaLMgcR0S2
GdPVXWVyDf3pKUpm7yulZRceBQ7QekqzKZOuDEust9l1MckmsIrr8tQ6P0I/mMbgHgsfAbzSxtK/
b45ZFhfaK+V6katMDi2F+ggBu6pciu17Z/QeX4FAfKfcY+xQ10ZokjGQbxQO2Zl6RIWy4mURBlWb
R+xdL0q+MBj1MAt1wH7XQvH0/GAPfnkQGHxin1FuxvEyRv0AmLZ4KJ90Vv9SsorOZWHOBOyYTHM+
qcPa4s56rWQDqmh/KR5tf3irbaAyI/0Kmra38F+TkcWuyB1QshHcdzMzQLSMprPjoBTmnbC5UbFh
Z9AXtynsdw3y7ZSsAh6XddFJdqHz7Bn7KyLsEaslvz31fsDiiZU+d4Y+RDvcelmB0F5QAbzMMudQ
Ex76JuNN8ioz44p4xmIdWc+xi+oeldA+ESmE8lm5VEQy8ugyixDDDWmqocndKxWnhASM/9DGVx5m
4QlsuRiKNx3q7hxLgz9Gpr4rZAh41xj2keFzQCTHyMeNtg1XLjNyujKiBE3bpQ9FVrvIBeljCusL
oHndeoQOfLM0PQO1IeEILqxy5j14B9WqgFHy9ZfDri2wZ7wUGoPgDrxtJMtG9kiKXQlM5gUHRqRe
FwvhT1o+byoDn4T34Zxt8WZXY9NYcWk+kyJw8QHiKNqyquRbElWsmmcJYMG4qguudey7FuY82Lbo
xpsvxzBhKYSOpBqScjJkA0losswK5AEArpLbDtMnOFhQK+lZzRhZ7JxTD6HC83UbbjjuHuaU7zmo
K015cfOzUo6qB4vGStnzEuX/Q5e0OHcSCNwaCX6p2J83lOW3HPFF45o3iAa/qOya1/vwIyEkGGSq
fFdOq87UhXq5Oi7khYO2PTVJmQGeTz4A4DUrebnGEQ0DbcUmNI2qzfq7MvtHggZsq2YaNGwRCjLF
XbAzl65g4KURD/P+zYEmldcrWd+/uJgH/+Wq5j1GoHvB0gx8LUII759LyTPfXsogobnXTym7V93x
xTDTZ+XWhDLQN7MRhPAqz11iZbbW5rnycnloxovs3vgQ/H5PTDzIc21Zw5lzfgZwf8H+NrG+VzPu
vgF51EnUNtKOVmVkSApvhGRPsZS3OUojPl9Gd8z6T0Di4YZhn+EfIDKqfTQz3VzngSp3DkSUG7Kw
WeocIpMCG0NQeDo0HEkVPje2/GVOFDQ6bqvlLnXs8OE1m5yUjoOu2ljNwnyHoyqnUm8DS4axOJCm
PYyNY/RKNB7kdy/PIFYrwNWZrDTRPffyn9Oyg34RbDaVMVwefxiPuXky4/SlDwF9U4noPfZKEck1
HoHj3sETrDKtvgH+iqftXhYgu2yJJjdTCTwirhce1UPh4UmmLWcB1XG3/fSYi/M6buuHcFYluGEK
+zNhDWdU7pH2VwMlWzoe0gN8OVAAsFKc52MEQTJJtTxXS3eqbi5AzUwGV7UlJBiAgD5B/jibEmKC
36V9qCSIW/9c3iA92ahZ+8y+WFakbreSQNyceTSZAkHwVJ4gVLK1aVSvvJVZhZdBVR0H/bA5T+jv
UAcJE5zlVYza5GDY2EgefeWpzNA1UaUY9YjZxniR2gIK/pc15siczxMZmXLD7gg9RbCxQPWHKxln
mrU/9pdThDdBN339KTypiKs4lKi7lDbopIMDnXA5taVLeJma9BW2BUgcAZK6Rbtme+gBfIlnJVs9
sTJ84j1a1bwOtQQNWh8Pr9kvC/6eQ9hF22lRL3s0lhCsxpU9DT+v9zh3EaWvT+MjYIoc+uFZdBzv
Lm5v5iJ8esOp4jWq0MEb/3HbtPvy8Vn3CNzc8f2MZJHr4+1Ocw+RLbn3M6tlTuZTnX8n5mHf+wnv
fP2S3Q+9G6rZaU+ubvsUmKnhKmAk76LJds75nrrb1RXEKcGFPt/3bzkeF1GIgGZ34yBlx48PEfHh
OjX1QvxrOoGQ2KRrUfhf38IZait/0jb6M0I8eOrpUB//AITl2OtF8+2wxJZ/TlH8wQbAx/jn9Eap
DEIcx+ZEPLl0leuG/+YAid/YWaTLbs0/R2CsPJkce4HpKJ6WYlmr7ljpRgT9Zxm2WWo8QC0DfX3y
2LYI6fDSiY/SkMajywVS7lC6NTmXC0Gm8vV+cKHbe9a1jRAK0m4rvWH21Xe81XX/EAYsdLCyhSXc
3ZrBma7kuMFFvsLAGOj8O1XWytPtOSb+Dr4GpJ7YCrJPapSpmuZRqj+dfga3BixWFF06TExrm5le
zGR++H8/Lx1TSKq2hEYxL/UvENY15tYGGmcaxfBWc1xfOjfc7o3AO1PtZKvWVjNnSdViAw+itsKe
RvIek9mK/fsIiNoDDK8sNITxxo/iihc+zAZbUZ78g6zdCYgXvCWeKUyfHk2nWL+Gi3cnnmm0j+7Q
Q0WWZWiG60twgL6ohXLRnyBoCD6DKL1H84fl5lpQ3bue6oALT1hlZAzgy7gueh+gt9xlM8VpVn+N
I78nUBT75JRIQDYKcGnxaiwsTC5mdDaDoKt92tTGNlvI7lR1z5oicMBvegjaAWQmjzD43lYMjD1y
CjhL2otBfNbSQjpDfVd7bw5kSs8fBkYCHs73ElXfuE4/t3vR3t1/f2EcCMcmA/sDD02svr2sWrPx
ipGuAQnY6uS0by1bwfbLmtCHMjdkHXYx4T4vR9HKc8VUcb4DrDKYhyryYFEtiJbPB+9QW3FNwdOc
bu1mX4LSiiJvG0OzMDS4fRXey2bCECwql2zGotI8OfzVnoEpfRlzKlK0slvPA2CeQ9RwUqzLkcdZ
UyxaLU0OekUx4uvhmeX0/iVyKN1t+ioWNg4qZBYZrY9ND3oZ79I7kovGWdmML0geOumbged3hf4j
6lFHkHAYcY2pi1kFhPJhkWIMgL+Bigku5PCCzsMfAisb0Ols/2h+6en4JnjdQ3sNAOlZCQcZ1BQb
FlYV5BOmM7sUByh7Y5xZtUMKibRTzLsWVJSzc1aqEEKg9D4LJ6T6/STczH2vB/tg5iqLrqWN6lT8
kdKpFyduJlGU20sLf1bs054SvKyGBoiYuYW7WgYMeiNmDG6S+noO4xj8fvYn2swoyy+wRYldqNzQ
0PmM34tDyaJDZqLml4Bk9UUUH/eQsFGkAT7GKvP6zgmINwC7WSJGNY43dygx2sPXDs6Z42b6Jh7Z
lfez7edclRNJ4y5y862ndki0boP15zSDl/Q5ipRLdcKqygHhKGl8owdrHhMkA4roYJAqJl5AAk9v
QsghOttooQGXnFAuPXmu35HhJzLiJubG8tJ3eLGfVn6ctMTsxaPorHhzZlFAl6HVODCkrKXbsA3C
fjdzUMjyD81s05qxCpUVFGCWLxiNWM94rRXcU1kMPrxe6shWOcB35GbgPlHE8rh5wrdpZO/AAhVj
mnRzBkRad83Lt2IdeiF5fSt/Z3gMIM+xiyzEFiTiEmCJlaTLrlPLKh/vqI/80s1FSf1dhE9297oK
4O82QnXGsVTQbkaNkhjlXfud34G0jGLFLIfYwfVyjKr4DAPLrKftQxElpfVoyTRY7P52bYxmHiLJ
DRJoF15fX30+LQ6jA5euodBLy2SntAHF/jfG5ippG9CevelPkbazf6v+vVyRP1XNzeG5VVwugVWu
/mbSfpprNZ8mHh0cSaF3qdo6Ymk8SxV/Dg8gFL1nywDgKu5X+7Pt+66shcfIWXnzNxvkA1jiZuHK
A9vT6yQWXuycfEzk/0LzIa1BQWEVdy5eKjoNB+AoNvSn+AOnRkAUCD+ytEdPzeZtKSG2eWafUems
SFSYvRlbNK3VgSF/a3YUe1Hgl9PbFtcTKlxPrqh/Gi3yISIS3qr8gCPS7I9qSOJ8TfMwe4HuYmzK
GBjG+5ncQxQWaisXQ2Db5M8iUY7efZETCKT/7GH6NIj+JgH4eMKCFQ8UMHozSdWXZan/zOnAZexs
zHSb0LXjvfrpcXmeUpzmXUyXt5uKHS8/qojMZIgK5nac/ALsl4zbY5BVWO0HoP3j3UBpta7YWESi
CpY42KCQXeTTvkco+L9qCcECvpNcl0lHf3b9BE7xAN5Lr6T+XsZ0MtH18dglwizek2tjzn/y0dCK
3clIZsLtINEt5zsJX3mBWhRfZeUOmUaLc9krq++oca3YD5U93Bijcic11aXxHzh/zamw5XeTuZxb
kZ6rrUsHqiwVRMskxmjabygXW5qtPApc/RtFwzTBh2uSDtW2v8SVe61mmDHrrzHLqeEQ1PAmqYw7
BDvb/FPDWJ3jg4tAOv8iEQo/OYseO1N2YbnW8mpT6Ug6W7fQFrNhZswhhAxCuvNlfcMY+BHLsMWj
TETw1xoKKKuibyeP0M2l0bvxh1c/Y5M4OtBKTGeVMCKDWc/z5oEXzwd76DeqBfc1l8dlz1FX1gR+
GQO/I8mjFzwrN/OoXXiAUAnrByzTzBOEzI20KBU3sdOXtpTrYB8LFd2l/qUlON8yeqODOMQV8KO1
DfcG2h63fxiK9/KCpeVGXV0QudcQ7xbrcPcMXBwt2K5cEigOhSpYwNeNnk8wKy1K6Lc95fgAAaf0
9E6QBwlTZoQivyDmOtYZKL0qYPvSN7p1kNievLIkWqXHJkL20dxe1qH0c+QsNm4D56IQg9ZtcKol
ZeGEmtUUSgdje2Xp84zyZSTurHx0cBbcPSeIUJDjRypP/iuGDK6m8QMYVbOEjet8og2foIbU5FLt
merhWuTwFX2rcRgIZtg3Uw1NW2Zfj9+7/B7Nyd4MYMCmL6UfFEwXIW+3gfxCx67A546WiTAIOlNR
tb93ySgJxDxWA24CVqSTMfluaQet2HYZmf0JAfUvnGlG10UV+IfnqYxjdV08GBiKCVr0OTNXPZa3
+Icuz+qCKpbQ2F3MJpLMBxecBYOKZBLqwd7hvZ3xVK0XOBYaEqyZKAepwvAxsftJHrcEN22MxZ3P
bMhX4upZFVuKQYWMd3x1v4MW1oKp9oNAoJfi4iHM5M8iehYy16dyiFLqAVnNvlJxEU8l08XMAT9G
F5Y0wIGemJUd1jwF0o0Y8XypCgQrflM45n3AoKzRerKnGb/wQlPteBaOgUQG7AtXljdd3m7fKTv7
ZyBL95wLdjf7kNDls2btE5lQhqDT/dv1+8479DMQBm20AH0BoO6+CRi3f/SNMEJ7+NGrZ3dCJHu0
+JvMoQHqizwMdKoORNV0KqWYjMb3ceOm/3v6frBO4JdZD3EjTmf+fxJUxWyyy/EJCXNcdv5aPbi7
gyBGvhFgeg1r+utcsp+EKlCa0Q1kPB0pi3tCt05p+u26fuaT6xHesc4hxrT/g571YAIy9ggZvLFO
VA5DFW2IREnkeJrWjA2J6hPmej4bvZTp1ms2ZUd5wD+H6ej+h1PveHQJGU1TmXDHsBL6nktBdDrR
w2aENXM/ZYDQ/txgedqNVfI7mQkipl9K21A+jA4o6tCzkGanv9ls8Ghj6IRHncbyWUCEgDVpyyym
YX2Q9p9U27IKDUg5Pax6pncID9kQS63VhAUqJIGji+K5HAPUYbOTGNjVxyhxqmgCtaZpmGc7aedp
YbuV3cM2Vg11Xro58KFrfJ6Cfs5kMt2maBYWr8jXV8O43g3fPhWPzCRWMn91k5vmEg8dVTgo5ugu
3twNR/kakP9vN43rp9gexXHVgFq1ti/n4lYqWvK5yeBDoX9S3hS7R4s2fcgLaUCz0nzuJHsCn2iD
IRib8HW6l49aZYSaZQNMncckn8HFujHBEhXxTjhOMX48i1+bhKiXQ12/yvd7JlFZQfBDTlcFY3UN
Rbv+zYD1/F44/1JbziwhXbmV+oZFIxkIzGP5TmOZDx17YE+EBLHcpZXpL8ug7ZTfyFyQf8nrkWXv
iOMErUztNcy8MhCezesGF0GjmB9oDFVeyQGj6Tdby2e0/r9TpDexa1dVAuhnKQL83LWAIlNcsZ2g
vpvXEsMwn3RTKp3PGyex0/Idzv6pD/eZrKRxk12ivI4107uLMr1k4ayYDwuFS1FIFXJbPra9YdrO
aaOe7FqiidyarxCvg91z8ZDLhW8lWO5Hb7sTcwsQUecR0SGZjxM89IMlGpoIfAH1bZG3I3aI4HNC
ozvvaYLr9Q3jbn9aCkThiru1eHMFTQe7LI/6r3INtRkVHBmPXKi0HhEKYWQoCCmmKgbNoVtVctkY
dFRNAOVocK87kbmxOIOAWX7g84VI1uxxee2jl0xkvUUDJJzCLS+i7JGOHhSIMQ6v0u1oZmxeCwsk
ImdNTlMTXKSv1+ZAT6Ba7fKzctM3F26hNbJXCqKDXnygAMSfvan5igDi5No87pzdKuKM6WBE5ArN
BYBVpBKDNyOx36CQ5gdFNB6VSIUypGQ2xU4tnFLoGcrIAn+Is/L+X+/JZwHFAZFHowA8juc8dvRY
rdRcpBk/lXvikOuXH4c+4+wYl4vvfee5Lzg7eXB4xemQyexBqSLp/W1Z9jfnLS5Bf5jGFdjeAXC0
VIBiaVLurRiJ91gJBYB0tlAc2Y2ILKmAKrB7vXVooJfHAFOpy1VFwGSykXWzIQcYuzjq1eppgJWb
ChOBxI/YnTSYv42d/UNPe67k1gjwUKWDelcKT5Itf9+apwnPjIgS6/pTFKLbGdYcV67VMavsyPQH
oKCpHFdMR8MYD47HcyUxwrqzNcB+BiYFVIW+E+G1sG+aMq4/SpBp+sVZ/Hl9GWf/+RiuvGqaJr7r
13WyaqrQKoSQTKr80rhxPy8dXqSIJ+24qJc8xFzoSLS5EF5yp2IBnv7YwwtkT+dUlIkHyLyVtCOy
Jy0hayXJafmcmMnu3g1zb/sT4o0RRVw8OHkZsxeKPC/bSOGCdIaOzl8K0tsYa23+jiKcb9q3PS4+
GTJz6MpyFEQ/GUW+gnlKEKztcaVK+1utfqEzuiGxW7NFDIu/Mv2YiEJJXZlxZ/r7qBtbf/baaIV2
BK2/EFi3jbOd2FHAuRi0ogzxkXRAcVkCuY40fManQCLypw25cQRqvpP65wnyKYFvLui3z9p3ixjD
WY7UE3k9Qz3xCYi0eszs1OJkFH5FPVIHpdkUdu5D/ohxPvPBHCrErBhiE3S1dFLDj4U6R31sOCKe
HzKZndoaGbR/3ahzNn1bxtwo2vUEtmfsQLuss1nIAy4qHo8EhY8Yn3FPrxngC/CPX5u3FNf8usK6
NwI/FW+OhYpVzEQBkmNHBLe7cRAqBgkmI9XPZtlQ21i6jr/rBUBgZoq/Umeg+/oLw0bN8/mIJ8uH
wcx6uBdWFFbIYCRgra3g38LXD1+EHnLLi5Ug4rqhziQyVeNx+3JG2bc/RUJL0DDgxAg3VdEFde7Y
e8/+llTIxXZ1X9FHucucMIUk5lU+2E3eG6TveqkTsvyG3NEwVd0Uy4yNPLYddbIVAVEfajujjn6W
fdMNbG53Vh3cnWmROYqjhKLsmdN1+oGMXwgmc+f9plx/q2wtOBGmnF0RXeFkGUdUH+jJnYiHkkdF
nv7Ex0/7LxEM5NqYh8iCEk2+cLDlJpNOS2eB/Yra0JQpP0ATcwslJD7yaW5a/qw5ojKH6zOO2Adi
TJsAvT8OczzWhZ9r82tYj20ry+SZFAP6Syj7bbc8IMy0R5I407B9eodDEaKMNUyJCqXJ+UzGOMCf
j7J2Zrcl9Xj3vvphv/T+yv3Hmd9KXMHxSgatXdpfkgmb/W4m0ze5nDLzAYZwfBI9QHGmCtOwkP4c
fTUqyu5vCrRdGxrTcFtr6zfpjYRGwMuYcVdjPRQQvAeDEUvwzTSjCLcJI1qjKQxUOqgKGZAm3yOn
u2O4A9u0s+22OcY3T2m4P1IqnLoq6nN9i53AS72TEaS3pZtFFTqA1lx6+oITXV85T8rjwy1DfaOe
YeGTNNGHh1whlg0HQ1nK5y9JgW+Nu8+0MNkJlkPgTLCu3/s8Dyk/m7HkaCXo0iOB+MIMUAahirBc
LXvvoQD03sZWChyHOsapV1OJC18TyPyFLdV0Wt9kYwn8/lZ/uGEguICOnxp9bofAZIPb14Lnm5Xu
tae3PDFT5nfTYY8w9t9O0KOXBuFRski+1OAPQzpCUn2zkqbwj4huJERYntuQ4za50So57tLQFep8
kp2x3B5t1VlWnymCkz0p1rYqG8YBUmkJ2IEC9m6tePPlcPHVwFyqueZ+IMixivsoLKuBCh+7yDQO
OnUrkPARXiKoTYtv1YZBjJMzgs759iDifkgXwOYrii1lAoM2WcvKFO0Q0xLPRX4/9TdpJfT8MUTP
M86t50FhBuVdx6dvf+oVFQbOWbQh+37tzmLFj4DIOU+WVC4RoAea+ljcs+9u57t7e/4xSWsQgNvJ
uyLgmh0CTk3AkH79WbRLI4yIWEOJz14k3dzkWgebacfL6vRKonZUNthyeCSrzhbEC7M5lXdV0J6P
VZ5hBssPpS4lsWENRVZnkbj1zYj3gojeDFBsu5Nl4nEeyCKSm1KKZVxaIrRaqb+HgqJXzZ+DqqVm
02Qq+yqIsNG/Qg3vhoiwEjNYsbGL2i/Lkq90oOdv4gdnypMLU/O64FUJDEA+oeIwiG/wHoVLo4uA
3MC4U0Dg9NOrQQJ5pM1hbPKXg4CVyt/HUitBgGr3h0JRQGqx1ejDaLpsH07WH5kalmkc4XirHoZJ
m4WMuoFK73nd5A/zAsMH2DTH+LxwwQSNCJu0czED5pkP9bBMnnB5j0xT87srMcwpWWG8L//ALfWs
eyX4SMmxowr/ydoTkmN9CW+mHtLiF7IPW4Rk16x9jiderFY5xOuw2nicEOAFBRg/rb2FiVepQuNG
MWtFDGGjCy9QkIIFeelw3hAwCU9vrMWhQKI8sZbsUK2cpZsxVhHaL4IVw8nywRKy1xAcKB22pwMa
Rbt5WT24pqH2ucIpCFagm8AnbKudSx7Ca+lTni0vMufXgLSpD1PoEyCoMvtKjSeW+HVWrWKjQeGC
UiD0xzaOD9O4q7RqkbW6Y5H3tmlJ8Qd0Xj8jT4pgAQJK+wnYl9nxfRS/GbujuxhJxdWbpNcEyvP1
KQr60q7GsRpDD+sUORtC3SSTMUxHe9PnfNsyh3RfMz5KIdUiZM0OI7BO1auWTo9lvW3Ll9IE7eI2
txc0GCIVl/OB1P6q+mRzlfY4mTu04cRlhVwteThKJ901+bQTBvEGH12dqw8Nl9wbJn+AYYBI8Avs
qLoqm7mJUgp5R9fIxj63aZ64k7O7kc18sE0+TVE/Ogm6T9QGrjHx6nbxlQUEvu6uuPwss/HiWDuT
eolvdu8R57K6+sjJODr64zTAI27MjfldoL9tuw2Aye1QL4JIF3ZHowpUt8UGE95SYYW6tnInaxe2
AROY9xsQHLN25B+oc3NgcoJL3+n0JPGH/G8UYtvw+fOUec68cCNuoxFPBuo/XhpzrnroUZtrGvcE
E2vdJ0LYtBunIPuVRspOmKOnheODHbOyMVaojzTVL8bHiCW5WkjuAUPx9+ni7sz99kq/1jDkVjt1
R0888Wk2CavwP7ew8UKMuc2KT2elFRarTC94M3Wjt5gUMGLxtJxzeMx11lEK2+AbmGG+nTpwldrb
dITo+lDlAFqhD1t0bf/DiZRYB4erOYGIdfgaedC2GrT6Ue2b+j3P55HqEThuOJ1UWIBWX0JMCS/R
Bmhjeu0T5WFLju5PTzaD4Y5itz81CECOUit8wmjT/slUATIPnjISwG3J/CBya6EYxL8XvOdp52kk
CtemoJx1qflo5jzvvgDFbbkZIv44GpUKTg3nKIgC7YBZ8SP12hLg2HuICqVogDhVGJWlb1hZklUz
940m4ry+JbiSL/5wmq6YNeHm2Q9Vn+TnULXnKmWgNErUP+nbUrWipvXSNr5iv6nqU9UVtAUxhbaW
qRAVb9LB6ruvHOA7imB/6zT3uxuXrS0jKO62lHGMVmqreq6RMo7NDN7qnyZ4XZezhvUqJTaNobm5
xBJkDrydi5l0dZEJnZ7C+tM4Oiw4gjTd/anJYGfDWA1DBNiA1lNZvfBZhfOhl8B/AkfVtTfiY66N
Ya6kDnRvwiK7OtsuKKHpdIKm634xqyaWTrF73wLvdIxxMVFMw4dPP+5cgAKVrUan4W6zOJ11wxGI
TdIKhFb3RD86b1qDnRfe52wU+qjGaGGSG63mPQg4616ctZHAcC8gouHoGUA1Q/ThSM/R4xAy4xP0
4N6UScBizYmscbB2Ziii//8eMz5pFcskWcJ990BZSm91EWezXtfhwq2rkeKM17EDTosL82DDlKYW
o5BwiAwfU9jlmc5/UTfXWna61509BAWE02ZLZlgoIG4fKQA4YasGpVr1Qr1Nw3GdYfAGnxe+27Bi
kAlkGl33NkBwY/LabdIaL/vy015GhGPas+WEmloA8uYGtKQjOy08SuNiK8dcgygEErx6YUIpI7lR
wWr9T2oU0KcW9XsJWuvvAz/yGSJ/IsP3O3VwHEpnJ9l2EvnxsG+FLArN+ZFYvm+e1ivn7b3CPUaX
FCZUcG2T5QGAKrTOp9PJ90WZM+lqV5V59rQUd9NiVnEOlWsbu9vpjrre4i2BFUId4e70tNNBshJ5
3b9YI1YTNwUGjNO1+tM9VgdJfYTVKKFmpQiAvJBzeu9+Yr7GsrTZqPvHGV6BPq4XIAl1xB9pHZh5
cwMD7hCRV3xMBijNi1/GlC54tPzQtIlinqvNGEL4lEB9/jV7TUNVRLHjbD8rRQdqgMnpSTdOsmUA
7kvqOYpuHOuF21ouWxThnIIzIycA8peWGiLTWLgZ+76BO7Q7GoIrPkwJCNlhoK/d/vWHa25OK/kf
037uho4I8f97/ieXAkwnysphXjM9f/t1RP0FO4NK5vXUU5KGp63i85g7oZ9QXgm9AfGUSyAca7/+
MxmEchIb3we4aQdy94nx+5mdjW/ByMYLIPYulSp4PwZ2ynld8e6ruSfl5BqeAzvHwEIqZ+cQt0zX
jWNOlDmrnwyXp/WmyRAz7AANFyoz7fresEYr7pduCQB3OEfQrujIS6qiaYcneOwDQHLVZWitvN3d
9SWkOgm5O+6ADWyaaQAJ4D02sPLlUZK81iXDMJEXts2b79KKzaBotjmwCjwqrFRkF9EfmrHBmKDa
LsPq4zkWE7YC141VJGXFyc1MczR83S7JvjAkNsdKTTjp9aUK5Q3ws9yHGKoaF/7udR4KRVOkBAIa
8w/t4Pbz39c+xSFOTpHmKTweqpb625rhAoSHSASmOSTKo9XvDX7+a4uhHcEZY8/3N3t0METP9ezE
4UBSgysaT6ct/C0qxyMv+i+SBJEmxdug0Xd/mt8kZPM+8QeRV44uUuu4EYBkeatD7nHjLkPKMReQ
qnLk3TmeXFsmATktpuhMQz4QnnFH7lxkFqXNbVCKaXQoL4ueY/c6d68KQK8RHsZ2wo2WYRuzgdux
+Vs9L0UNNZdzp2iko178NJnffdikZ0CZX9INoneGxvf2gybWaVQqqBpMYrKHco3TnKEdOQ4P0B01
tALc/Ti2px1E2RqYQIJVHHSCRG6gZ+bApqUstDnXGfKMUQOnJIQcGvhtfQjFv9gnCcGxfjMuwMR/
m1gmeNVZSHuufTxVJMIn6CS62OoENFQGddcks4UNMuf8l36cYwvSCXtQ8QyZkkVg7uez2tfGGB/M
PY+bRgFuB221PHqN1vXRhzXPZPZo1KE05h2x/UEDA3v4hOfLg2rsiLdg4UkSuaLFaRzjQs/mzesE
oviOL/JLnE1nskpWOK0UbCvOfL12VlrqB/CfUzHg8yRe+iiVlzdf83+A9p55OHeXuBNp9vEUSO0M
3h5MeYZPP4a+vENafRh551k4vBuQ43t2Xn5u/1QNJUcz/KbpVgKI2urBThSM+6M/p8RHOamKyi+N
lUE93W/BccRhooqiCdhZzzEdEM4PQmkPGPS7YksuixGo5NSLi3ZUzb44ducnzdKKXVYrPxpHlz+v
n4uMsM+Qij/Q//khWPWBzmfWZYP8z0TL2GFpj4cpHtRraHSEEjmxmuwP1PTkYxbe3XIhJNGdbkQU
rDPTIpMaBPQxg/5QiBefLdvHf7ht0cr4R5mkKgg8gNbmLvcrYxNjvGklI2mjnBOr0A1UALAtIDaV
qPbUuM5beSx8p/qSrKa/29BP4027TOqsfsHj0No/K8o5ws1eWj6pU765+5xwGgi9wWTV2eyNf+nF
2ghmLISzGXoTukqmTV5lABkMgZ7MM8Q76oEOChSYI5rz0PW0jbSgMc4ftJZZkY08emS66vZPx1g1
Z+xwsNOH0IlNQAQUY/+ofJBn527aNaWq6Jm/U8iIviyI4tFJIDFQzUgzk2ziI50B6linGXMuZ5rK
kZAR5/atTF5QGgPAG8SumO2ClbuZFmn5MfTvxmamXTbVFdSoLlj68285gEVKt2PEEAmIaHPsxh2o
ErS1fPAoOmFeoN+iL3sSehJvWphgAfCvGjRMIruty4CF8ZzvFfThGYBE+G74H5ifFUw02bDmvqPr
inNgEj1yOoRqgOSEfMtyZEFV/azM6g+5T/PyBQ+NUJ12ikqflw+ZPqRHlFWaBajceYUfza+vbwNE
dbP4ltbqpL7gBF7TULLeMjx60C2T9PbZTyEidQXO3qBSM+iyybI8tCd/jpO5RD0Q2OKIPQBMhk8d
g+HIsI+ImjW3gzHs0fYOsnJRq+RVJYcFew51QC7gaDnUWx1veu70MZ6H/xh2cvQXv+fLFvw475ws
Cu9VGZTfPp/N8lbLj29ZG27M0Q4F7rDBwKaUnUQYJAwgCutoJe0X+yHvCojLfG9kMKLGzK4LcWFn
EgzZKGZdhyEizRe8THAl1ihCPDSvtD5eFK4C/jIvwgbvFeJAzQ97pFZo2PVN5dVtZUCo/3EKnnwF
+uT0+d07xPZ8LSfX2Zir0+3shuk/2YbsNJcnAfjC6+fFVjwrAacWYNj3oUQq/ig6PJp83lNkFltY
Q226onEb5V5uFxu1tDL/pVsf3NE7JfA2huoKWaOF1eu9CEkdw+6v8K5yFotZcZm8UuQEnOC87Nrb
j45FW3RHT5B9UCWwWzDBuC/SALrM0f8Rb5SqkDHH7HnRpVi0S2a40KJgVvuQoVC95DwTCw/jakVJ
EwbtVhkVQG/ZDMnf1RFnnHEiuiCO5FhRVHuZVhVyHZmG5HctohbZR1g6c0DUGe/+sCO5IuXtnyNm
vvAjfJvU+Q9ydXsF9eIgaU4y5Y7jHFrMRPyJPOykstQ5gKw34UpP7RiVEqg672vklE+TfEYCn4+G
RNXEjq9lb4DUrJzlYQOrYhJ39gJo2sBWGZHouSIsLZbD/WTyfVrUItQOl37hA8waw293iGIIdoOm
BL4oqMwXIBLWPwaoGKNT+Gcw/YVEIZnQx0DfI2tUOJaxsQxcr4QwguZChYDew/0w2FUgWmDG3GNf
sgbb0z12k/csYqBpqbjOfeCpe/549yLok4m2oroqzp7eVcI4qoyIt5RL8IK4C+YiZciSj8ZH88SZ
8pyKjXgUtOaJbDdjk4H1hmVjuLsZljd8NSF0PlyacYyjT4upaxWYwn5obbj39F22ew7wnjAHkhMo
PEEMCJl5smE1TitflEbQJBPqmVbHQ1eJJGABGj5H4gAlQn8WWj16ocPphZqT2K4R/vgsVVQTpQtu
c+PC03HpqsgG2/P6IxDq01wVR6hpRfjaXZOjRjh9kVz+4cbSgcXd57LyiN4Sa/fEGCZZiv5GqZuE
q1CmXYBlV+zCz6RQ7W6cf43jSK7ZI6Loz+QNX2htFYPePshL756V5bOiqJuXzWA/2i1DKuKbuhf0
sJUfi6lCGejZBBK4P5CxrD3c/zYLFNrXoTDUY54PMKSy5saN4U4plmg6T50jILAMH/dPSWKEqmKe
0jdkjJZzZVSS4AcCTCqvwJOAjLPR7WTh2QA1YiRLaQwEPlk2pydZ3NpxwoHzZzr8pCeX5Dxrm5pU
Ene2R1+fZ5kZMp4Oisp7J0DJCN5YcNO1VmkkEqH6JKSw/Nl1X+O1mf8KEtA8HrBvEc6SdeU3129o
OGv4KB61SEZ7cIjmps8l91PCCPdDIi1KxKf+ob6AL1f9t3N7iBUtdlDQ+DT/eARMiYgxIUi8pgn/
Alr8567kaO4AzSf3VOVLmHzdrSAiq4IgvT+M5AaqqWiehS4+qwdSQrkId7PZqtsC1NkEtW2/p9Pr
G/SEnolbHkNDaHTkz4pVGI91gRdQGaeLmi85O5xFgZgkklJ2rGBMVY3iqP3tDIfn7xRWWrkNaRX7
DbnR+k2p/Trp6ZOyzTZJeJxzRf5CuvHehSyndyBsEE3TIN+5h5HYr5NhE2S16IymjJEzxbD/3X38
q/i2vpqnZs/YOl3NvXn/4nazFKGtySDm0K7YzijKzkIcAkTx4E3ptXnIqMl7mNnbcwRNaZwW3LU4
UuoOSol6IUm7xyHyu2a0oq3HZvVT2xchl6+Hxw9B77UoYRSTSxwUDldxiQe5CeR5jkXeRmONrW9g
BoTZFu4Qs0xKlEJD7o54/wCH18OgHvEtogOSuwA8dEPqGM3fO/3HmLCDuYoUU8IhxV2ntwy3sqHy
EkTJLSQvcqMCeTeZsXXKMqkIqt3X0LWjQQIPedzoBp/39pC9xRjh9QFlZdWjMVP1O93v/ZAm5H4z
43UaaCf80XdgL++mGtJ4y0No8dDX4ukRJCHJNDtG6Q2DM7NoGl6PxuPWtNSdm5hDnyT/5gY54gCY
2M9qz8EPUfsWYq84gM7lXao2l/BGHzea2daP/OvjWIHRTyQXVA8Bo6b4DY0gi7pcxIzGoLYuJKHP
WQsSh5gufXVvz8WLamruANt+b67lu4/tKMGHoXcKxaEWrmU0iTDyhXyghznshf2cZbMZJshNQpeG
Rg7PJcZqMegq85puNp8asXKiAjC5pMO1TnYUC9skDXLfl7sRJKA+27q3wW96wMdxLIfWI3lJeXgs
hcxftFb57xwVxCUbDq5J/lQEadTn8dd3Dbey0L5v5qm+IACmKZFlg0b+3zbDuGzv2uOs1s1qu3gY
Q+pCOZmVZMxBy6GsEJc+FI8oyGveUIzXLkWonv/JoIZ2smoHjuzAjU+azQmmJR9nRtCFt9gFjOUK
UXgIBb888qeeGDUjN1paQ6l5rQmdbCot70kxCeAe0myWC47z3IzoJfw2cxQRxfl3PN8uSbMSpoqV
tIJH7MoTCu54aVtRcPQdJlSCAbQ5sltQIdplpZFg3oviG1vPBYNrz5/eripbg98pZf7JqxxF/l3V
znQ0i6qXaynzF7eYqiJKbdRqXsXBjlio0d35iAjzqkX+irLHzj5hFsKZm+L5XAvJsOWyUTnVizXu
pEjnSjS8qckcHUiHOiOlCdCjLnZbIN3Rb8p3KLFIYVFEh33hpvTUwpPyxBKZs4iGhCwpw/JaFcPS
GRNPDnaC35BkMHJZfn6D1gm9IuO3ZSLjDk1sNfYwdqUwMPrkV2UKYTMBIZCWRh0mN/vh0NjvOWgR
DgwCUQXb4Fgp1WI0813uRS7/EmvaUMvNQKfaz/YBXw3Rcv3sQ6u2Lg8Qsf3HslUl0qg8xonto0Bx
MdUII/DBQ6cSIh45BeL5JTMmbAHBIY1FYOwbj2iJWZ4jiHOPAOKQtOFi42nkiVQ15pCPAiQgyNsL
pnGQnTXvkGoSTnBoJMVThqLMbbURyB5mjxyX3yLq5CGSJz+D0tODKCYjCoFwF8Hqq9MfgZGVMjyk
ElunFy06dM32WHvZk2Xc6HeHOkh8VjqI92P2nTwgp7YRcNpHT76dFBbwXrvB22lvbTnwA6aaQrjf
Sp25GjZqL+d9OKRT9xMojjqVTKRUd687SfNUDky5uToqsStpne9kQclUKf1IT8e2SAujbio0knCN
x5rnJiFZdsLZBIHmLhi4t3ZJktrsvUS7cIoPLzrAx20aD+nEbmzFxF84Ho95fU9VR54EuaDvbEYj
zX+mf2F7QXHu0BkE/naHZba0KVEdZvfOQ5Vw52AMXedN7JbdI9vlYwVZCKxD6QzzNY/ymX7ft3WF
4YAFDTBoWtuo4BcCBYpddUyVaqccqn9YqdAz1735tVDt4/w5XGq82dE5kfxX497Trgc3ofxd1+5c
U9mH0d4t8fJmoGvoMYp7zoEv7oUi0NyoX+AaxO9M5Bzocg0fUAQrg3WG1y4TxZ1F1g5od4VWlI/Y
Z3Ku0MBO928HFFTvNfTdq/RGJkcsIPu8XiEOCHhvgMx1SiUzbAMYnnSbrEvicsZdSx93fkW4eQ+O
eINs5GS4luUcYHvZyulD10vwfgKq4zoj0t/3Jp1bad/oG6k8hgYmhZNJHRw860HiOOMNYoML7WXz
SqfBjfdpMHGkylLt1guB49/phw1kHPRSw/3aoZ7Y3VtLvgQAiIEOsh8qFrbQj5Y7S6hcpd/6FOZL
OlCfWoEjPJ/sdij2LtiRjr9DT9dbT7je5IdkdMOru/89G9/oHbI3vP147cNrBG+6CYSOHWMxNzc0
02dK9lNknCa+Jfyd9so8y9hPaAgZRJIlw2i4mSGTa1GmCfbxIWOU9IJbZZ2njMf15k6SC6SkvTPv
e0xwdJVOUinTgIGX8frcTRfio34YU5jC+v+PD+dJLH4/o4DlwqjR9VF2LR2YykBmdbLFW9Tz+ZsX
6qNQzxQQ9gsw8ZK3gtB47LX5AUQp/wiMQPkaJ3BSUmco3Med+FGohUiJGo86HL7XAvYYPsqDuHdg
/wfdSsel0tZm4yM5hmKa9yiLmEXJf8xv06XU1pSyaxrYxrwhX4rp3KiQOO6HRzR2jAt3SHiPKund
vh2evTWIAnxXMyFIw00snfm5CEeevFT5eEWGX85UKW75yYnhHRqtDurgvusqIKH22d8wlUlP8UTq
HQkstBFUuHwfpxC4U6+p/92krS2OSvvam+YRzOyUxpcwZdn0YJafqMDY6Ea2zOTm2FP4HUezHYfd
73BdwrpkDFqJVxKNMdgui8eIhKCkrBCk16Xe3EjV0iVtv8SDpAakXrqaJu58OsOJxQCaScPU2g0o
DdYgBlCnw6VBxI1yVkLDQnHr3rq5YsvHLH0zS65rvl0R5Bx7a+jU83s4nkpd/kuJdEN1Ip0wXlzA
GCgMcOdskuSAUAGTKuypaJNyGRaO5QEnqtd2Vph2gjgfEWwwKKLEEoRrnhpGb6+YPl4HzcW/S4rz
3aDYbAzgkG+lvdMJGLCDRKfQiul+K26DrAN/F1wh8KjfXq+qT08zbom+nWUZzfM3tRaqpdObpyNc
pa7mqJK+2Tr0pH6M5w5RLim9fWa/7iEwjw34TsfIjBLWNmKdPblbHAL8pDYNA3mVX8bj/4/VXePu
udeUUsEXBXjtG0KO3nLUQM8TS1kqhKnz0jI5KUyUzG8FZs9XSGQoRWKdTE12ena8sNloc8YHNJa3
Sp2AkgruMOpdL9bavo56jKXAaNr4PjF9y64q5I8zOsxV/E+4ARBtUEor+P0Cs6nOaVPzsnKyLAon
y+h2wlO3IJT2+3af7dfVRnZyaAbwNERcjCjgvkh0ixeaEOwHJ/7yk83n4eJHuOyPzDXQe8dhbgTG
1wNQ3m1UP39y8H93zBMvBAwiWM2tQjbLXzg+NP+kr4QMKWe9n4K19yuWQgBiKfscRXMgECRR0HIc
MJBoiWt7uHerKMdxRSoxLx9gkd+k3PycoEmCUrEK1iSrZA/XFRZWivZ2+a9V+v/uzgP7jzNRqox4
6SMUEmbNYpbWRQ3Up2Dt59fPWpxsHC5GOLCatuFsoeYxc1Q8nuYfzxr4AjigeB5rtHk8t8WagpG5
djwmqkOvpTWpKVgYXOp/VmZac8erVC/gg8KrKBginFT9PJn9MkTEJbFFCx4ByNd6/BcCe5dMWWV9
S5n7O1DKzRXDzU45OPiJSVRxWBT042wIVG3V5X9pJJePt06jy19uovTk1Zsi8Y/REqehNqFwmqZW
rO6ONzDc6vWM7jbjrFZS7msRf9ZW+3iTwNGWHdllXvNz5+DjSoHmeiuHwQ+cI+2i/zQAH59YfzsI
rsR09Ssq42IrcZB3B2XwVzN+MH4bvFw0cqVG9WfwNYxR1oY7CBccLa3PQF4P+ZXnoISLYZVFibCm
J+0tbnF5OZ3s7+nzjw8TfYP3a7Dk5HPg9zV+7SpUBj+ES0EeHbvg3WsyjtQ9m51yO6zl5qLB4aB3
6+0mv3hVunmEUvoujSMe1gqNLkpFyHsE79I+/dYHKpCxvDMN2W4YQZlqocvgoU/xq3LyD4y60KlL
vUYRWrZXhxjH9ehFdCSJhA0pnajhb+jvXCXOJkciwLgfyjacjOc+vuKuB4Br+lkCHtCvR1l38+pv
YXPaG7nHxqtPNC/i/77E1i8XjA7twQbJXmsz9AWU1WxDbJLl8roEXEvO0JjpQByAS9r4okRsMOdg
63s7FZQEw5dx95lQqkI5r57LcgpL7wZgmrtfgZTk8Wu3a7SHZpSrSZG5NMSHWqHclVCzAud87Dh8
b6SD3Cub3DsU4tTHO58LWRAZfO7DwIfhf2TmMXP/3SAtHmXvITkHKeqKI4wZckXOR3Qu53bjaU9q
zi1B9uUGoqOEep2NQGP8OdMxkNoVSRHHLuQMZlExuB+7Rwz1lU0QXeLii/A3Yn5QhVsYwGM7C3pE
UvuGP0Jh59CufsyVi3GrnvmQ+2T/p/KgY1mpDCjtUlwmKxEm9hJYY8xhzV2IEx+rTJMIwoB+sSoV
FVunx2IrsVOEZhGZuVI3auI8nSLLvVELQBLUZtOKz7lNL3PX/NKfmRnNg1Y3Dwjc6+a0swHfG/xJ
XbLA9tJE0sw82jiq41uzfpZKruP0kd+vxcoNMd8ghuKm8fJ5+WXbMR6bRghnjKIlBZ58PlF/90eg
0qL+lwuq0lMamp+33qG3a+jkGtOz6VNvVcUYnygSECd/zcw/jAgrEsgasZk9lx1B7QP4l56/iRS+
mEnYZ8/sAf7MwHC6vIPQBKC82SPZmV1ir4mMWXyMyZT3/TCj2BmU1DVagMufwj4krI2vchSiTnP7
tuvwkV0m6lhH4fwpZ7+MbI3/55waW08isTlrB1siZcDoa3AZOeL+ixk4ngXrnb/JpFUOgs2Mutyu
Lf0C/o5vbTddL8YZsg3fpkwuTRLyfGDKQHkSYWhclaTHRMa9l4GXILjG5GOdhSoZMmr49SCzkMEs
OnyFpqduSYzHcVnsKpsma4JXCj5OncamotX8ab8XS8m3mQp/wxuNIxNWWSSSEVPE3iFiu1XOphvm
P6Gs99gxtSA1fIaLc4cO3WItMwOq9sCeY90UNLW0tKdpPV2HIQZ3skUVLmxZjpmODpR5EFepaBDi
bPaa6RCTyuid/DwmAfK3fAFqeBZ/r4FzEF1ycqezcY2DsQa5dsKdFwOcIHIoUB0MRcN8F9lYvTOu
KXrlUfajuJLv95yeggUaJEDsclTYeiFlmCr45gxMfwZ95MxtWH5QhCcMYuvd0ElfIXexT3ZnsIvH
UA0aQMu1LbZIZRS5WTf7sLOmo8ZKjMkw5wMpHck70evXXHOPcFUQBuN38vuSYQdH7WcdH/fZXl/y
p4O5cOewF9pyih94HitjQMlkTA2jKeiCYQHMGITmqxmb50ldrXhB4sL2tWxzTQEIiLWNY3HMXcXX
U7hL6a1CwYR59Ax1qq3EYbfvoaqUfqv5kcSWVu37Opl+EtX3RJ7RKaQbiWiv+2dHThUDz51SJN0H
4NuzW7/ISmtKR+sQ6SuIOBQu4y3XcrXq+kdxPcRjJXMWeF3qPJ4R5g/rb5pSlc62qaKoIkievo0V
xX2nDuryRHE3b7aUbRtgSpLOofDsqEkm20dmU7mP4oKQTtE98rFZXJv8u3GAHbMgnQUYKn1XrzvG
vIBjlzbtGHUkCFR0ol5EtWyubgxOd6LH7JJfNbv+lzCBX9Gqbf1zg0FDmZYZHo97d9mx1eZNxV8C
LGzSVMT9DVFAvKnntSIrS8LJGhv2Kl7VJ0xbJLLc35rgebJLIuIyJocPCtmz9187aHd/9rv6J6b2
gu+3GqSJESUtKwJn7clmQQSkHBm46RVKWwr5NZTD7AFFFlNQ47CEuTOKQFp6JoUDt9fD7NKG7z9U
dxDsQXKyr98k7IZ6qZfyMyu0aZf6i2Vo2oQEFI1qRe+TVdG1EzHHJaPrP2QyWxmGrLN+AlII/3ql
QjvU8yLnZff3GLxWsN/LcxPx+qP6qpmKAfUGHS2v7EawRIK6feaLlCGpvB4Xvv4gMhAheaovu45x
/nXXXkuuYr68HKwkKjMZ+jlwA/VtX31XzImf4SysGhRf4CTlGfsufQJ1Avhyr0TR/QQXWS9k3WeL
4x81oq0lxZTqmXF5nWYxtDW1pPQ4EXDnAtwQ/gFN3oemE+lhmrVv8XQ7TU3QnSooYsssgs6bmC/4
3LQ8/prhq+U0fmLsJkmFLDZFr+qpTT4vGAin6+1cYGi+V1LUvUgCdS6cFLjlY4Z0LWA1EXKYGzPV
FG9Ru706WgFzp5WCk/Vd/Iiz04OfAS9MeXhoLY5cqC5mpyIm5Hw3PSETUjmsvaxjGyue1Cz9dtcZ
Fo3lP9lHQYTZsUcX5nh1pHTx+cf7OvDcDeQKemKXOVed/o2748gB6b7vFPPZFKvH9AtxskE9Axzr
KqfBKTAkSBgWQ/qaK4OwKZFKtH4LQ8xRV8kQGHev6m28SRzIIKk2PT8T+QpNydrdkUYByR+1BkyG
P/VyWhziuIOfPxUui44BgUvvY6l5jTGuiQ/CObP6l4QVhIIS4cgzdohRz1HKH6qYlxpFihKExxxT
DMYLOaMJbSMvBPjyiQ3ivN1+dNPf5x6DvbRhCwCNaByCySQES+BTmgmK6zdEuff94cle7Dw629ks
PUgoY548Z8iHIBQ4i7wyFPDCuKKHWGDPz0bWDK0k60OUOYm+eOcYHDn+e9BAUsIPpv6YcFKwiGhQ
UOEma8rKzmSldCiXLGf+jZC7KqcdIcqgE/HhVrSf5El7NP6MSZRAT7GHyABfAZbmomnNgg3fvdsB
s2SVz0YIIK57PxuAlkUXiNa2LCCGzyo51w951Ui/M63rQ3osZOc7V2XrQk28j8PZIuIpp22chZhk
98k1bzxkS1vsNiIq6e/kI7f86DMsmmFxZFwlHgXZ8X7VpEbzA2IklmP1dTfsmmVR20v+les5RVAO
TkF/pQZMzRYaBMNwQMsmcJuPO621uRvkKBpnw31Db9YxuuwceZj2dnq+uV8mIKFrpaPkrqMv/mKz
uq5AwqOFoZNm7uhMEzBXsxVo3ITBzm04q4UBbSkEA58tblSFR/dAoxBVa4brZhgJCFohgLzji+3Y
azcfgXceF/2yyS7i54my7253zimw9ZedMAS2fN5oN/cWztcUViZUae8uToxKBJwIKgCazrTu3cHk
z5B4C8ydxJBVvPpimjv9xqmamKbss78AorK4q4XTHAIRMSMCcm3rYpZ5prxfRye1DHb+ik3MwvZJ
mN/Lb+WIpI+pQjbvwPtgtqQcYAcbpZNOF8a9MAO6zKQ7O0tMA6L7BKJgwg4U7HnBIfb3Rq82PG5u
0BVtZ+WFy3BrtYZqr7pdpLd6MvVt5kWhR2r7CAFGC7nOqI3oD4LUIwU1oA0ZNI6pO8k6/9q8M9zd
ljtHE7XLfRqk48A0thkTsrrCwV6Cd7uxhX0VDo2YzUq7vw2rWD5aYmr11Ftq6PysQSQojLjbGjA4
8ORevNTA9fVRqyAqKmt64tZESTez5clWDNRCzpxDjPT0/aqGmhOsC6Eu8Bor1LcOrdl4f0ZKcG/P
9kctnVV8cJvvTKXZv/K4VAV+8lBy88rzLIaPwUJjhjXmPH7OANzXkyLUEjqDd921gdcyoTOA8Hjm
SdBwKhPsLQwMYLQxlFUA2wpan2V/Z7bY/3UXJxWDE4pzAZQ4O7HUbsqjaEgv1uqTSqixpR+2Q4cB
2dw4rt2Dv+AtubajMZ0Rsu8tp16p1gHKORornMK8/v1TkxRMHL0Cw2SgN5wtX8rYVW9LMICKVzAS
KyOlDt16SxiGY/iLYwbt0xLoit/nkAugs+pN27LobWEhKrNImOOhD+u+kS6bnIFdqv+jajQ26bw+
JZBHawMMP1QmgLjbdHUgtZMaNDVIaVxAKK6k7C6FHOZq+lCsm9IaV+V7nILqH7MCFdAtkOhSXETM
Imj2zcBvF/nNGXtECxnT4ZJIBWGFx0S9aFrhIY7L2jQVdYchYccMUfEPQJO2/FaXuoDnQGzkdw1R
4kLf3AwIX8EkBHi9zrc8O2JM4Fm3rBs251msa5onYZ7l+GptHsv28HGFw6cX/PclraguClFSYxEI
5rTFyDHqcvN46CBQ/3WyeR4SyK39jnkCpBFFFvjT4mQDZbceDqMWnCKCi8GiRBKhowbQag30sSek
ezzfHwrSr1rMYbX2nMDmnb5Sj1LHFVNqt/PMXm83G23mkRBNOZX3lRKHpQhCHMYsy+aZAFBfdfLf
RhZ3OSeme+U+KQZDe/4oRpL3F2IAVEOLjtN4NAkO2VK9yYp+KA10qZYy+toKq7TCEGmZ/RweKR9C
tEvnMUGe9HYJ4BweWBScGk7CeWjfE7koQc6nYxHWMAJXxrLsmy0njKueEkDvRy+Q8ksSXCUUlTpf
0cQLeS6NS4bYdiReE2MXi6JHsuQ9F24iQVZwznENWuyPQ3qfkrDllGXgkbOzoMnRLTLbwUNOfnfz
GMnLYoxGdEJxRHTuYb6UghKd+awocH9RxCWCUnAAdcZqQ2BqPCCmuzujgwAs/XFj3KVNkZBaca3R
ZagkelByw4KnnUhs95NyD7qBT9CGhWw+BfqOXAKrXGL4erStsX7g7Rk6OdEqp1iuOwWYE/17MOXs
TxFz1Xjx0Hag4BeDL5mXSsSDvVxyHlqImgJxwf38+v3RXoGoNZEjvK0Rgxk7FNEYbQoVyvOCdkhe
nmtnuhT9e7zfkFQg461NVN8LPVn1e6Wv2qHmiiknrPVKiNUWlvssg6IxwivAS7M6kyVAtRbM2yxt
Czcs/iCZ+37ZW+4PZyZ0s34hT8AUzKYgsF2Q81I6EjMqHNs7B84Qs3JmDhoAS734kFJDAPwSWKwx
FiQP/nReILy6+qXORyb2mzGfLJ4tgxNRXn4t1vVSDyhhQwND/MYnDyhPmcYHEyBa1GVSBQrSAdc8
5GlqtPok0qL1KruMs5zTYNG97HYDuKsKwj1s99Jww1nMaxsgolsPpNsE/JJ6vmtZ46pmuiD48Kao
Yxv45kPDxWkAuIzHIuYsQJyfIJYvOgl6QVNJOULISUx46sSLzoLXTtQSMEkgSHY8FVzimmfjBTLT
zXeremsKqHA7oz5FgOlSkpaD+ahSLkQNHxs2bSTFJN9kGmExb1+7g1l5zh0d3MvzTgsxXqvaT+QU
HiW6Dg9bv9snJF4KvyrsRIrZYC5kS0k6zLRLUa+uRXB1bS8qzFePGDc5fbY2FeIMk9MWeSAbIJia
puluscKPoK1loS/5d0JF2YIINhZ0aDSoIc5oMfgTr9uNEWe7NELvW/nVmHOPbGNF7kNOCuDXcAp5
LssZy6JTlJMtkd+yGKj5Yg3fI42tcrvXn6/Ssw6rGvZ6MIQJbw6RXCSkSBnsRSsII5o1deRnsgfj
bPqWZkHILUpYLkw9U41hsxkqo6R3FkCN9Ajn0yQhdJcXb/VZ4SoPc58Cv6KbumSV5eVZQGd92VVJ
xPMp5k2fVKbrI1c6Z14sJLY/KlcK8f+v0kowAp4lPFMM4wPujXUdSNWP8n1c3DpqcopEf9Xj6GMh
XiOb+/35uQMuo8YJMwIXH3IdUMUkEHpFQnHmaj4MDrKYd2c01SRUVqcHmTnqEjpVxcrBKcOvEkZe
lm1kBf5Pl/kGY020MBUTLXDr7BTukT2WY64k5ItKWibEK4HLPNG18B28xdir9aM9ovOKu6BHpLA/
UBnZzACXcFr3jnxX24nNifwsVb/SkxF0TtXdw71acfUn/NCPc65D8kVA3WNUVhv3ZuBuLMfPGTrz
O9eiPFmQhag+cCdMmutFKWOIIFRA7HbcYb5TAQdpagvXTicAgwmtobCWNTvP779bkZFdOYvaoKJl
S7YIKNFrnnouzXKL0aefoE1jSpewz1R8635o4OZGIe4+EuM987UJJwR8Md9ac8DqIO+7miMB0j10
e83i9epK/PcNOhzdaf/Rzom5H9+PMq0TNefJOcl20HkZJI24twADKXf3HiiDOjYlDtKUQpibDdUt
wxUpk7uFnciV5jTyAmFF5HjwCBIld1GuqpL7r7Ms8iKcE/m6cRtMzdA3Cf1Xs1/QPwcydBZEm3zV
stq4VG1eGwFoUd0Xcwoi3TDKFUOiKsogIGOJExh+1s8VJMqwqlwF4qnc09AVNlx/0zHqnhlYQNjb
9q8cWs/MLJLpNKy7WXAGlk5MlaZ+OmeesRkdKLSmd+9ZQjUcgNBIkC6u01fXgLOo9Jw2XmOwpFcO
aiyK00vJEmaMd3/h7L9V30OaLeSDmPexyBRLgtpfBcXTw1hgmvsB1JSFk3llSX4uiDoJ/EGXZR1j
TKpv0yVBnEQM9jAxtHyee7pooXrR+b9cwFAet/KMhxuJ56E+fc8FqOjbrFO1IsbOXM/D5NdElp/u
feVGSKa4OB0rIgN4oBRdmewxcBlbxvU2idVa0x5e/V2L+cguo2xyqxoFR6m0udQwY625s6WRMu+2
o1B052uVIDFbo/Be+E/+EuPvZdIoH0vgG9N9v0ap6mHDzLadHSEP60LOwbDuXZpovbmmPLoCJE0O
r3FdgBrOCi9IFk/V9Dn2aUefL59x3/bAfai1o+K9JEWTdqWqiXyAN/+3ybDdOiI7kn9xiV73drPF
PRTm+3VV/9ZhH9sPHyFgq5qatok95rMHZnnkrljbMbMQlpKFj8sZF5ryBeaZ4jE3y70qT7hBwrtC
ZOQ9J0Cl2LJQiwRpV4SidAyQalXOf+DboNIASTtD5NkX7cYsb15NkB9GaMGlKxsVkveQebsQehum
BW+bCyllRWgQPUMuhY/XXOu3S3shyHLJjBEHsqUDUnxJAAyXb9XPt+BAXi1Lg0pjLS6ulBhszYpC
W0gt33btEWeOBvz2V4IVpbnb/IW0R3FG6AoAs/aAzWTGGf1cDJd13DvgLxFxtkf4WbFTRYjl3cOz
079tjgxpANyO7E742vkovNQQ/lv86K7NXji2nhN890Rd+ZWeAgYo5CXdGxRmcoVwa3s0XjwPmsTe
grwOHYm0nWpVTFVlfrj50edx+iwigK5P9OSP/BfqT8uklcN2IUNp935+eHUthXX67/qzfttmA7hi
NKnM7ivBNdZ7zqVAR+chO4v2gIYWvLvuWj8Uh90eBJyW4dHnt8EWTlyUPpVd9zosgl//j1N4cStv
irpkfk6PFJl/XRh2EXMjWy0oswqjKy4/3OmxNPklgqTWv6fST5TZNhez2EWhlnBHn8YkRj7HOlsQ
5QmPS1lT6ojAsP7KEhyEWVylsfXu/yA6etYHBUXT2uiZuXTgZBQYiQ/PdRcOD+QiKQ8s/3pybyVl
2dzqSlwfRmAHir4N+S2ei4cM5fE6ACvupSSZ3oW00z1HyLschURvWqVRecmiuzIFxW2K2g8bGsXE
u8cMrYx4umji9JMMdN2eheW2aJCE/V0irE8B6RNiroaFFPNa+J4fl3dmZJwowe4jrlfKqtoOF1vR
TW+odK7GyVN9HlG6kyMzZXAZdT9QhggEUH3VOyp6C41BdyYzZm1CfTV3KwJ5H1Nzwez/dZ7MR3UT
tS90YF1wm4PO2O/fUANHOyyup1+GcjRpeid9laf0XOekFlQKMMFWfjw9bxYsxrUhklQnmZSUMztU
XXzbQ11xaxUHxI9aYnuFsySGofyPh3+j7bOd/Twcpz7sjzU1d4NUZlrm03yxDQRvobmQAExBys7C
6pZl2yjLEqVDoI+2xjy6mzoUR3cAMKOC6r0VWYlk18eDTiz/wrnRvZ3JjR6J/lqv9cDdkc9JIn/K
7ZV3e02mbjlJA82ibQPyUZ5CsoxSPR5Kh4gdkTHlW57gydpS7anXE7lvQliZ2ngU1XzP6+0NmWQJ
KyEzyqJvQF13xfn/7u7s9u73G4W5zItYJSs6gH3SHxaLC6TpTNOO8RgLPyYSzQsaXsvVCs4E6Y3M
VqGApaeFL5Djcp8NFY/3ropUtrUWlVYO8QCQvPxLJIQiaug0Gc37kjiJGhE0Wd/9hF8dfqUZ62MR
RwYtQGZcR5aoGQj1OvJs9tliolm3chWgoX/OdzTNokpH3JhRoKnXZY81dvcdx2jMjtZnU27IiQzE
pcjodLEBayKEpHJLSdNteOzcRtpVgseL677Z8IMVmYbsbHnriFLiffCDmhtNcPqFJuu8+L2ldsl7
/akVW3KJ2catXwM7yM8U1B8HSFmC0Dp2q8auUKU1df+fUpAbwCsyj7MRKKDfjgya8YfDkQNkHOy+
QEu8fkeP0hBPe6nkPCOV3gLJLaainS4M/lNu7mFK4MX4lrck9P0eM1wwmImWhzMdWULsBgG0OGIM
/0xuHW8oT80WKnRP4eb8uxxH3IjSYq1aNFeWzgi8PvwGWmbszqv4vEl5b3360M8IcvyL0daK0yQk
dJYubwZKvIzcH0jY4j5L4fJMiDNESdRqZRRqCUjPUbjgMGYjU+m66Q0RoOa/Pi98C+7C4hVspiJJ
ZZx5sOzEaIWvcgiZWTuID0m2bLYnZMQb/nX4HwnLtWT2vH/UEzESsAqu9Fyav5ePVJ9x6zMY2rUa
4luiW2+EW/T0bD4aqj9ipzSXkn3kITAFI/f71hSu5C6Lgyp6NMIiGrfMOelQnF9EFUaqr59te9Ev
to4ZD8rL+dI/hlqsf9/uTD6THmPuLAEdO3/IviWLeFqVQ6jmuCr2swfBzabhgZohmp1oTYDYDpDN
/xT8uj9OBjas7T6n8Da0EU5dCkJ7D6oGHU1wUTY8/lNlhOBcMBbV1Q58qKWDrTCRLHy0D6HibC8k
HLhhuZkjFvIn261+NOykrccMiEkGJQr47BSK/nMPUWt7T/164PPHyU67uF0/InkHjccHthBkjurc
eZ78owLiYHTrHsQp45PKBmjwsHuqfxdkSMRa/5eK+aI4lreO+K3NQ4cEV8evZB4rMc/uRU6OtQTT
muCvvo42a3NhPVVerPip3dsmXS7l+ieI1ve1KGEzL5jBgT34RhVmqAX3X3g3S+hZu3lywt63poYK
Y5BuH/3HjdguUrkKA5b0WEJYIw8MsgSbKtDj6dgva9nJUcmRO8l9bXc2Nm6kLiBLtNYSb2M6ZRDB
wjSZvQJ27sS3k453wGUcZ+rtXyeBkGnLwfZskDF13eS4UMN7fHxjGzvC6arqgY8lgMK/PXR/s56O
+NT3YFaqsnKwjM+1x9e1kWhrC/RfxAGso+cJ+J816i8SqByuHyuS7xvkm5+b06+XQH8Gg+LRqNNg
zAq/iI0ou7R2ZI+znpEItgdfyr/X5ARVP969qjfe8wzaZK7eLvw7YWORPrzopO7u1YfIaV0BZEON
eROxsY1/KrCAEJ85FOrOOowHiW1GtixY1F7X1cETGXif2iCIb2ZiN+3C7qlBBQ4IIm3n5+xP/kR/
UIgY/fluwj1c6sB95AlDKqHrEyEFqImn9TcU/Vmmg4kdc6CMZ1o7sbofMy8+2lmmmAT7OnAV8IgJ
FXyg+CIKpqI3kgMevG3SKLQJTKKlr02rHM3mmSj15nPc2hlr5EI+FlTOSfAAn+ujP0LjtwcBA7oz
lHMU/uPPtwnnQ3v2QEQ4KMHYYUt7cVGwXE7zT4Mh2kDhpDQ3AEEmcWPO7LrXaUzKAQO1op1M12PB
fNupK0+N8WhRL7oaIbcDBMtpx3g12xOb7snSIRekXLYoFSswNjvAQwy4VcPpxw++sl5N5oB9an9b
vB3hRy+TS4opAV5XkdDQ89qwTkLTB6F7wR9z9RPDR/743BJwYT67Ysz/pcDYus8u3h8PXhBKzu+x
FXkIOtSBq2J4a+c+V/3wC24mEPW0qOmgjdKqVL8n7w9/L2MB0A+SU2JQ9ThjxEbG+2jrEAIgYUlN
3Asw4Iag03p+RcQGapQNk6TXiK0SmYOy9Q8zaH516bJXp8fXfIhozZrqEbrS+UURX4WIaUSz+ewa
Qf8c/jhHWuH2t2FbBSTT+7/3WduIBCeq6PRIT9TYopLiUhkdNnje+1RFBf9NhKYo0IdIFvun4Oj9
SL0UxazP5PXUBKe+z7jCfdwBxN+U1okLsKW1XHxLvnLO9SUtRHRsiVXqkmm2b6i6uKyM43iW95+S
qqJBXInSzov5jMvNUEiBiybcLWw448KFr0bhfWgCdW4BiOsE4iKItya9CQt2ethW4FvNiNrd56JY
c1LKw6oQNYNtLJx7mFPzUJ1oAsIoNBzrQg/X+x80WWMMXV6iVqahPuyyuRnuEx5DjbTR6Y9zDXu9
tqoOv+PyN2/SXOHqYRkv6aO2HcwfSk90X4zo9m5cJJUTlvgV1y/lAKzzOZWm8LtbhZ73bindMGbo
YjUEzwO307SENo2ZEbZWBjuTvPFU1fmEUDw+DF93MoEk+E9dSgwqTq+uFxQG8w4stDJMeDOni8Fm
s8jXbopEHT7HB+iEeCxHH/P613DNv0se/IzZI27uRqhca7R/IjdVrm64o3D0ccTcbD4+KUZWRWI6
mzbs+xky43ZC1zxQFoVOg7IJ+uizG48BbAqaPTUim3ZDdQxfbK9hOILAs5LFrk+9pPn4kLwMFoR2
Dy9A2D2eudsTha4RZE/LDFiNMvqQDR6OYWicKNgOVUVRfc9KIjjteAG5PPSMIRTbRb2vzxYPsv5Z
vYxnGQL3cT/wfUk4FaiNxnVp1o+TjWBsAIrPEI0dMLFgPiWWg6h/YBvWABT2sHgGx+OOnpoqqnu7
X92oEmJhIDrws5vYyABJrkcuLF5Cg5yyRIJ+6qOAeShVWXvgPEDYF7lodua/X2/ng59eBT8UJP2e
RdKHeQy694Seu4eZAtSSlGcv/6E82fwNav4mDOvKkM5KwbIoMn5tEmNvtPuES1Z4kca+GWw9wPzk
MvX/XkrBDQxf3zIhbWHpxvNxC9kxrepIwmUDT/fSOWHZ1/ynkIfcAtMfvTUBXl/HjuTFUY2wrEkJ
aW3TyZ7crnE7MBHDIKZvpTA3+kdnTpSb73eAOqWImunNADUUwWPEbNiVswqwCUBPC8xa3SuPWFJF
OcO/SEXklDr1BrVbzzGzZpW7NoDJsF68fSYDaq9MiH2t8Y69nDr9nyBLHOYJ9NIqyxrqdmBRDFY3
GZfkyWwJYnzcWr10qNT+eYQnHcn8/h+Kemuv0wY+2uSqRa9RCxiKP6q7fyvzR4EvEeLpNZHx0cL0
mwwuHBWKDJ7vDOjym7qWZyLiFFTCjD7maRh0d9sLjEy8mRSr7/+jevX8mFbuXbEyucad8HmwJkqM
SPv4oMw4FYGkZm0LubZwVu8UqdlMyI5T/RuALKwMY6FCpdNAeG8wnkzET5edjCNqyHVfyIlaNPOK
beX1fdl8Oh2REafBPayjLhB/9PNGcAWBa68LzdkwyZO2nOOEv3GRbXR28Rlt0BLpomrii/G+ItCf
X3gppiCJ6UmU4N5urBb0kG3s1ILmFjCHDH5eU7Rfv8vgYHtYDsSFuDUORetjhQwXQ7dr4QGch8kn
qHVCLP03LBewHVoM/fVac4mhaHAlhx7GcVNPP/TUnlMAgz+xsjuRnHhGnrJmoLwGqYQ76H2g765K
nYg2A0um6/E8hcqHVUhFkLv90hghF+jsLhvJ0/cUm7Mc+ERpiy8/6jsVqNg9ZfTcw2ZyyPCPXf4Q
kvgxSbhc47iwxHmSNxMkdSJeMAmHFXCS2d+mt7Eq9gIg2CqsO7dq2Yu1RzbCbt/W6wlLYF9gGZZ2
XnFg+jU7EwCDuzPqi97n8GE4p9yy0N0cVutnKkM9omCDZ2PqnPKqvotE0xga8eWPeLvg24ZudZAF
NYQeFIyoh4bYgYMM1gk7Q+I/empx/UnlKqQjPZBff/ADtQxOVeQvRX3KhvBVt+DtdH8xYv2i4+ad
NDGyPCy/meLsxR9/bVTgLpsnCG5oirhd/ADod79Uq+6ArBms7+//HiHXZrnckRB/ob6kglIdiEHC
jzS2A7X1jMYGJIv4wuapzveIpjQjXofzPApy2dBA1DtzWQaxtNvtQFjUGfw93GsDdrHgALnjxWwP
q4/VafeXbHwMfucg8LfKAowSuPpbM6NlcdWOD1ty2mO7EhkR/2a8vb60Jd1EO4G5GUsATLmrn4dR
lCy490V9DUsy8eQwf+UDGsSaMqRGLuV3LrQNf5IVrFxk2scb8vEWPf9F2aKUhtNo+WlD10CDZsZl
Qq6eG+swn2MvO/JRp1zLRKJIhaTuqzn1jxQN1K/4SYgLbfHgsH0hq6SY2xH5Xlyp4znRfovLPKhU
e2/9o0UlfKVT5nkIgL18OWAWvNoelxmtLN7RzO7lGQlqcNHQRCyAhf3iCK/oXOsBShZcZuWOGCF1
sVFcZf66dUdqOaEX1Xh4TMJMbEd5zVEBNGCA3rRExiwHJyLlrRjV3Wi/vqn6RoMd5H6hlt7+HEFJ
WoBxjIMbea7kQwBS/DtNYehJKgnUHpCW9Arn/rST/DhIOvg+3I6yFM/+K26QmNcQlrfedki7dhRQ
8CgAiSizdHjfsXbhmj9LitSmI/ZBbQbg5XUYOyhUx9evFUB/Qyd85fdYX/5848aQ+SXfwrAXfTwE
Kw/+z0MZBrp0k2OeCgvJwoUB7XpjHU9IswBCY9kvMwVINt/W/NbegAkqJOnbP98Uk8W0bJLLJveT
dCEmqELUrBI4/Mer33s6ZfV69qpvvJh0EPk2LSc0h4SolWCwicyKVMuDXuU/T1k/4St8DmogR8Cr
7v+kp4+0PIjt3iNtF9Zgw8DGPX7jFaVbI7prRmtPKiswYkKXJn3yB1Y0HN37rOmK8kyCr8vnoORh
sSAzGDwCyh03/FA8kO4wqQMaNdVh6WJt/FaalgV2SzcP1bWt8CHwdJ9+Jw+gRN9woC776qYkhbxz
g1toCvrykaEQz9AM+Psn78wXbo4ELmOlDSOMP0YWZTYbVJ6nfO2ieLX7GMMnTcPrqQMdlvj+OC6B
ZY72xe7DHueNW3gD+JhO23Q7wFppujONUnSYKmwcOmdoeBOphmj3vCSTFMheV+z3Qp/Hzjc1ei7u
1OSUfltJg2A9VbsxYl9v8kbGHyh6yDF2jTOiGwxnnjM4cBPQnfN9yBMi3cu9IhZJIPReWHU9LDgv
WbYwwjx7/bEO1RMq8MTSgVqaT+Y8QhVcIpfvzEhEjo7yHWCybVvY8Q1rJi0G+bO3JD2a49KC6Vo8
hQlb6yVRolOOAdVbF/NHSA20ZQwCU6MnJ8i2tnkDg/ku0cbXjxDCyqZNgTN6olGd230CBi4X2YCs
ev1x7dK4yH1JNJTN9jCi/G/VKq2cfuTGByUej+ed7eyzFrjzmW8udpcapAeBtIl4ZkfhARPQA3Nb
BeQ/NvyNuC2ARZgYhx78pfp0XyUcVaUwL3aupfMZF6+gpyJCY+0x8N8dfJwDOd2Rh3aCD5L84H/w
jRwlADCG8VOSgQYft1Nn/6ta7ztlfvOaRCL/qCp06n9UeiGNh3C3zrPKkRZoQ0eII3/wZviOvP4i
lrIwcdTdhReLFDF34xP3OUgWiflezGMubOdnJfh2SAqDJVvbH3l18KAvzoEbnioaSMhApYxDKQUY
lP+OI0vKV/d/CG140J2Zijtms5SSWZ/blrOdD9VGYx9u0RlkY+fzjEpTiiZrjTnkO4UgvoF6T04W
Yr0pvUCaMrOzSDKorRAB8V9LM5WSaT8Dk3wGiDJa15p8TBUh5+gCqzKnTWsEuKImvZTvLC9xjTYm
NHZFaBeNEmWEo/KauWUnyGl51h8v9JlOiqZZ1HO2TR4t6Se3m5zd4gt4bpMtvpTJ219/rfv9bYN3
wzuNywhDnEH6Ax3bfUgbJuuuDEwEhVsRWghrvQ0AToqIUzVClvabI6nFOzcaYNqFUrBK+tgjxzi2
NGIgrV592xwWQTHj8OwFjhobweTiNAldaSG/HU2ICPkWqXpnKpJtsawaNPX86JQG0vr4TCHYI17l
YFjmWV5dfiLDDhla/6UBsnqz7bntpmOj8FdF56Hqywx48oP+WI8KsovyCJdjeTK+jxtjuA4BWgUp
zHm+lN/TBp0RTUx9DOTS+Gb6blqHq+6tpiAsZLJPdzZnABc8SVhBu9v7ayYvqaWlX/zzex0E/mUq
TkCMsC8oE7jz9B501QDV5QjaHXuBG0poB4DKEmduOzBKwjhmzMLqWJV0HnvTIhiWWkbKqQ1blQDm
Ja0OviuHkIfnlI0JfC/jmOxF+a4zVmWctcKSZod/y6oc8XfbozQ9i3eTerXuNjmQd/cST6lOYH4z
oI+SJh7iFOpEhzzGDWSaEEa8XVTEkHYP2D+JxkVixgv0N10FWeA31BJikFSfTNs2CriwItl9mdnc
e+jBqQcmg3GsKo5qUp6OGw/25UuaK934qw8ehGB2oExIh7qoDIiJc3lbiRNNFIQwOmePPrV3S0EY
ke3H9db4YlL4esAinawKz5+FGoUYFCebacnFlVhHtl+AiL3MoM+uxEGBuzzwMFqvjtnRYz6Kj/4G
6Ey+/2x6+KWyEDrgy5b0RCmQ/JbGwqEe8/LO9Hmd476DWTgDM8ijIq7b5/J5uHXqG0bw/4dVNc3g
VskINhj4FRHbFExe1lxFdk5YDiIsvOZCy4QObZXKnftdIO2nGFpE7Xj2Dd76
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
