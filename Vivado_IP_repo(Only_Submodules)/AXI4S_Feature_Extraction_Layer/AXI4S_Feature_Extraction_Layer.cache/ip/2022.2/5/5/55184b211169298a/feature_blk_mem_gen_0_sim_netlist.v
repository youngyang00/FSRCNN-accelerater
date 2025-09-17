// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Sep  5 23:51:53 2025
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [7:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
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
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
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
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
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
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23760)
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
