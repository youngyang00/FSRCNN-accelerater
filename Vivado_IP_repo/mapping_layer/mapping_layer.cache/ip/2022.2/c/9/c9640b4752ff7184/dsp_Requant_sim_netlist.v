// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Jul 19 09:37:55 2025
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
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [10:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [1:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [35:0]P;

  wire [23:0]A;
  wire [10:0]B;
  wire [1:0]C;
  wire CLK;
  wire [35:0]P;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "24" *) 
  (* C_B_WIDTH = "11" *) 
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
  (* C_P_MSB = "35" *) 
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
T2dRE6nYSgL/wA3PwuIqaXcCoAnkAAj5vYMZQHBws/l1F4hjLwSqO1Mj0mrwpzgwUrZYr5Dgxcv0
CDRBVxiKCZRkNmkXOQ+Kis1t89uvZkXEEvNlgBGLOz+SfilFzQjbPsBCuwuK3JAknHCKiM6XrY6k
2l4gYOBSZpM8N4zg2PCtaBn7SKXuXiI5oQIHOMVt/5G6NC8+ae5B2SWB9SzWqPn/GT/AunCuoX/F
Rj5CthB3JLX+WzW5cYt0W8jiE8+XDoRSB5WDP8iNGNLG0UwzaS5s/jlWmvn1czpJJ5VqKmh7TTQA
ADLTkuyu64hqgOBcHnCWd6/OJpFYPLvAR5LSIQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E7Huuc1fy6pJ1LWh4RhaN+7bumqxv8YigAURN+cBkOO5QAOMgfbOvKP4PvZiqULRqP1kPrGhFHZF
uYqTsP9JqHZygMoAbO0XcdGN4MibFKm5Kc2bQYU5U2bpezk1pjhhPhLoaVvhRnEYHVvbaBiHDwKK
solfEvhRl7rKzrK8l5/TskBsddy7k361/uaFRgcr7LB9Y8qPWqkd9pn/hMEjoCkyDnLMZY9UpJ4D
7ex1j/NDmbi1YdtUoRkpXDtyng/tGAp40wdRmuWhyaGMuExTxjqtUKNwJQOZS02raV5bJbbxrGJj
wLeqE7OoZkzRVMaYo2skKGK9T3D43vu2iBMapA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27216)
`pragma protect data_block
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
tCZkFxJ69LHhs2jyX42mRUdYwYzCjGcMEyOg
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
