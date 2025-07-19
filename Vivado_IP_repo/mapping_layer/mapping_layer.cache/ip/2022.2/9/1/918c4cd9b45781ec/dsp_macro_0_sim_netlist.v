// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Jul 13 16:44:36 2025
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
Syu8QV7diuHHKdF65cG1HdTJcmVlJoS6kjNCZdnSFTY59KY+PLKNGf+HV3UbcMIviLD1AWPM8WUb
0Ejtobh6rLjeShFnLADZasE0l1By4BBrzBz4fzLMQ5V6Nt2QmLGnCZTu+wHBbVzs77Qt/BhwAzzn
h/eKzYWF4hCQPdH7LUJaiTQBivAVuLU2ZxCRoSin/8IIlAfndgXtjs63aQ5AUkvMSZ1iIwG3K244
SPdESrx6bSs+7s8y0C4uGkArZZPszljIdSqjeBlPZwPAcbZh2EQRqzH9a5sUcvQHIUEWwlUKJ0fP
dshg070hZr0JefCsQStpI2l8ijKUkbdtAUj+7Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AByi4xoKTA/IPBLhUCYCIWgyjLQGILVVWZ1+yFfElp5i1I7yEUUfJsIY3Ed8xqI0lP6RyeeMeNAm
FTzSjA6CcTLBQ58rmibQ/9+bghdBxe0GMtfSj3JWqaxrpPIIPK0daS4OEl12DgIxaiDTQxnm3q/k
SGybG727l1YWa+YI1kVsEcwL1Z4OLQ6Ozrvz5RXkDG5Q8amDafbUhT6eh5BSkaGqP09+1//TIRVd
FfbF7xqaqfpuB2g98gK51HwqQSPUO0T5IjLnL0bFLWsI+48jIglXlrQyPLqRVoG7yKRBiGkUmMnX
TKUQs5arkLZPxj7Rt4aEmYVhrnrHUKLNsxltgA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 36736)
`pragma protect data_block
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
pMTbwd3qk2vgKEFBeZ1lI8uEZwQZxdWfjq0rXg==
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
