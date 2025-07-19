// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Jul 13 17:04:31 2025
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
  (* C_REG_CONFIG = "00000000000000000011000011000100" *) 
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
JhMKEeo/tLTffOws7Iwq1xaG8FBhRomwIRliN0zjKe1ZcY8x+ep1L2O+4urBwsBxYiTvvAYSOIjK
8vYIb9volvIDTlSCdO6qYUP3QzqBlnPN6vbhVAAmMI/WbC8p8AIPD81/2f4hfx3qNtryCq5Dwqcm
UgBp0/pE1s2i9VKoQleEsRa6LCrbE4D0bd6HHnhDlHwz8Y788ANX+Ep2GG6AwWX3Fhi+fNAtLXxd
L1oSd52+vmQS+gW1pJHcqRwIzfWdC7Jph2M3iPZdICEfb2xHoCU7xT7u6yDtYWi4W4Ifg7NQw6k8
k8bxVYpkhk6AtF50zRgEPhyomR1SLOny9d2PAw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
X07aV50gjnpe1sFbFg0kKo2kNnZuDnnlNxkAfQptXC6nfHuEQe4EVMV181LpivLzKhfMrUamxKNg
JFaaz0HJOVp4v3rLlsJFWrnJDYe1idhx+ns0FnTt9f2rC5Tm2oiFLbuxkuB7mNiHw+E/U9qjUf1T
IrmOy2olh85Eud7Owwq/2FXG3MrUmC2d98YG8SYrrtY19Qs6atob84hj9TNfEC2vvh53+c6L/ef7
bYs6D+AJJP44eG0RbDfxOGaP1JOFSqqDIrDCGVUX0hKhzXe4txnaDch3rAv7a8YB7fv0xWYUbxSx
0Rhw2p4sB59DjQrap0YtzssXugDqRAyipm2Xig==

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
