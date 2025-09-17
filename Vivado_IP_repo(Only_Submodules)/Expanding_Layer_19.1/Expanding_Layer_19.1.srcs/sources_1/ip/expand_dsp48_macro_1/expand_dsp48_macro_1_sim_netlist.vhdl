-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Sep  4 13:50:53 2025
-- Host        : DESKTOP-INFKKCG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top expand_dsp48_macro_1 -prefix
--               expand_dsp48_macro_1_ xbip_dsp48_macro_0_sim_netlist.vhdl
-- Design      : xbip_dsp48_macro_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
mDIOS8PXcK1kR53SwDDegCaYI252Xt/PIM9qOoHzBCBlvrVEgTfwXdYnFtcyEPAXpOFIMhuhuTg3
sjA9gZ9Vcw==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
kT/jNmiLcCvOm4mpYCI4eygVhjFrnC5AMm4j4uszeOK71Xgl/qVCrYxLPF4aDiq6Aw38Zd3EDkhF
WeY/0jcivGAjCONQZaHxaNOSv4VD4dsaZEspChn3rUxSKY8CAeCj57qCGOUg/jx/iZXNPzgXXAiw
EdFDmWu3pYcOmd5hOhA=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
rJH2B3YYUuS8PnW6+HTozZ7g9Msv4UCDaK7jjFTdMhbEVUe1n1O3cYT0d94U8bJ/e8qgYiXca3GL
5BzZ5xAcnGzGdiRH4RCfIrrnkEJ+vyo6aJftc0LlV130qCl2WsHqeh7pvyy8tMhy+P4KhhI35zY8
2GgrLu4ViZiS7U8ifybQfI0WVFp23O+tFqZXf0UcisnL6f3G+Q0/XadW3Wj7a+D5yf+J6OuU8E0Y
OInAHRgJFR4mFZ0tkQY0NveQsYlIUEubV+zKv/35VjXOhTmNX3afzW/Z8Tf40vOkCE5MLNezo+37
xsC6cWHbe5pE8L3QQQwddl5SR3NSw39JJXdcNg==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
XKLsO8R2L+p21gFpfS6RqZ/S+qwQZEYn7ET4lzv7ALj22WZjLj+T6sPGqeSo7jeqNmxGnae6P4CR
cLwbIbr1tyZRiz4SHfoXOoOR1aty4sliBFq0Gx+Xs8idPzzJrG79VClbilR4zmW0btnB2k8nMnjX
TxuoS6NKvxzNVz3oyQzntXhobenf0t+ximg9LIAfhbtgf1IR/EUVHUcl0i0TtXRVTdAQAMJO0N6h
NSu8KAMg0q0yIPD61otHRMUsDIQIoBmQkoOxWa4pKUy41SO2RAKYDHEC7t3OAoSvi8kGJtEyxxRq
41HPKlN1NcTyh3+ghtXW+46UZSbOauWYV9/FUw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
YBSdxLYu8i7Kfsn7jaZ0PXbcgVeMZ11qZ/BxILsQQ2rKc9jSxY2S4+7MC9GY/Bn20R9RXBpqQ5zS
NQQHA8UaJJbD8e5Se1k8ajJSHJORcrESnmeVvX+vRd0R02OV4TLOlQkqgg+wbQnFucszdCeYXGrw
MRZ/9fFI4bW8r19V/32eFIsxHm9J7+asY9fb3gk3V5y7zbKR7OiczF5ObPdO67evw8RRO8bxy1PK
SfRhfq2Lzchy3J8BTMeJ41PGhA/CqGO8aJ5PPQjACln6YEAcEvaKGfisSc1hSwHmMLuz7SUCQo8H
DqXqF1Orp2OqPummRTbSja6a84gVBxFIrjLbhg==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
Iv6aKH1p+Zl+lBu2Jm9rauXPIgtYGRzAItQkUm4ImgGxvI96zhFJ1u+Fs2Qd5a7bWLqXL7gpjEmh
ecEPwGXx8SCe/5HvJ1JuD7W4LNSw6SKxzYVFIjaMajuVZkfi/QXZEHwyL1Vu2I6eReWlK4tzpWWw
9Vom1a2LQuS3niLiEMM=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
KUKtpJlLjwg/TkSq/EVPQ3IHPY7bbmJUxOefnagc1ktTJZybwntUvupr9vmVg7KIwX41BupXsbLo
xT7CeSLx14bXAptml5AoDeAW3bXY1Vf7YMUyTtck9Pq769VUDFRLs+VsewBxZQm+a2LHlB0UPrVn
puZbhOqa3/KisEAv4IaljomjCrOr0N793QaLWKnL6b+pvYemk9SW4fYAFNDmEH4ZctSsVu3CgYyt
OArlPhNFvvaIi0mSCV2s73hHff9eONeqUxR1OKvFZPtbsj5TaKbHKqaDSVwnHffj5qUrmNVBT9MK
PA7eNEddw1lMA9StJu2sDqVdD07cietzt90Jqw==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
BhH3G7dHNSJpxEQ8KpB0htk9ifnP4i6IhMPpwCjeTULJsNJvywvNVz5K59JiF8MRnDCdoyuSw5Lq
0C0eBxnH1Ho4gTVh9uSfyALt9LlVo3KF/hks1nWK3BnT3ptboJlrJBHLWDNA6FwNxeZ43HSaWML8
+YoCEKSYzu8ms8vdYfZeQvyT11STRtRzanF078ydLVG4av8m/844f7rgzir0AWefCgKAh5rQyRgl
xOX71Pw3lwwW/Kj63Rb1cyn1VaPV0thjSDz07NRJYYf9qnaE3aa7KTHhcmAbxms4x0+drDkxM+Gl
qzvR22zfYOZykaNjuu81T/B+r7TaEyTzGsjHbw==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
j4qO2MMbDh7MAk00EoGlsDYSvpqQ8a3AG+hsr42hXGZJx718zc4/dwzCURMpNzqYZ7fS6KHqtdkZ
MstNYR7NsIsA3xYfZQpDPodGkX9QtUbUp7k3/2vyTBoM9hjCXxHrfIevxMaYw9O4MAgrcgmRYTt5
PF3dOAz+LuPuypWepI0P78vVDztKlVpG5HLklcdP5yhO/x6/xck/WgpxoWdQb1H6WGH2fBuPSJxu
eLfoBc48kJxOn5Yv7s+M2XX4ox31TfQhG0wdFQLUTVGZszIsWzdkDMVvyl0KUAYOg4XXfu2E+QSF
f1HRxQ3EXY37C8TLNIxEQoUKmtGjqK2hi2uKeA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19664)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 is
  port (
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    SEL : in STD_LOGIC_VECTOR ( 0 to 0 );
    CARRYCASCIN : in STD_LOGIC;
    CARRYIN : in STD_LOGIC;
    PCIN : in STD_LOGIC_VECTOR ( 47 downto 0 );
    ACIN : in STD_LOGIC_VECTOR ( 29 downto 0 );
    BCIN : in STD_LOGIC_VECTOR ( 17 downto 0 );
    A : in STD_LOGIC_VECTOR ( 8 downto 0 );
    B : in STD_LOGIC_VECTOR ( 8 downto 0 );
    C : in STD_LOGIC_VECTOR ( 47 downto 0 );
    D : in STD_LOGIC_VECTOR ( 17 downto 0 );
    CONCAT : in STD_LOGIC_VECTOR ( 47 downto 0 );
    ACOUT : out STD_LOGIC_VECTOR ( 29 downto 0 );
    BCOUT : out STD_LOGIC_VECTOR ( 17 downto 0 );
    CARRYOUT : out STD_LOGIC;
    CARRYCASCOUT : out STD_LOGIC;
    PCOUT : out STD_LOGIC_VECTOR ( 47 downto 0 );
    P : out STD_LOGIC_VECTOR ( 17 downto 0 );
    CED : in STD_LOGIC;
    CED1 : in STD_LOGIC;
    CED2 : in STD_LOGIC;
    CED3 : in STD_LOGIC;
    CEA : in STD_LOGIC;
    CEA1 : in STD_LOGIC;
    CEA2 : in STD_LOGIC;
    CEA3 : in STD_LOGIC;
    CEA4 : in STD_LOGIC;
    CEB : in STD_LOGIC;
    CEB1 : in STD_LOGIC;
    CEB2 : in STD_LOGIC;
    CEB3 : in STD_LOGIC;
    CEB4 : in STD_LOGIC;
    CECONCAT : in STD_LOGIC;
    CECONCAT3 : in STD_LOGIC;
    CECONCAT4 : in STD_LOGIC;
    CECONCAT5 : in STD_LOGIC;
    CEC : in STD_LOGIC;
    CEC1 : in STD_LOGIC;
    CEC2 : in STD_LOGIC;
    CEC3 : in STD_LOGIC;
    CEC4 : in STD_LOGIC;
    CEC5 : in STD_LOGIC;
    CEM : in STD_LOGIC;
    CEP : in STD_LOGIC;
    CESEL : in STD_LOGIC;
    CESEL1 : in STD_LOGIC;
    CESEL2 : in STD_LOGIC;
    CESEL3 : in STD_LOGIC;
    CESEL4 : in STD_LOGIC;
    CESEL5 : in STD_LOGIC;
    SCLRD : in STD_LOGIC;
    SCLRA : in STD_LOGIC;
    SCLRB : in STD_LOGIC;
    SCLRCONCAT : in STD_LOGIC;
    SCLRC : in STD_LOGIC;
    SCLRM : in STD_LOGIC;
    SCLRP : in STD_LOGIC;
    SCLRSEL : in STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 9;
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 9;
  attribute C_CONCAT_WIDTH : integer;
  attribute C_CONCAT_WIDTH of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 48;
  attribute C_CONSTANT_1 : integer;
  attribute C_CONSTANT_1 of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 1;
  attribute C_C_WIDTH : integer;
  attribute C_C_WIDTH of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 48;
  attribute C_D_WIDTH : integer;
  attribute C_D_WIDTH of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 18;
  attribute C_HAS_A : integer;
  attribute C_HAS_A of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 1;
  attribute C_HAS_ACIN : integer;
  attribute C_HAS_ACIN of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_HAS_ACOUT : integer;
  attribute C_HAS_ACOUT of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_HAS_B : integer;
  attribute C_HAS_B of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 1;
  attribute C_HAS_BCIN : integer;
  attribute C_HAS_BCIN of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_HAS_BCOUT : integer;
  attribute C_HAS_BCOUT of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_HAS_C : integer;
  attribute C_HAS_C of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_HAS_CARRYCASCIN : integer;
  attribute C_HAS_CARRYCASCIN of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_HAS_CARRYCASCOUT : integer;
  attribute C_HAS_CARRYCASCOUT of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_HAS_CARRYIN : integer;
  attribute C_HAS_CARRYIN of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_HAS_CARRYOUT : integer;
  attribute C_HAS_CARRYOUT of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 1;
  attribute C_HAS_CEA : integer;
  attribute C_HAS_CEA of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_HAS_CEB : integer;
  attribute C_HAS_CEB of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_HAS_CEC : integer;
  attribute C_HAS_CEC of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_HAS_CECONCAT : integer;
  attribute C_HAS_CECONCAT of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_HAS_CED : integer;
  attribute C_HAS_CED of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_HAS_CEM : integer;
  attribute C_HAS_CEM of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_HAS_CEP : integer;
  attribute C_HAS_CEP of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_HAS_CESEL : integer;
  attribute C_HAS_CESEL of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_HAS_CONCAT : integer;
  attribute C_HAS_CONCAT of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_HAS_INDEP_CE : integer;
  attribute C_HAS_INDEP_CE of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_HAS_INDEP_SCLR : integer;
  attribute C_HAS_INDEP_SCLR of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_HAS_PCIN : integer;
  attribute C_HAS_PCIN of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_HAS_PCOUT : integer;
  attribute C_HAS_PCOUT of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 1;
  attribute C_HAS_SCLRA : integer;
  attribute C_HAS_SCLRA of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_HAS_SCLRB : integer;
  attribute C_HAS_SCLRB of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_HAS_SCLRC : integer;
  attribute C_HAS_SCLRC of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_HAS_SCLRCONCAT : integer;
  attribute C_HAS_SCLRCONCAT of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_HAS_SCLRD : integer;
  attribute C_HAS_SCLRD of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_HAS_SCLRM : integer;
  attribute C_HAS_SCLRM of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_HAS_SCLRP : integer;
  attribute C_HAS_SCLRP of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_HAS_SCLRSEL : integer;
  attribute C_HAS_SCLRSEL of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 128;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_OPMODES : string;
  attribute C_OPMODES of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is "000100100000010100000000";
  attribute C_P_LSB : integer;
  attribute C_P_LSB of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_P_MSB : integer;
  attribute C_P_MSB of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 17;
  attribute C_REG_CONFIG : string;
  attribute C_REG_CONFIG of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is "00000000000000000000000001000000";
  attribute C_SEL_WIDTH : integer;
  attribute C_SEL_WIDTH of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_TEST_CORE : integer;
  attribute C_TEST_CORE of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is "zynq";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 : entity is "yes";
end expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17;

architecture STRUCTURE of expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17 is
  attribute C_A_WIDTH of i_synth : label is 9;
  attribute C_B_WIDTH of i_synth : label is 9;
  attribute C_CONCAT_WIDTH of i_synth : label is 48;
  attribute C_CONSTANT_1 of i_synth : label is 1;
  attribute C_C_WIDTH of i_synth : label is 48;
  attribute C_D_WIDTH of i_synth : label is 18;
  attribute C_HAS_A of i_synth : label is 1;
  attribute C_HAS_ACIN of i_synth : label is 0;
  attribute C_HAS_ACOUT of i_synth : label is 0;
  attribute C_HAS_B of i_synth : label is 1;
  attribute C_HAS_BCIN of i_synth : label is 0;
  attribute C_HAS_BCOUT of i_synth : label is 0;
  attribute C_HAS_C of i_synth : label is 0;
  attribute C_HAS_CARRYCASCIN of i_synth : label is 0;
  attribute C_HAS_CARRYCASCOUT of i_synth : label is 0;
  attribute C_HAS_CARRYIN of i_synth : label is 0;
  attribute C_HAS_CARRYOUT of i_synth : label is 0;
  attribute C_HAS_CE of i_synth : label is 1;
  attribute C_HAS_CEA of i_synth : label is 0;
  attribute C_HAS_CEB of i_synth : label is 0;
  attribute C_HAS_CEC of i_synth : label is 0;
  attribute C_HAS_CECONCAT of i_synth : label is 0;
  attribute C_HAS_CED of i_synth : label is 0;
  attribute C_HAS_CEM of i_synth : label is 0;
  attribute C_HAS_CEP of i_synth : label is 0;
  attribute C_HAS_CESEL of i_synth : label is 0;
  attribute C_HAS_CONCAT of i_synth : label is 0;
  attribute C_HAS_D of i_synth : label is 0;
  attribute C_HAS_INDEP_CE of i_synth : label is 0;
  attribute C_HAS_INDEP_SCLR of i_synth : label is 0;
  attribute C_HAS_PCIN of i_synth : label is 0;
  attribute C_HAS_PCOUT of i_synth : label is 0;
  attribute C_HAS_SCLR of i_synth : label is 1;
  attribute C_HAS_SCLRA of i_synth : label is 0;
  attribute C_HAS_SCLRB of i_synth : label is 0;
  attribute C_HAS_SCLRC of i_synth : label is 0;
  attribute C_HAS_SCLRCONCAT of i_synth : label is 0;
  attribute C_HAS_SCLRD of i_synth : label is 0;
  attribute C_HAS_SCLRM of i_synth : label is 0;
  attribute C_HAS_SCLRP of i_synth : label is 0;
  attribute C_HAS_SCLRSEL of i_synth : label is 0;
  attribute C_LATENCY of i_synth : label is 128;
  attribute C_MODEL_TYPE of i_synth : label is 0;
  attribute C_OPMODES of i_synth : label is "000100100000010100000000";
  attribute C_P_LSB of i_synth : label is 0;
  attribute C_P_MSB of i_synth : label is 17;
  attribute C_REG_CONFIG of i_synth : label is "00000000000000000000000001000000";
  attribute C_SEL_WIDTH of i_synth : label is 0;
  attribute C_TEST_CORE of i_synth : label is 0;
  attribute C_VERBOSITY of i_synth : label is 0;
  attribute C_XDEVICEFAMILY of i_synth : label is "zynq";
  attribute downgradeipidentifiedwarnings of i_synth : label is "yes";
begin
i_synth: entity work.expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17_viv
     port map (
      A(8 downto 0) => A(8 downto 0),
      ACIN(29 downto 0) => ACIN(29 downto 0),
      ACOUT(29 downto 0) => ACOUT(29 downto 0),
      B(8 downto 0) => B(8 downto 0),
      BCIN(17 downto 0) => BCIN(17 downto 0),
      BCOUT(17 downto 0) => BCOUT(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => CARRYCASCIN,
      CARRYCASCOUT => CARRYCASCOUT,
      CARRYIN => '0',
      CARRYOUT => CARRYOUT,
      CE => CE,
      CEA => '0',
      CEA1 => '0',
      CEA2 => '0',
      CEA3 => '0',
      CEA4 => '0',
      CEB => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEB3 => '0',
      CEB4 => '0',
      CEC => '0',
      CEC1 => '0',
      CEC2 => '0',
      CEC3 => '0',
      CEC4 => '0',
      CEC5 => '0',
      CECONCAT => '0',
      CECONCAT3 => '0',
      CECONCAT4 => '0',
      CECONCAT5 => '0',
      CED => '0',
      CED1 => '0',
      CED2 => '0',
      CED3 => '0',
      CEM => '0',
      CEP => '0',
      CESEL => '0',
      CESEL1 => '0',
      CESEL2 => '0',
      CESEL3 => '0',
      CESEL4 => '0',
      CESEL5 => '0',
      CLK => CLK,
      CONCAT(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      D(17 downto 0) => B"000000000000000000",
      P(17 downto 0) => P(17 downto 0),
      PCIN(47 downto 0) => PCIN(47 downto 0),
      PCOUT(47 downto 0) => PCOUT(47 downto 0),
      SCLR => SCLR,
      SCLRA => '0',
      SCLRB => '0',
      SCLRC => '0',
      SCLRCONCAT => '0',
      SCLRD => '0',
      SCLRM => '0',
      SCLRP => '0',
      SCLRSEL => '0',
      SEL(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity expand_dsp48_macro_1 is
  port (
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 8 downto 0 );
    B : in STD_LOGIC_VECTOR ( 8 downto 0 );
    P : out STD_LOGIC_VECTOR ( 17 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of expand_dsp48_macro_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of expand_dsp48_macro_1 : entity is "xbip_dsp48_macro_0,xbip_dsp48_macro_v3_0_17,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of expand_dsp48_macro_1 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of expand_dsp48_macro_1 : entity is "xbip_dsp48_macro_v3_0_17,Vivado 2019.1";
end expand_dsp48_macro_1;

architecture STRUCTURE of expand_dsp48_macro_1 is
  signal NLW_U0_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_CARRYOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_U0_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_U0_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of U0 : label is 9;
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of U0 : label is 9;
  attribute C_CONCAT_WIDTH : integer;
  attribute C_CONCAT_WIDTH of U0 : label is 48;
  attribute C_CONSTANT_1 : integer;
  attribute C_CONSTANT_1 of U0 : label is 1;
  attribute C_C_WIDTH : integer;
  attribute C_C_WIDTH of U0 : label is 48;
  attribute C_D_WIDTH : integer;
  attribute C_D_WIDTH of U0 : label is 18;
  attribute C_HAS_A : integer;
  attribute C_HAS_A of U0 : label is 1;
  attribute C_HAS_ACIN : integer;
  attribute C_HAS_ACIN of U0 : label is 0;
  attribute C_HAS_ACOUT : integer;
  attribute C_HAS_ACOUT of U0 : label is 0;
  attribute C_HAS_B : integer;
  attribute C_HAS_B of U0 : label is 1;
  attribute C_HAS_BCIN : integer;
  attribute C_HAS_BCIN of U0 : label is 0;
  attribute C_HAS_BCOUT : integer;
  attribute C_HAS_BCOUT of U0 : label is 0;
  attribute C_HAS_C : integer;
  attribute C_HAS_C of U0 : label is 0;
  attribute C_HAS_CARRYCASCIN : integer;
  attribute C_HAS_CARRYCASCIN of U0 : label is 0;
  attribute C_HAS_CARRYCASCOUT : integer;
  attribute C_HAS_CARRYCASCOUT of U0 : label is 0;
  attribute C_HAS_CARRYIN : integer;
  attribute C_HAS_CARRYIN of U0 : label is 0;
  attribute C_HAS_CARRYOUT : integer;
  attribute C_HAS_CARRYOUT of U0 : label is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 1;
  attribute C_HAS_CEA : integer;
  attribute C_HAS_CEA of U0 : label is 0;
  attribute C_HAS_CEB : integer;
  attribute C_HAS_CEB of U0 : label is 0;
  attribute C_HAS_CEC : integer;
  attribute C_HAS_CEC of U0 : label is 0;
  attribute C_HAS_CECONCAT : integer;
  attribute C_HAS_CECONCAT of U0 : label is 0;
  attribute C_HAS_CED : integer;
  attribute C_HAS_CED of U0 : label is 0;
  attribute C_HAS_CEM : integer;
  attribute C_HAS_CEM of U0 : label is 0;
  attribute C_HAS_CEP : integer;
  attribute C_HAS_CEP of U0 : label is 0;
  attribute C_HAS_CESEL : integer;
  attribute C_HAS_CESEL of U0 : label is 0;
  attribute C_HAS_CONCAT : integer;
  attribute C_HAS_CONCAT of U0 : label is 0;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of U0 : label is 0;
  attribute C_HAS_INDEP_CE : integer;
  attribute C_HAS_INDEP_CE of U0 : label is 0;
  attribute C_HAS_INDEP_SCLR : integer;
  attribute C_HAS_INDEP_SCLR of U0 : label is 0;
  attribute C_HAS_PCIN : integer;
  attribute C_HAS_PCIN of U0 : label is 0;
  attribute C_HAS_PCOUT : integer;
  attribute C_HAS_PCOUT of U0 : label is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 1;
  attribute C_HAS_SCLRA : integer;
  attribute C_HAS_SCLRA of U0 : label is 0;
  attribute C_HAS_SCLRB : integer;
  attribute C_HAS_SCLRB of U0 : label is 0;
  attribute C_HAS_SCLRC : integer;
  attribute C_HAS_SCLRC of U0 : label is 0;
  attribute C_HAS_SCLRCONCAT : integer;
  attribute C_HAS_SCLRCONCAT of U0 : label is 0;
  attribute C_HAS_SCLRD : integer;
  attribute C_HAS_SCLRD of U0 : label is 0;
  attribute C_HAS_SCLRM : integer;
  attribute C_HAS_SCLRM of U0 : label is 0;
  attribute C_HAS_SCLRP : integer;
  attribute C_HAS_SCLRP of U0 : label is 0;
  attribute C_HAS_SCLRSEL : integer;
  attribute C_HAS_SCLRSEL of U0 : label is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of U0 : label is 128;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of U0 : label is 0;
  attribute C_OPMODES : string;
  attribute C_OPMODES of U0 : label is "000100100000010100000000";
  attribute C_P_LSB : integer;
  attribute C_P_LSB of U0 : label is 0;
  attribute C_P_MSB : integer;
  attribute C_P_MSB of U0 : label is 17;
  attribute C_REG_CONFIG : string;
  attribute C_REG_CONFIG of U0 : label is "00000000000000000000000001000000";
  attribute C_SEL_WIDTH : integer;
  attribute C_SEL_WIDTH of U0 : label is 0;
  attribute C_TEST_CORE : integer;
  attribute C_TEST_CORE of U0 : label is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of U0 : label is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of CE : signal is "xilinx.com:signal:clockenable:1.0 ce_intf CE";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CE : signal is "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW";
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of SCLR : signal is "xilinx.com:signal:reset:1.0 sclr_intf RST";
  attribute x_interface_parameter of SCLR : signal is "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute x_interface_info of A : signal is "xilinx.com:signal:data:1.0 a_intf DATA";
  attribute x_interface_parameter of A : signal is "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef";
  attribute x_interface_info of B : signal is "xilinx.com:signal:data:1.0 b_intf DATA";
  attribute x_interface_parameter of B : signal is "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef";
  attribute x_interface_info of P : signal is "xilinx.com:signal:data:1.0 p_intf DATA";
  attribute x_interface_parameter of P : signal is "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef";
begin
U0: entity work.expand_dsp48_macro_1_xbip_dsp48_macro_v3_0_17
     port map (
      A(8 downto 0) => A(8 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_U0_ACOUT_UNCONNECTED(29 downto 0),
      B(8 downto 0) => B(8 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_U0_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_U0_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYOUT => NLW_U0_CARRYOUT_UNCONNECTED,
      CE => CE,
      CEA => '1',
      CEA1 => '1',
      CEA2 => '1',
      CEA3 => '1',
      CEA4 => '1',
      CEB => '1',
      CEB1 => '1',
      CEB2 => '1',
      CEB3 => '1',
      CEB4 => '1',
      CEC => '1',
      CEC1 => '1',
      CEC2 => '1',
      CEC3 => '1',
      CEC4 => '1',
      CEC5 => '1',
      CECONCAT => '1',
      CECONCAT3 => '1',
      CECONCAT4 => '1',
      CECONCAT5 => '1',
      CED => '1',
      CED1 => '1',
      CED2 => '1',
      CED3 => '1',
      CEM => '1',
      CEP => '1',
      CESEL => '1',
      CESEL1 => '1',
      CESEL2 => '1',
      CESEL3 => '1',
      CESEL4 => '1',
      CESEL5 => '1',
      CLK => CLK,
      CONCAT(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      D(17 downto 0) => B"000000000000000000",
      P(17 downto 0) => P(17 downto 0),
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_U0_PCOUT_UNCONNECTED(47 downto 0),
      SCLR => SCLR,
      SCLRA => '0',
      SCLRB => '0',
      SCLRC => '0',
      SCLRCONCAT => '0',
      SCLRD => '0',
      SCLRM => '0',
      SCLRP => '0',
      SCLRSEL => '0',
      SEL(0) => '0'
    );
end STRUCTURE;
