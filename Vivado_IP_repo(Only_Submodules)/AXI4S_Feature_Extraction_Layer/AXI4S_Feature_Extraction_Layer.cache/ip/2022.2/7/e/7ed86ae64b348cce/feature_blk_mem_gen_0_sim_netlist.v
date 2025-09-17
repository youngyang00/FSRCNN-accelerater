// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Sep  5 23:07:20 2025
// Host        : DESKTOP-DD0PJLS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ feature_blk_mem_gen_0_sim_netlist.v
// Design      : feature_blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "feature_blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [3:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [7:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta;
  wire [7:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.843037 mW" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "feature_blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23344)
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
