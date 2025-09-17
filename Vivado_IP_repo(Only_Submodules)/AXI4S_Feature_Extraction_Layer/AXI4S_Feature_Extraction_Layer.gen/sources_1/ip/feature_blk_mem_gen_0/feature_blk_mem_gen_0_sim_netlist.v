// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Sep  5 23:51:54 2025
// Host        : DESKTOP-DD0PJLS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FSRCNN/ip_Repo/AXI4S_Feature_Extraction_Layer/AXI4S_Feature_Extraction_Layer.gen/sources_1/ip/feature_blk_mem_gen_0/feature_blk_mem_gen_0_sim_netlist.v
// Design      : feature_blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "feature_blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module feature_blk_mem_gen_0
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
  feature_blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23840)
`pragma protect data_block
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
ZxSQImWPw1m06wZ/Nd0=
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
