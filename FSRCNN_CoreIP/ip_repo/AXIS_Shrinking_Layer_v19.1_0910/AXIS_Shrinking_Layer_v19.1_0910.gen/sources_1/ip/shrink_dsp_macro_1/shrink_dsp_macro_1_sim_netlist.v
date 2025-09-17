// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Sep 11 22:21:50 2025
// Host        : DESKTOP-DD0PJLS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FSRCNN_imple2/ip_repo/AXIS_Shrinking_Layer_v19.1_0910/AXIS_Shrinking_Layer_v19.1_0910.gen/sources_1/ip/shrink_dsp_macro_1/shrink_dsp_macro_1_sim_netlist.v
// Design      : shrink_dsp_macro_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "shrink_dsp_macro_1,dsp_macro_v1_0_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_2,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module shrink_dsp_macro_1
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
  shrink_dsp_macro_1_dsp_macro_v1_0_2 U0
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
VNhNayjXlFmiTqKW54DAfJd+Yv3Z4n5i9SLOEq9RrNVJPcQAoign76N+xRiU0m48uge9lNn76Vfs
4fO0SqINbAuKhNqTu3vAVhmG4vjvHpK8ur8E0ZgpqrRpDXzTdXarF1aOSuD9EQ7qYhrOvPAzEGSI
Q5mW+S4zohxEIRCsTMjimLUm5jq+SwMT1qPAugu792m3gI7sBntf4wtJBqOKBfwrOlu008Br2wNM
4hYMOCv7bx4KOvLh+A8XODYuMy9D+z8B1CutSnXD8pnhBJmHBOkKmphVsl2UmbmMy4ZUD05i7HrA
dCVxkn/qqoMptjyXwuUhta9G4wi7Au39k1LeRQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gvg1asQzXX3MmcpdygfjWCm+T8HB2DqHiaeWOeULFPlGDvuCAlsnBUNZwcadfL6eCXwlcW4A9HXw
jcWzwy7q/CUQoktdCKr54FYiENkMvfhWMFS0uc4mu6KlgytHYgu67ZQqJVbNPnRp5muZKBZxHpZx
BVkomXpyuj1dwiceDuf/TlEq3weXNqTNX2QU5At9CMNp3kzd8BdQV64LzY6ek0qEcCLD5ib57vWG
e8lY73eRk2Im4LrhBICNMwP6twaTbvtMD8br40DQC0e3DCFuZrnf5PMrmxTbnIuXuz8DIET/B2fn
wQDkB/Ky3Z5kVwCrq4QDVpc/DVvFlefmfbsdCw==

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
