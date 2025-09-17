// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Sep  5 10:57:45 2025
// Host        : xylo running 64-bit major release  (build 9200)
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.800873 mW" *) 
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
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
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
5Ko9KCORqaTY83TPx3LY2rdELKd3/nosLbTi4Sf303oPRsri2F8k5sszC6ijZrNEQK3k0ZYtfJ05
V5B4AOLfAExrMBbjqaMGFSfLnNOUtW0XVX8/cB5Fyow5UoViZ2pRETvCYpmo35Zg4IyUaNJHOky4
/+D4RrAMnB3iv2cmG4auW6Bp8rHW7BuMFMO35sfa9HX5Bq10Wcj1H0FxNB4aAlmVniHXwOqy+jEf
dxevXbMGJTtvvXi/Ff92zuPZoOxBJaeP+x8ZI++nCNL5gA3QcwtuwVpmuBckADq27Dr+YNxtZ8N5
TloQfl+BZuTPvESvrcNDXlkMw7+NzulxeZSkF5rWbcw1upJdYhW5AfDEXQKnuHrnjdkC+0EsgyM3
Y4nXGowekxLoO7cKvGKfFwPI2ELZiDX1c6l2QYuBxwdcWJ/yp1uTlGBVetzhwQRh3zd13brQr62G
ZbmVpqunvIldumY3DlEbJc7Daad2ANg5zg07lqAtfx74jnHw4TFNCTWyDks2sF1/cnuYNfukiiDI
3SvqmuIZ6DsX3KutanxVky8TtzNp9mRjMNmXOwYrloRyS2pW22fDfQjwja5KgptcseIuMTmtscKm
/cSNxiImEnwOtjq1jwXdAFrCC+YoWInuyChzi5hc5NXIOvzr0NU8cfGguxvwtQX+9iAhIOrC2zF6
gyV+IKqhFWqfedZo4vT9HXcTQfV2T7/TD8w1jUJuELmzjToI/jgNkyYlbZdLSbTTPx0QSMg1zar5
HOwT+MJBRSaFa68wMmaFaBKp+cIVUYRMWpWXw3aY5FAtlUXUq9uB8PKxOaAb2bO8MiEUZ8MKVdWs
t2YIC85Zvhd7Pqfd+Ahb1bLtofI8wiTgqVeAwrKEa5kH1bqhK+MMFEhy3t5Se8jvZtZ714eET6Yg
u5ZAlsaLL8GS4O7Vx+a/T8QkBjDk2XacIXWdudOTHHrnYcDNPKieZotViYqr6g5cNrk5BPlu3MWL
ZerNyZc4QNDsOCsRMWUlpZfoIOT3gpicRRoqrtnw/IcR7SL1Vhct6yjDJGVWyW8D8Aoz9oAYpelS
3ZFtKEKDer8Bbog+dG6l7+AsRUq/dQm26bya+N1W2C/pBcDMwcsQPZSUGKVMUTPJazY5qPLGnLfZ
mESHwoMo3XIdCww5M/Ss51iprsq2xAX6bmeMNB0P9uGspH3zZLySeZH5xNFxfiVTgKNUwrkRGpNX
PVvItEC3IplzMFedXNd9IFnTakpvvW61nj3YIQki4KVWjdyyWckBZtfRxc5SUTqHstQzwEmIBCHU
FK9kyTCXCyYNCiznA5kRrUbuMDMz/BaX8fU/UYGgaLLFWgpChdTS/sPr3ru7OB0ac5XWSIIBi/Zm
IZaE/EsxUq1/GkgLju3frIZI0auceWb0WnjQEd9iNVBGhdK8VlkyJg+qN8STI8y1OoZ3uDtOlWZE
VfaoYxqpgtZIaUv3vSAv4Tyc2lOtQKUGI2Toc4jDpfJj9rOnSE6K5Tfq3qWSpFPmagpzn1m9aM00
8YCFDYb/cUfL3wyfJd+TclqUIxdVuTrBnxzX2JfP0Nh1kpSxWfXf+pdSIfY6wz2NsWUR1yJKWmFw
yxRMWAjIYShLywR6eihmK27xP10/3ubrS/OLVaq21KVTA14PBOn8MNOgiJ3RRa4WRWij2NezJaTt
65ep1ZoON8hhaW4uaaENEg+bvJUu8Nxpa9zCQDfsUTqolEAQvf47RmphnxDgGimqGVYj9t9RhT8q
RJtUIrwKtP8NXnMW6dYlyLZ2TJClsoYxKLNCFrFcHE1JSZPEbFARY6dxQpf7vWQtsPhSHqfdi7oF
Ce+p7jKMzNkOGhYcSLJKvElZKt9/xz4d/gsW6d0aWBfQ5g+kokIur2Ed+Y+ysP7MkBjM75dDLER2
uCBcTInatRDeUI2kKgz6vBCIrMiK4dWc9PUO+MAXUn3YXAmXkjHl+WFu6rOL++SfoZFmF9Dj3e2h
pU267WqXtcBu7VzdsV6XfmDH/80jhAKuVH2AAEb/em8W3zv06vnneey+9NoEF1317rc/x9j0Zsxv
W4eW3HGXlqtXB9Vl+SYQgTGm3+FmgBMp1Zy79ka8pxjT1//4zI2lZ06yHj1zORGP9JXc06PEUq+y
TBa61Jm1ExYksa/JcRdBULOzlxlM3241PfzJRVUPtEk09uDg1u+c1Qx/HDqh3vjotG0DkSDSqXyF
jOkwvgw/Qym8jvriJ+CdwF2GIQTaz5BKDVhyvzuemG8576GdQ/AkdfjwLn9Pher/5pK1YuhIolQP
KXajUsaQ2dAJFr0fHzb/l0Rbd3ts+ZLmHTvOq893m8okzIPKqk3maR1aTdLjgTnx5lyjt0yVYGuP
DaOr7JiNr3u5VkYenWAKzsWzl3jH/SxF2FEuBXzW3wDiKVJbkscfdoKz/uzd0avtvXyXnVzynPfx
ZvnHH4RYEXzDbYA/4a993WnjRmAlexCyI+e04PdFhV1Bmv/Dbk0gqBn+Fu2wOi3jC4S9zWFd4HN0
CUyf0u1rcPtTfv0rYImG5u4Sg6MzBI/2Y+QuJMex+OMNn60grSjFvbiRuTMa74B0lirY06tR6ME7
htH5zc5J5TSTc9DZms3vcfiufxLOMEWo2cqMwxfldvRKpk1njSAW7vfqDVkVzPFwX8uC6ebvuEou
1YEyNEeCRu0/wMA0nYcQk8I9upDu7ZF6f4BltkkHFAeIptnXPmHo0gyDgZfehCw2mu7Ve8b+/s5Q
l+9NE1XLyjWjZmy215SbhaVdPE2iWfDFYNAH9Hzr8s7ho4iRvkUlxXnCenvUzgLVhFnNYr/HrQaZ
1UYGGtWntsZG4kqpKvQ+oadeN0PfowKp8whHXr+bur3ot2Vye/1/nLGYMkfJVvQLpbVY0LDvT/Re
9OkSI3dNlmmegIyDcT275oXEnJa2Fd/fZ5y0iAKy8M90qxkyMhIeJOYDCYXrd1t7LCVET7u1Npm1
347LkeKCn/OVZ4wH2IXox4ZNIpyixQWbTxxXE79zTfIn51IxZ6qJTencvfE1EprUEG2v1OetXkXa
axlgV6Io0/dcVy17xwRbuWBl0k/HPTWQk91fUw/+kYfJjIdvaAZeNTggtvguUxx39zQFYEIw/saa
uDMQ92Odu57D1yeZKKjsfcICd1eP5uUmKsE81kSBER1A+xCYEy4M3HDQrIprms5REANpiXS4weak
itE4w+zXVmer/oYDCTtPubmJK+SM9MpNvECsUPO0JBRt1pAgo8XMPe0nK9k6DePiuR04Gc4Lx5bW
gxS54KPzxHpjzacnakFyFY3P46alfayp4bwVTKFcnBKz3xHPp5ZtPpy9OKrnyirIgRsioALOeuNF
JYIpFSAQtC5asMVI99PGE3MbsI/VuhfbFrcK1GoU62sNpG3PIbBIOjuzqjl0w7CSq1yBZMi6QbuW
NoFD0TOXBGO5jozsj4ce6BQgdYv7M0RXueHqjaAeVFtyCZSDoiwkpeaxUvQzKhmzzWBHd+x1/YJt
04JAynxLVCdCe59yMoxZPnBsH+3cbItShHR3Td0cbv/NH6rrT/7nvIJz1xoFTDEpJDlrzsfiSxGw
Y8OP1SbDFEVgZuMaOHScL5TQWzbE251GRYBh/BTiE3DR3/tvG9P1J0UK0pxxf9PAqWEu58vyfTmr
EJobN7N+9a1oZkbSlmu22LN8gBeiRlu6DVBFRNHqkx9kL2179BxRWuGMom612CKpHO+cp3k5Tqn8
22PjukDJbh1ebajeA67mx2+PLJcwafugrA9H+4FU3ymfkNIHy7jOtGCCnNMRzbk1EIFKVVO+ckLJ
H3dtbindTskiO3EOEjc8VS4abDNE3TGXiyhjkTKkaPcRJ1odXiOidmOKyyYtXBoTDksbHJcJKXoR
yvcyL0lbNnV2fFPE/QGVn9AXTX3Q1rWWCRUW3/qZP9QMiSAJdenprz86NxuGbr8aBCZk4lk1NKoh
s7+feuQT3BnuKpgW4fRsVTOP3Eyf6xkKF9+caxLB2enYdmPZ4RhXcSzu1c1eKUHMCKW1V9DcBZRD
eUmnIcwC3E8agpWHxryzLv8NZYOC8kv71Q05RaBpthS/bc+B4uriKW3pIKQoX1d9+QKlPmeirz8W
iMw5QamMpqv0zeN9RK748k75C4VHgdi6/RNLprYm6mxtmozfSSEvLgBIU02qXZYorvN6S7CFIdt+
3V9cJq8JusmjMoHMJHtqyhojdPRl1hJZmv2wwvLGINRaI4hgWpkPZ98opRht3rPxgdfUgodckkIq
HuQ6QFd2zCJDEohbFXHn8g4s9RJmMlx6IRj7E47gKBxe9OuTvAL+p4Nsm5G99J9vk7QDL7SRzSNx
FUtSBS+45RHqZMkVfR6hSl20Ql9IkGSfnKnXtYEUAd7BT2sXoMpZq0zL+rECI40yw8kCdS3kXDvQ
syH3x211drKKPjvpsKmtEJjaIDtIOW4mynfk/p60LAlBuos2s52jSfTzLsPFngLZADmD3kU2/xQx
W0sJMDxytHVURjE20YA9wyY+JzvwW1RRHo4Dl8HPpBB+fNe+MW497ziYmYC0U8wQOrovqIBAerAL
hyftl62sofwaUUwBYv8CrIZ5Cf3vaLJi7FU0X7IxvPdXwAp9Sm+1Q7nZzcCQTyASJdEwyxQNcZGe
SL8P5XC6vKVOBrfYcfM4cqqH+UAAk44J2DCZqHKt72OFApvJT7dhuN5OozECsH6BhGFFyGcx8FT1
sTdB9nX23xn6o7bzdKQ32QXF9boCXO59K3Iq/muaNOGQsWJdR1KQMf83DUSoLyeeVI1sM9IgGx0l
CWx9e7VMnH/BbMDpBoaJfixjmBuy0EX1RV6JGruS+rAvXlTWuFeQNwavt00VpmKz3zJSYVQLNh51
2h6ntTx67w8ZF5rujA+NZsjEhPdBmqZZ92Uhh82V0u6/2JX1KNFvqPVJcNOv9ss0i+w3y9S6ugQG
aA8nXDx530LyM/13W4lGV8Xi7jvMNZNkOlXjp8fh7wy+2P9pTBh7aWGl63ib5VWWEu6JrVZxmpQ5
VRvKMXssyQotjwKGYNzA+2bB7o5+QpHK5Twcvzljd8NPzlXk901rpHt7biyQMzbrorP7SRp8/RiF
7pG8JgUF0kBjXpQabAc2INMR6ne2hLC4/jgeR/dQhCGz3Bs2qwDbQcyD7gC2xX3H2QtksyV6BvnK
lXldnDc3VtnwziAFpEZpjmeNmb70xwpiQk+fIxGdGNnK42TErWlNtSvFiYSo1Pg4L6iAxZg0EaFf
9waQ2WfUWwC9nCEDt47d+HUKAeAYPSvba81jXR9EtoRw7eTq0BMjbx1HOlt2q2UUbO55J8ZScmUd
cwGUwqbnA+JOhtpSbo8b2dAL1d6fgiqmWdJrdv8TciY3od2VCRJAEDCAJ/fgE3uIJKxVSz6RZgRd
lLSOSW8412dWrRjFPySrEoGVX8CiJCQLlBdWgR11Kb3L871Nf169PaYxCQ96Ry8QC55oMgLPNqsC
nLf4D5tYHfAU2SkkMdGMJ7NTTdBsQ20f0C2TX5lvYakqqNH9URMQbi5npiQ9nWbELUZRm1Vte83/
UMYRGtLFqQMZiS5/WbLfqFeM+oWK83c39VVJzKlN+W1EY5DlejLfiQeB0xv/m9gSU0dzalliOHyD
dPOcEoibhFwpq/MGxGRMco28g5SguTq/Bh9rnEL0aaiuvafpbYXnT4I/yVDbdQfYOmTIQVA0bkUo
2QUF5Nf1bYld/4H5cwl3PaqvhEfu/XWX4GvyulfTsNrmBIIXJ8PKazcSzFj0FPHF+EthRZ5/TDWN
xUr5hrznZWU3RQeYuOsDAG8nZCN9SvoUMj6kWb+Clti3TqWK+N9MSxhgSgFwJeMJwLJwcJODafsq
ZcOsp6rMF9kH6Yx6QReS6lAQ/ZA/73xc5I/QO6/8PBJSC59eZaf9tXEZmBvcCHup7ZEiDfxXHA2N
DlmfMntfIfprJ4Hj0zxf7p7ZfjeRBNRpy/Qo5XG+ijqBx5SVIyNfmDgshHUatrniHg5tS6ouHgxY
zFmfHyRSC65FvjCFWb2Hx4VD2F51U0GligFCUQ7W0m+g4OQ6wxf5FFYwv2oHIcWYsgrWeuN+U1E/
IR7mmhjevwf8UqZK71KqauEYGgR/SZGFzYpEtB6pLUVF1jqFXOrvMCv0YRhRyUHcr4iI2/cqkS6v
pHEMiGY6ZbiXhuIs/hMCDM8243tNyio20yx1rLJJAqgZQ4GLOT9iGSRe/xv9NmWK2BhTa81JfeLg
uLZPqJWuMlU0ZPEhBmsF/S1S3wTldP/8FwY2o3xL5QaXCGjRIDOFjGHGc8zm0Sj3+sm/sn7v3qYK
s+t0hse/yLmgBOduv5Tm+QKgV85mPqvKfNcIM3ycBuAd/TihZIicrzAHHshKH33+xcOzh4jNN8fS
NhXms6lM/UcKKS01GP3nokyK8LAggOAUkE8VTfkWfOtSlzsaymeTGQJQpdBfNaPtJtEMqau6ibA/
vVy8qiJ6Lm+edlRBUW8mvgM4OZExvkFbvQSBsJ9OS1Z56V7QOfli/kuAk69gfZhqZtxKTnjcYkzp
5Jd6dz7mWh+KNr7ktNHvx9aX7ovhm9bYP+ICD7X6+chhWdnrnFMbOZTNaztD4WV21tPf4CCuO8mw
jI1o5j1wK10CAMJYUHHtsKjBUnZ/crp0J/K0G/BSLXNFKbI7fL8c2AYorKWTxo3d3xuxAiRm5hpL
0npCx+zfuBHNFU4xO2k4yyH/NBCvuR+r8loOGBCrjlM7IdrdHNWMLSBtWe6MqPi6u/XGMO+zPxOi
ajVoDCmfatcCJTOLQ+uF2UfuS87GHCAJEGKpDSNNR0EWp1lFnegdp3NEGpRJAVnrtXCwnd3Z9Gne
jusaPKgjJAEVS6jpHa2XtW2eYkZVy4BJHNXqsQEbhNHkXdYRIVyN7NPNviKsxkwex4JbE63NYN/W
4Ycj9aWEHTntWo9z7S67b66YEKD/5DBtIZ5JcIcVmQqjJz+h98StlFo7AUex8uW7wfh2+IkVoe9Z
SWzSc2o5S+BrFC/mz7RPviy0/wwsEpFACBG/xk5EZeXHCp3Z99umAqZOsd0IENBlvqgOLhk7P+sp
HULhvGlB4abM05mkyXtTL9AysVtMsoQw4PrnSkSpLbxzGUbyOoIv0YvEdA5SH1N/lBBfx2prP9p4
ybn4i0/nO/8p5htBiQjIN0Vkh7Ag8i3j1FxHtbhz3iJiuZ82y5JvF7WuwEha4QLlt8T+TYdor798
/Dz26G62P2+h80FkWMig1CoP/v1a6D4hwJkbYDo3XBI1iDCZhbraur4OSVLU+mMm/5tqid2IWdKo
e6edLdbsFM1Byq4Q2K6tLLw+iuwDwM1msOj5ZnS2MfEsg4ECVz8+P5bkV7/jumqxTpp0GLHsYhEN
gfH0P3SU3/+9SKQR+HHeoQ0K3pKmKj/6h2A0MwaKsmx4QzEqm6jWldTiSuzEuRuFNhzb0sBVU1h/
gHwgIxSOFXvgMmObprpdUtOklLd+ZN7s6D809re+M/ciNTy4sAPlESTwuXQKWuQ14MQ+mq/5ThfK
/igAMFUdZfjAPtyy01OpRfAX1M397VEZuYT0pWueT2aofrxrbCsrMwnH9S7WlYwE+3J4v5xfP0G3
PoAtmOcnn8j+m/jej2Y11dxHP8NaTRq0/+s7Gs2gGd5ythhyZZ3UA6+NCd3WQbKoPdutGcaowuM7
ER3QGA9Cp0wlmXgfCO7hFs4TPYfQbJKiF+WsyQzZTfq3Wkf3jp1WLcAig6MYkFU1JDiCb2S4ZwSP
8UVwubXkvXdIc6paT3ax+kp4ENog2wGV9iHV+NtJP31aQAdeTqxgSqd/+WLQpSs95YnkA5pVqsla
J/+l5lsQGUzvpIV8NxUte57t938g0mw/ihca3nF/z0xDjbs0ObFUp1c+fWHSYnQ5EMhUwLgjJMIr
hMXfp97BryhQa1hKCCeI1G0p7NisaFg/3gL5NMxblkpTOTWOCE4SKAat8lL1ZtJ+cqPPBb3tF/ff
FGBLWbnAs88gusm4B2m/ZG9o0QzSqfgoF/gahvGAAsUV4Z8tYnR23WhuuQaLupnmtvdDsGWN/HHq
ZobEQuq8NsDdNP34TIt16p6Qv+3IQO7zDhj4C2WDAnXrnVuGmDtRsxTk3XJQgAklbj7oif1Ro4jE
LRe9V13j5ZFTO8bMA/vI7232jgYI9B/z+BLY7bTCSb+SmXed7N7SNluFYQjnvxc/j79bZ00URcb3
z/aVH37g7/klN0mYfhhR45k0a12LLTLmPPlZ6I2g5RlH/60quHMuJC73EU+YK3X8rl75G/yw+1EJ
wIOj7TMV5k5GbAaSNF4Zxc2GT2wuYkkRIWcRBfGQ1hG1tg1sk7uExeCCaY8p8i5gF8+KRi+ea+0a
bzHs2eJD9q5eVd7yK18vid3RUlifnc6lo6vQ0XWoY0KAfNYHk5Xm7/SXiufl5mecjzh9tuvFQFPs
nUUAx6QbOhVkUiXge2+ZPXPyxKjFt6BqDFDFEsqiLMmSVmP5YfqNUS77O7MU2rCXaCG78jSsDrS4
zLyGITR4tSuHJnmgG989iugGAdcsFKn8lX8IXL8TyYPSX85UPwPtXFn9IBvu3WsURADuo5NQzKpr
IjMXuEGHIunRO4f25JXVkJDkXofjzP6U3/ynHdTjqcIfqV4Df9cMUO2LV1PaY/6oNkA6M2gYAwNV
mGn80xfSB2xIRR+B6hcBiI8PO4nGc/TF8yRsD0C/ei+mB0TkZrdqRgbxg97nrD2VKVaZ02sn9XDD
yu06JFz4rDsWRPLgCgfgwX0R1/yIQQjBFBNw4eDzAk8RcNFV1YcriF12FCu72N9gfQlekbdvYSNo
aq0DHN9YWJYD7/CMUQJpWVdVrh9NbbbXDegfyxYJzbRf/CjRr/Mh94uyxpEbEicqSDt1/rdsdc0B
wChTKg4NZN5hMN5fAxoYWO0uAVfcFJ8VI7HoLpkKPo5F3xafurbSG8MSZgXxTcRmaK9aKkejt8LG
zI7ylBeempk04M/Y0TzsCQT11QZ6X5PCAuZQEBhro79IGs3Ym9p8+MSBFuDzYFadoCuoVcYp6NwT
x8c5rrEi8GmmTa476KHgOwWuuk34/DSNF4cN9GOSXC12e8a9OrF93SLVbbtGn5og3Q+RWMaCSfs4
Frd/7v5mnyRaperXJt3LpWu1RyVfWRSTNW3FEVjlF6TsouyPNQmrCMduQRpfBKK9wEtf7Djd13IW
8SrGfxt7v85erGje3/EJn9h5ZVD6smK937cQw11HbRCmd6X4829s0k9JVNL4ePLY4o0tPYEyZNe5
VN+qXIlRv0UHCFjZUYIXlFV4d/suZ5oX5l2S088xR42Qs2N/v11PiX6cBPEEB38s/ERK59XPrtMg
RVNmoZEwxu2Km7250qkLbyAwR1GN/+M6bJgyQyZpB3UjNbulEQ0EO5eVKq8osLNmx4Cxoe2ycVv2
KD1TxaM2g8IWrXHtG7QNgOqE62jbxlzkyjkb8Sqrjmmpf+/LPxqUNmvs23jpH/T3eSo+NyKfAIRg
kwnw/gjJZ+1qhfkohlS4pMUOQVnl9QwWjDOSq9HmKpFh/4gJ4oZ7qV4ZIo/XwPiEoVdVG/nX8iK+
E8PBPtsNzcc8y0sc76RzcR7cVoOmD3ZypRHkYCiivn19e9XUsRGZqxO17RJAyYVJsEcVnb9zcC8B
BM+nKMyoC+IjKMYjKGCN4f0Ieh3TabQrf/Kt84mnCgB1RiR6r60qv7VfaO1jPt5k5Nw5rtHyX2zG
AHF/OcnDKqPkyflkoEujgP/7WcaiwVttU9oRe41/UKezJ3hIKMzsDcNCytGH9oOLi1E4ZbDK5GDe
aznh+cdnQjcDVbe9iT+PbbHX2YRClwPjEXn2JxQNuKGJSElTcvrlomqpP+avJdPfiAYmYb1JJ5al
imZ7IMlJmuXPnqDZ/raq9T4mo1B9INLtewri74rBYK394oAcsSmDtZsUOlzFIdYkJf4Mqd1R3zko
gfZjGeC1WOOjoPcvIq/+RZKp43YE6SCwi8U5DwcvdbsA7B8ad9kLQxlVpRpa7J3U/OQ2PiAvIezq
N8NPkqK98EKG1Fv3oSdS9AiSVUuNM3L2yw0ulKyQ+DY8Gcsk0MiE+GldNxEZTJ1ddtwIhDJMMhxM
H4RKkAxZBxGKEKzg49wVFGPOA/ibkwdzCHx+Yl0Y3ZSZv88BUzjdN9gBZyAslKLHwJsFcxCQpFzs
StRBkUGKKfTigTuJt0aYNVxKfKRT5J/dOrcgKxl44MBRxoZcBugadOEA60nsdKkY3ORDYjZWITow
lvBgtCDvj8AmtxCc4cnnCwP2wR8ksxbaYFAAEn/6OPBnVDOs8qKtGv1RpFSE82E1jzAN2w/o7ngU
g0e8WP+9KoVyiEjTnfnUKLx5t0l19Jagm4ztSZOUNGzRYCqeC7SMhdjEXXV4iRVULvc7m1Nfwb+3
qscr2QPrUySJEVJrP6iKXWCvssre2ia6RCZoYQwpzATSMZoNa7H2OeXLjuKMaXtusuTbDyhwNXg4
Cdlk0DPMeXApgnHLtHw7p3pTCuRY5c9724Kg09eLzfrPZz9s3gMCmPqQ7MUBnicj79sz5mrnFOI2
a6SLbUtGdSRXDKZjSpb0fv06okOTJG11cha+YMuoHcw8kW0ukUREI158/ltG3BEeMvnsHcUEABKc
v0acimAdEdIG4fHXNjzME9/BvMiiaQ4EwgXQbi0/+Q+NDCIyup6+PcJoY1i6JM7y7xsQkZa0UjG/
k0xCxDqAhvULLv7gXpqswt4adMNNcObdV8t1CpubG2HAp2ftkXAf8GpLOOm23XGA6XpatjZ0zzpZ
Z/xjyON4HCBS6kTAq/85pR33r8GM9m/8mbjfyX3xE9HpSqU9zXAyGm4f9te+Tn8nYJ5Fvwq9YT0u
gD9Zz9K4P+t2QfoDi/N2ENo5WGLh2YV4xiBk0iGQ5BLPnobG9cLYzv+qPpxY+ZV60DAArvlnTWur
i3uvIxKMQ4Be0qCM4woS9qUonu2cSJamp1UY6zON4tQLtdlCo3sSbeQeCEDw+D3g1X9vsTYy62UC
sfSlygKuYgIdfQqbPNc3uqUMiHRo0Fnb4dnNve1nOr+f91KFplUMoZPPY4wqmPdKUVh6cTLxfbck
bMF8ZXH03ZMzi2dtJmCU/b7TCakZGAcI672ARshTgnd7VeFok8Grj4Gfi2UyFlXb6dSMTkVXXPOf
8iejJoHrCINP0QIdRHQP/DZRDwlWCA3bSONTuznAO2e2VNmzoA2rvndHrfWNtNR308zLN7W84/aU
3a5lilI24X9OzxHOP0csqYzx/MeCa8Y5PMuiSTh2qhh+kWD4GxoTOet6kElogKW0zfNvU7G/1RIO
2Q6SfOaBBANK3nIjLSwfNzoFF802sXNZiOQeVFkXz3BrJ8ncU5nuz+IXu5ez5aRW++z04pU9CkIG
IZS+pcYMRwP3xwtRuCmCzMINxAr/v9L9jRSLO2VNYaA9fHvELFsNBUZbMJ1Erbl+mcaZ9Hj9M74y
1BT0HOVUCx+BgBETB6UveOTGPbWCm5U2mdgNfdli9DzZt9EMfnBgL5/TedbUBIgXV8gqPXxda72k
tcqojBphNcrF2GtH/OzNYffwR5V9bAv74j9wt5q0m5HMArmbJ9w1gQkCPENK9wfjj/xQVG/sz0lF
hUKUvd/xOO77EE6iNhaUehVi5CnoRB2DNFG9okbSyKaIcG2bikLEyToCXzDnTZ/+SE2L6cu7E98O
7+sJg5K/8A9pU6AEm6hBU9YrhaAY5ILneqTebbsQl2nqcd0n3pXO0w1ZgmoGfHmnvPMx96fIW45f
gIKPDxe55eaSGlBVlp1DHvVzx29F068BbvTqO6ouZsMi0Q1YsA0MdLH8LsoFbpK6nxtSYORGp6cN
s6/PkL/IoTfRfHcNYhbxQVX/8kgy462tCZD5JaE2UxnyERZdkqkA0oycbUGT1yta6zeg9wvPIPJV
Kf2Gk7/BbDua4rXiktJRAlptQdTzNdsvQAodxU9PogAcaNGVVjhg59katW3EB8vv8HlI50iINjjA
fJjGCVp7+cyddHP+7h+S5KlIfzvjifTau+5CIXDbiLZ40sBHk/0RlzwDnZoPHxbpoByAYmMD9Wp8
YseS3skytQR5ZkhfHjfAbjfBu6jHmCu5KIVMvLDrg1DjXu/XPic2/39l7ut3Z/RqPpmf3st951OD
ktKR86CyKMuxCuT6B17Xol+d4bAymMAPUupASXm2INlbPhMMq2c2RUvruJN4hvyODcdggVueXszP
Z2Mh9PLuQsSCfPBYtmrLtBsbYW845P/ePela9JkUB9igrov+GJCH21TXBg052rz6s370BwrzFD3Q
NANQ9Ubg7FK0d6dBbsErLRufl85kBNJxE2TAPUyniyJtVCsdKcD4pULkp8w7GwQHDQ9XtqoNpIjf
Lw0D1j0Sp1zwfgV+A3Tbu7uwyvudH+dZpyFA8KbKk62m100dovALqG/lEfliotJpgQ7gx027D8Rh
W0ITEGy2hkXqlAVXoYBm8MnEjXRBhbVpf606k0epVvbfksmQBuDAlSVTf7xfebu81252z1Iw+sBv
RLGdxrzwf4Ug8XnBGcUL1gnAAiklXbVWahZzvqZ2H+URaT/6s/fyPDr1FiepQ19Dqaj0O6i4xLrr
MLeq2GoJcd8YolR8bO8iAcMECkRdWT+TR87rGlWizv+g6Q1lfEYzQl+oW5iFHinCxItTwDowaW78
Tm8ZmuirgOqIcLcTRLIUnbvccaglc/htCYy+7AzL4vYp8NxkUDSytI6PyK9QZywnH6MVW8EazmFx
HPS6gtWNZXmLib7963mPAqacphcQ3hfWSXD4KTbaITKZbNqbnyOitR9ks9fJDQSSjvBk+mefMOX2
BtWREkFIDxvFdfDRRkGZu0a78Se4BcWgxzWBTwNssJyt5pRNPdhKAvcHW/VONtXxfhYsb+8Uirau
kZWNoRWC0O+U1GlAgBam95D0oegjTqvFsH4RJ9IqYEMqrdRKFv4I4E+X9Vtz2Gxoo79MW+7hLCFd
TcuWtzez8lfuRxf6BgtqWVoMCsaKi/JTJA1kphPTxXuc5UQcdi9G0mBFF0TTSNrOFVPXVaFg4eCv
xchnHnrw8zs74YFO06mOhniZIQicDp7p1pDOlP+XqNxUt4ewcyy2d4M66igtDOTyHxnGBubo0PRI
Rk417lrUGxLzIWp971ZuSRe+nT1MlziKWL5/8YClOg49lpU+0M/SWSZOBkrujI152Ic1xgJUMyhF
xlQOJh27HugYOeoPqz/C9YwNAeEUmOYjO6n45J4dcc6lM9cp1MeBSHpAgHQtw50/YKQJabmzPAmF
Nb3MS9HngZraXcXaKFKxtPkfqin0RfAgK/2Slg/gAn6EG1eiw2F9arM8hiQIrnsHVgeQ2umAShik
f40ilTyLx0F1hPr+TqbPZrRQovKlmoK3rgo7LUguppZxTWZ1XTjvD8VezhagqHvmIjpCjS1x8uq1
MSahLMFqxOG4Tzof8c+NQLau9di56tUyvqCI1zo17fbDak1L5lR9lhTD2JX+o65f+E8I2v04Hhso
i7Rz/c5AeEsUhlphsVQxJflCrJXb8DndkjMRmrhTg9331DXqGH7bw8bdqC8AZ/6MNY6bPLRliDKV
mpZJn2m2ycEezCP0HC5z5dAKQRDfiU91hX0MlYD2Y2nZaGQlWcjqqdFY6lNB8+a7dDX7WZ+la27s
jQJS4iFqAH96kKZNiIlg9CcCqY7y7wgggAfe1Tbk7FhCkP5lTkY8GFfDmrHoaJDbFfDWH6vL0Mn4
fgTYzLG6jBxydOlAOPbWrGgQUnpi8qCUqRqnKBkUVSohtSF27pBkPpsi46GoJeSfQgWHFlAmdATX
bKeqXkPttk6Orn0+1o/4/9vXWCu/lnMjV7Eue3G5AE63cKhz0E2mz285Wd0eEHm5ngBn0MIJn4ZH
bbLzFQ3B0vAEHf8TejXCI9nnKIAe+GjjcF9nNHEuAU8lE1Lw4ZqQBNyMzy2dDwpxvfntL9NMK+JE
w1CwBhQf3XsU9+f6gaZa0Zuphj0gwZMMwrfPWCjJJ7341oNik7HGIvok8VAooYlChJDtngSF734n
879x25O5QJflNuX6otE3hYAmxU3z3UJB13UF2Zz2k8qAh5YSZ6JImEBV4e0YMbMbBCY0YmwVhaop
SEcwsJ0MyddoEzmZMUjRl8lv7DWtkNFK/K5/V8igwOkvrsS8o1OJnsFAjamv2tD/+An7f33xQQpr
VxqAs6bgPxI2Zn0uzeouHNl04neadoj3QO5HmD0fVfTy3wmHo2ZoRaKWbXmvcTpNfVKeKUgJIyDO
l1bS1QGWfhDz5hyjbXiF0JwvpN4ZFbjMknNF6pQH0y76m2nLwo1bYkp1lsIh+AvnIfGCOcEWBGr5
ZsaJbILaO7bn/pTBh0PMv272C0Xj4S4KW8LX4QJnzy+YvfgZNXLPAEZLTdH6+G6nRu113OcH7pGd
f62oxARW2sr+s+wMhtEniM4YDnRfnAE4ZiZbvefT5kSdmbDPD4eNU62njh4ms9U9PXrKpeYLCn1b
E6RIGie95Zn7cjFZVgtjUlncGMAPSvuGKWm0Y+SrjJwFHcTNf88oJJFm3ah5KpqY0vdBJXeuszgU
RTxSVcTKJgzwvVgyJgzObOntgIU10t1bMjS1FZrfD/Yb1dFhKWV8wt7ImJgGNbTEGd/UGmwTlJNA
vMDXhcLGlVA9WPegrcLpdfSoP7vbwFjov8Y55jFNBD0CzEKTEjEYJRef6NM9Ir4CUT2mvVnxfM8y
Hx3LUzq3jws9NrO6KdPnLGlSsQjDDRLwkalu2vsbTLfUwBxP4Jk3ne3bZDLciYckhP3/4sJYclnt
msGmHdvewgbxK/Z02hO16ZpuVdI1u2ptxiZO/bXwosXlqMyFK7FddUL24UaJjf+b3P3uedtgOVvB
K3lZdNmHKi0kGjjg395eXrKUqPiCeNQxzY9Iqd+YDjOW96PsU3aBiUKwQ+f2VrgJfArhVOo5aszL
+6A9bmKg7ShcxQehV4NwsCDIveKyh8WzUQkk2EjOt0PTl4qSbs6Xg8HWgSoLMsWcSHx/ms2iuBnU
Y3/I3yKIQQTgioKB1j6PbYS8b6qbQqBx+IqFHmG88UR6FZpBd91Bo+NHnbeT2VzT+aq5eXkzCB7o
ymUjGLZV1WWkfz3ou5D2EdYoey64IlCt3CJBiqLzscroBbSzSsbWcEue9MKsvIImlcRsY9JSdHDC
QH0s+7ETfd5wndLSc/MKVEJ2c2YaCH/LSAIU/OLWAqB2RQkTUwTzLrM+pjmGtlePYrd0u9K6vNKm
tZUd7TePiyHKbZ2ByxnpLnzjE90K8lljYTuArMx6dzpoifrTFtAelRpB5p5kR1um4MidpIDOFj3q
LsURuwKovPlzzq32m7majHWoamN0uDPPwNABnZZ/h9+EfBgHDAReeMVN6jpY2f3z0UhOjEYCqpDX
79CBZWTiw7qjhg991rwhGs+4+GTqfHzMuq7nmGW8PQPGzDbOTnOC4tYGhVVG5kkeJ016qffvfqxV
VFKUZ1YuER2nDl593UmMQriv4Yf2CAjtwNenJ3CAjMlJDHAu0b6KRe57cZVHH2QQcPrBJLmDVKoA
SQtfhrzUsgazFJHk90gY1FlAqZYXm3L0KBZum3oq5hfwF+ahbuNTxU4iwFwgByvXe22RvEdoBqFb
rL7gMxO5VC6BbF2kZCC525OIC28rSB8TLYb4z2RJcMBXRTbRi/zXBGFezEdILWSuujmJRPCWgB4f
0QEpyoP/AANzeNGPpgA226HfLASsuCJUFCSv4DiiyeDDdExOCSU3SVqMOZ9EDPR2ttYNm2/a3pmR
AANKFuoqZD9sZ7pAyFPOQnAeNE/kHrtaK/RfeDjpMoR3Jr+UKE19lJeW2BDv0l9wQMH1/2ikcNlC
WQ9wKE+yfbQu/5P8NXhF1lJHV1dN+4dMUUv0Ir2bwBT/QfSrMzltnzvxMeJ03+4JU8b8ndKyzonL
bPhDRoKUJrKut9BD3C/yTkuooFNCdzfvSTkZELgrhoG6315fUpLR8zDbq3XfUc2c6tiZwysvfEmh
Nhx71pzoP+0DtiAr1N52TrEnFcvo78wSnub6YaD+/Actc6x1CKI5c3Oih/XQ4ww1XvnNP6YgcQt1
RDoss3YCMoQwfs8gsUT6yWblVL2BIPkiwv3qMkXp2JbGzs/IIIQ5yNN4rZpWrxIpFesPA5EgDPyO
2bDhvXm0+n5IsL7y7HQB0OPgjkCTdsa8mZzJTsYuDoGfPjswykBgYoqZ8ehIMxd2Dnr/ApSHK1af
IS6dKquntudV4wccwIUAp1pEubzBrso6qNgQSm6kOln1k24QcioENzoWSDWVUdqCpzL7HLmJc9uv
nLaY03g10a6UYFKCZN28LIl7ga16XjfuXez3xIdYezHXaJLObBPGVt9MBNCjCgkiu2v0PnBnx1pn
DPmLh84OWg3NTNd8c/A6sqJM+Ewn7xxct/c3UMDPnuXbOycBCxhe/JCFhSeTk9VNMq4xZMfYcjYR
wLtIcY8zSiTy6i3PcROPUphF6hveUqT+IPpw3+SX8RJKdcamx50lCGQLZQcnVLm1ck8rBY+P0tLA
Tni+mzmRlRk5Ezd0imHO+ZMfhe6Ul+BfghRVcVyQcG9UBSFYvqw2HYk4fjlaqDkfYm0faxm/eWQx
RhTle83V/X+rH7WmJk5WQGsMb9CwafVa/qKQ6vBU3PK1ww1aOE0XfOn3WYj3/lLs15KgWmuBAEWd
rCUq4IgNh6X5gS3vNp8kpFeCEdcNXGfeMrBUrObF05nPgeKrO2CVb+nBxn4QHqbXq+B7+8RfktTd
o27JEtC6zhnCcY+s7hpxLEafURqxFgYbyAUIO313uGT/UzzhrImJVQm/alDFiiBCn5vTHq0qS4X9
PkLh2ivvdBY6Sej3NkRQpkAkWMAy0jWNbGMvAqkFNOjHVc7YhEiJfia8Oul9+LyqGf5YTvRjFmGj
aTc6G2l+/wHxHg+T1k6fT/788Qlg91eZi026pT6C9puhoy7TLUC8wwE3JHHD0v7jkpbQtigJRUpz
Jvyk79B186Z7H/Q7HtdX+jDh3DuXrCmX/z7PavMgN+pcUV1v/0QEfr9Kzf464IprpfdIUwQsCn/t
sBnvI2YNpqaAQkQcxDGf4ZB+uIgnyc1kw8jqZsFHRq1BWbLiwM3GhKSmMdt4IXywAsaHX/gcQblL
el6fkZW8uqGZIVgbOm7kfahbq7NaLrH6Ckd9BDv8/kFPkpFLV0qVH60an+ptJMIXc5TNuL/i2sTW
Q3rrUkX2uz8MxjZUSVFCpDrNnzpwxhr4Xf5bqtHkcvxuI+V0tZT/oVfr8eW5bCCbMemzcbzm1Pk5
XzvHJJfRVmseEiCnPhBo6zTjb7/yWYAEdNZwVeBe7EkIjqwTUGxo5VruUAHhJOAqhQC6my6lOqTx
KvIcY2rb5dMhj3MqHupODxGoHs6X+QAXmTHMuQK8fmqYn5Xe/ZOTtBBEgBKL36GmLx11VzAYEijk
+bLC9FbIaiWBSfcAe+0CTB7Mvfo0SJ7CmFGKn6u7VR8ujyrBmali29VlqGkvYTuZH7Hr59hALDiw
Px6htZEdB6EX/9ME8pqp4eHTjhHMavFr5AjNoBYjV+AWhfnt0uAWKiZOgdjnkub2GpbId3Dirrie
qKG66SxKUvzRSYRcUObcaZPt3SYK9Q0n5rtKVL3cZ89rljxgd7UJFFmhXNaDDYyj5UnHbeKXdTye
eRFADMR2lVOV2LKsJcFADyBuqgBEhMD7bBV518oSUXKKy0g1/Ub1yeNaPWsHp28uCpfS6QpWy22G
kSm5yZqwUn6Sa7GczlIrj+MM9OTZAc8oMK2pEx5FcV2PrUnpNQrqfWZqRmZ03I4Plz4Hb7QBRhF4
0HpAmPOTjTDNWMnBIIYrGIZFMIXLve5RDjTI4qU2apuuclgOd+T9+sw9a2H3wHcdVSa5FdFagLP7
IKkux5CAbSWXzkJBMDEeW5DdYl5fXb2ErWKt5Z4OznOKnKZZYGIdsH4dLLDorafXJhKGngGLcqGw
yIbnJ14kftGWVDXCNS7V1fuNEtvuffzbCj6gWeBcvZn+zuGSeMbBJhxx5RiWdlaLQ/L4ZJqGBmCE
bjBVh7eQHWxzPqai0QcZfkTiZlUowktSjlD+LJjLZMqsd+1GJBHde/ZCTQBqKkCBHzaJCYvX9gfO
fxRpKY5BwOipHbkB1PgYGnRQtReMGpOCT7X+Z8aOqiwKaOrdyFSG3lZ6WlGODza8LNkNSarTuzVm
fnQcEYszchT3g/GxGO3fv2tzzJtp0VtVLh/KJwPWNcIaInuD8qKvnwSiX2CCeFemZmlmIK8tJhXa
yYLmwHs1sBorDjbEen/GNviLBWTPgsx0lt9ObufO0LPSSd9NAU55HnOT9K55tGeLPmx1de/tQiUV
vs2rcXW7fcR4w3VdmjtkHG2a/3clY70Llkyl+o4E8DYbJmWBAKLgMj5x/vUrAgzpItcdPh24k+11
xD1vFzER1hoz/u3JAxb8e9vBz5vE+1+/xjfNq70u31ymAYKpLhPHW1dGvKo8NNt9lHI5FNt25Kq9
0s//a45JveNti+VL0EwvLDkCjYMcoQ+FxijWH30Rq5Ck5rV0mVjCO+mcCO9sRH/WGRfSV7PQondI
5cAqg2qUytwvR3iQapeVU8w9vMY7lxHfFF/Mat5hM3GxwHb/onKCiEbsjYHNlXiCweC3OeazV7ai
QzVisi2bob3ta99MlO2RTIAv/hmFBehipnYCmuGvMrkqQkEa2o6DayCJMoUFtzYz3EJRzaG5yzez
bW9CeH24q9+vW0MZTEdJg41DBlh+kf6YG4TqcXIO5uivm5Pc/cCqfEgxd5nDn1jDMf2TShn6La0D
B+gZBv8WzLiyNJCfqTKZAGHGWsBGZPj8uoMbS4O5EuZvPZhxCzqHdfjDIX0Mg91dqSh/ZqEhr3Or
rUo+DPjjCGDJwmNkn+p02TDkIeZK7msRs5pz/7XkEs9vEYlTv3a+7g4VPvpg/fAe0Vv2SCYtjlSC
6BcS2J+4y3FGOtzO22Ow76Kx/xmnGRS52yCScFDcmT4sWuJg0BIn1fPou+KCRWaPQFvMP5+LiYgo
424gu5qKT77vbxC280ihT3tvNrSatJcVla85+ejr/w09v5nsgpjNr+/ncFfkRPOmtpGf1HDp2Cvw
qP7gfA5+1e8rThQavJRr9eDSp62cz5NtBzJK7IzB2ZC7n5SaH7X3rPY984PD800OXcknnaUJq1lb
Bo7Fd2GLph6b5+lh2o2EuoWAki/bdCu77VC6fMq/0AoR09EpvRZ7TxIIX/CprS6LxLLG2zQqU5oD
5P0eZ4sgC0AZh9CZKrtffWpMDI7MTNpU/9M3GnHBPkffwvSqrNWbhccb4SAxrGwXYPUlyr17eXhU
ISluZGOmNBl/dEpiKd7R/09j4OMliYya+nnwTnQpwO+o7kTT2x2mOtgJpPPKuQbkf7tXJrfdO42F
CZwbIJJTw9bL126fNO+bk6RRByKrNk4UN9Gnccf9q9EvsQKnRFRifBK4sapkpIWRwOGbC0g3DnG3
4x6fs30+zUFmMRtd0TrjJYpXCzwNOhkcHTQaUO5GkcRaKZkuTKdx7W6HMHD36IXxCJSy5cXnvbl3
0NYImWYQjPNz899xOAEtnJrMQ1JiT5e56NSNrc2iJe4HNsLskukb1OuRS6vEDmhOoW2HM9yYoiAL
DAHtYPhy8CMC+klO7H1cEGv8CKvlOKLtR9A8gWyYQjeRDFt6JcU8EDCfOw8JbsSVN/Yw8H7/QJlZ
dX/HikZ6dJeoIEAgvwQJoF2BYt7ssSM1SGqgIwSRYTcixf/hxJQknlMlMJQJ/KesMw0QPeQgdBd7
XPGtaCw34BRkTEFFn8HGOizzDOZ6lwcH/Nc9jzVR2ssIglYWIkvINXVSNBSAtdtH5MZ+q5GycDer
eKwh+9VoEWcbr3RzycWO+DIV8Y9KOv5/JSMqyHD0vcZAAErh3+RCOro6GP6EVBJr20V5fQB+DDEx
lmYGmPSG42KqWm0cA04lNVE5lTaG3KQfItfkR+NuNX24eX2d//DcW2nR7vTvsEWUDwXAoBYMBJ2w
PaDWet+24CmquYo6wyYAnpFNuSeLlm/AE4ynH7bi04jzYCeYCSVoxq5Fs+zfap1F2OeDkI+oPJUg
6h4g752t5uzx6FkHZNEgIEk9kVOxsws7GT1fP0TtjxuNDDlyVeS/xw/8oUi1lqTmr2+nKRRgUgZ1
GtRPbG0QGXVyKE5BAyK+oAiz+sODdSTaTVcz4JaEV6YZaRvF7bpfhq4Ru8ll1QqZpkPvWoJ6QKBJ
uwg8PCEYlNMaNxokms6EeR9jMFrVYUN6a6giPBW8Yi04wHovbiYCctt7Qf/TXomxA7aZLS2taQTu
QbESB6PgQIJKf9vNrlGdBpf7hivqXRCq206J8tksX13EvUSFxQv/+M/tNMzOuoGOu/bMunH0xOlg
6w+7LznPf/xjyPLSBxgKHwB34fW7DmHdUxi+GkJg7QZR5hB9i4JHiJhqW67n0njCtAH6+H8hwqgS
z911ewRXP+rUiM8k2k0kWW3qG2RI8Kj8f6dGAqQHkS81kvFYANowwHLMmKUYJObzy617WN715oZO
WByfcl6FauZs30BJiCcvk2lhxTP4mVnXD5pHuBKg0wM7DTivfDOVHGU97/DTku0pBFrTPXPxcKv9
ErF7Esjgwj5oGvbdPRptlwo7PYdORnjZnGz19MA4PzSIWcIZSUcT0BT4hk/m5O/qVuPICea2HuQV
XvVwJu9Sd7d14BxB8WwKlT7EiEQnp35KlXN+6lA8MHF2v7khlSfH3+aQ17GoJkFKvcxrLiqJg+OG
tMMyKTE+i3DVgLXHlMaaUcFa3+O9pXUTZ16YI8aYtxQrGaen5wCxR+QzVtqis0W74DAYfKOg4Zyx
sdKp3Wp9QdvyddJg3ihYmAFJEp+TqUhFtk4+Q8hFhE5kE0KFV7SfG2ZwNmmYeQyb/v8vN7p8ug1s
41IMmqfOS/I7PV81vrd65bcurdqUX2dtGGV67B6AD4giJlzJXgEVK1h+T25WSlOFZd5oRR8yIi2N
7h4kQA/CrMQ6w7F7fzmtUhoO/BVy6Zwzf5oO8wfwFRJEgqT4QtRK6fzoxRM+I2GjGESjLJL4+fQl
FX2LZX2dUyS13DOUKDk/CX2VGzBAnKjBBLvz6On8XKBSR/nbtSyGi5viv84/q7yL6Nk+7/37Bel+
j62NBCceev951qdUBFC4DbIX8obspthQ+VP+RMCkcRkzcCOATR5jeYa3zAdvLcoGcq2+qdSDCAK3
Hw2+OvNbf6EGz1n8dVqMXfdaH054s19Mu9SV5IIcxGGaYz7NXVjBLdJODr25POepGRVAq1dpIRVo
88qVpvzj7M7EG+zEDRzHtUU5588UgKe1mClgSOF2UqTjNZK52f4vq2lPg8DwRCEDeyjcH2sWTKux
9xEzXApobyM8ObJnY8W0VEKwJABdusV5fybnE2kUENn9JhPO1K7kl6xx+1ChxuMMcBn1JVmWDC94
RhbqsKsjqf+1QOuzGgaOqnwxQtYIDeKI+DKrYvPIraOvII3QkzSJ6wvOD0Gr9oUmnXdm8h5bLVVS
ykYfnBmvSTbKZqF07lmtrSCbc9Z1MlwbxmQ/1y2UxZ9u36yTt/jdsQSTob/P5DzyVUBkqx524eZh
362KFsxhqpRYg9deD4rkNLjpiJdaqVVBsSrJ3Z+FdoXJq/1+5A0xJcYILcFBwjijskk9tZips2do
wHT+NtG+FYPBnTGOffRIA3p35yTqlb4z3jt5FwKW9BWvzENOloO4LkWTHJPo8la1YSR3vFh7lEGU
f4MSQ0UygTtVH9vuvW/MWKCkTr/OEfwCGEppFrNv+HlMHhau5Uip6p8epz8+JlHH3wPyg7cZ51lu
Wj4Fh39FvM+7luaYY4JStrnRcJPCR1mOHtmw9YTssq2tr+Uuqm1sBPn/5dPjZoUPRxmERddt4Uh5
EKnG5BNP9V+jWgxNqv5H1QW8fV+yNDDv7CoFQ6PQjvao3q7k1eJ5NTd1tLy8e3bCB1EL50d90mTx
+7ic6sk3enq0VePCQpQbjJxIh35rTVcuJHRRlTu8NwWzb1NMyNeWZCSSVa1h+g8pF5a5GiYr3QdP
Oqk8LmOA0T5rGm+T9Ikh6K6thciWfMs2H5P2m0eNFHiZpW8R6EblFHBUgsn9BRvOSlL7303RrNHa
65Stp5PA2Ao7DK8yQ92FeSZJYeTsFYn4RZ1oeXXF1k2LukKdglhIpYJ9XOZOxVN4H7P+mHBigyMY
xguqlOeq5Ze6PfpxFUTRnP0KoQ0GYNxpE4XtKoEOKanWTCYwy2n9spdT4YUeMvlFduo1l6ABQj6v
F+MtKvHU/Idkk5fxmkgpnq9k9PwT8+z2mSFjxIeJ6UlU9FRJkW6ZpcdFGHM5p/UXXQKjfhwHbw+l
lx72TeK/S03xVXQ3I7cjsyYSKgK3OIuabyD4rMRHnsMj+PmXcK5SQcjuA3ABJwiXsING0lrlb8QM
7+r4zEZkD27oMhcYOyuaz3qu6yoCQieB4RRmKkDfuFD+wvIHk91hZTXIDA2WtVJ8HHfqj01i6k37
jMcdomruwkT6GixUfdEVUZBIPTkSWibhMUtLdsMsnFadhWXrJo94YVapchBQdAsOCVrC/jdODDni
4Pipl8HzuPW+tvF5gFu7eje2gXD4sh5lhLlgzmeNV18/Y7gS6fVRmOr5xVCNbq0ypsQ0zwHGJmH1
QdXJyBViG8e1d3qpDgi0l6ceFLmqdDL9ymeo0CjyG5UJmOB123tkmRXBkE9MrSp1Oe/r96xW3sYj
yDWNx3nrhfOuLpIeiUfbk0H3ecbT/QYOhZPIj+r2ok7TDZrB9PK+EaUOv5LhF8v7NnvUGk92dupm
4we1In0KUvYv1eohfBWR2k3bkYzvxn9Pkn/w/LUNjGDqGt2e2UZde/DKCsCKWLEKZVSHhbrMxinq
G5kdKrcconrJvsX312QN4ARPHnpOdOwmshdgoW7RB/oLimeC6azVBr7GcDo/H8zyn+uHylH03J/C
Q13/zaTfHOocxdkUGXGKqcDhoHaOefeyk8X8geXmPg7F95nqBWV3oGvo42UnG1/PW2828aSAQkeV
DhgrYFoGzXNLSBi0aQdl97/HLmR1tCuCMraUEpUopX/wunwWl/BDGqBKScGpJ8M4kYAozNi3v0Dp
Filc0Lvp9F5siSJ8eRw3Yl9UiE26vXPEdU5E1pUF8IxdQvDVKGJe7LprrAJh/yRD0lFoflIYox0K
fQeonlpmkoQ1tgH4rp+eJ1YdiOSa2OVC4C+MWCi7v7Qeqdz+l0BOjQW19QZqsTYEXwPADWalxtzr
9/Fmifs3OvuOgLtc9kVHdBGI2XTBOvmhc4K0xr0jGeU6gk+AcAjrCvEJ+dobqnOqX5gTZNMyrkJ6
xsimB75p+ldBabLBBGkajvS41lgIMuHvPhhGT8XcZa9YnSY/sXnZaXjIDOis0U1FZHTjY5SnnyDX
VuZPlvaO/ZII61jS6TXMS+398tEi7dyeqdJ/Wvpvf8vgghBtKul9m8xnSlLzC2N6JF2XIeQO/a4m
cWIAFisR0E4XpPk9RS6Z3l+5/uYfrTaoXOBbGEfWTp8noBwQGPgN31NSmtZcq68VJxI7KSZJvtyh
kAFnvlHv4paMSSJPlTef0JG/g608FObaUhmahkl2AqzQYHdnSiwHSNCYOD1/ZEQ8kZemdZj2G6HG
Y4nlHufU03pEkcOLGt68S8vVwUhQZRbc6kDIuCEcZXtHNRI9hn4PPn8tY+IL2Emzh4Ttwd3ogMhy
5p8BwBG8/XQZ3yejsyT6QpU9PBqGYLj3f18lUx4Gl1vgiemG4U9FcsmeZcyHLYAjdf67mGTMZNdw
OVJsavwx9qt0ehvQNSXSPhd2/GW2CN0bUAnxXC+Vu9ChXQSxMvwsHlva9hd2cnX/QVVjNHURAPXa
KPawDdH4pjL2GdMZn+MKnAN2JAJ06Rl/dr5/BvtqQ3waOMww3J8jZXESWMLqtZsA9MzqVTDXc7BT
BS+XmBBer/JGcrdHgdxf3OEp08rG7rwe4s92783li7HE2y3oyX2fj5qi4BU9m4X4a8uAEs1WCNX+
unKK9h5znOpUJaX/6Lbo+L/EJu5yS0OZ6XqYA73VQuGEhfwVBBDqttzm+/KBH8r4JWxkrOkSk4wM
6O1IcmXjlM5FWwIZUv+G6VRcSzTRnllUT1pCEhongzWfK+kkQhOVS0AN9BJM4blGlz40Z8RnR8pz
rj8VXRxhTqZFomNWzLbGDBmwNtAVP2A14qr2P6/uy4hXtQy+tDzN5mTHoq7k4DbR0sUT3P6dTRmZ
aA7Ee0FNlw5VnaCzQAjWZivBKxadDhRizz6kr9nz8JWA591InI0+ZTJoqcPdcv0TbGPp1jINV0Ow
z+nwB8ZSoacrxvEvtslrC7LocmalaLdVyyOWvMRkztSE6Ulyk+iMev965UUR+s/a3KBw4BDavFnO
TzhbKYSaWv/NZgxXVtop72OguV0AOUdJDXpZO+9Gc0KLC/z4QUpkH3YVHWxDAFChWmb5J4M4wTsS
8bmhOL3f/6KYuJpJMCucaBuShgHKf6E+ecdOmNcj8UX50EU6tJmeQh8fwvDw0v1K+Zgk3v1iS9pJ
Iu2cHLJS4LfeE+XHMAqdWglBBdVxt8Cdh4hT6+EXsyyzRIEfPN4R/HOI8fnD+znPAkWbHn10zJZk
XYXcSVYNL51eleVedriheir60luuTtmB928DYbaNE7j2pvPrmYyZuWHhgfCE+X+2eKfTDavcrIKv
9hqnfeChqIsa0YmIjJ2uO0s3ZhXKMB+jkuq0XE8kxlt5LxfMsOnrckQn+3W92cK+pGjTIrTfwvrA
3OMlicRecUfjxbgj5uF7Ie8a0yu821Wa9CY/ALGHel5DtbWiJ1dYlmTrCgdF5KgMWp6yLs8feGP2
ymMMI3SoeOE19/IfNWpOm3U80+FgiKBg3MYecR850+elzqg7NEZJOXDECpFRTzMBcOc5XD13pcal
h4Dbia4OJ9qtge+Da9ksnb5R5VYhURb/seZSvX2W3LMkXOY+rXMtp7/M6oCyHklZ1qam7pNZRRFl
cSWtTKTxUSzNcn1upgX/zzfCODaMSyzYgVnuh7zWRcqUpOkYi6VcCT7SlTlyBP363VluVDq1+Lai
DekWBjARSR5z57Wkjk4AZOCcNfgti8/59o7RwkaGyRznCWbEuD4aZ8QW5gWBtavrIOrqMSrPjR/K
7XItEUyggfPfxT2X38qqnFhQOeddQBxWZMM1jMppv1PB5MtYn3GueVDS6uPzio+YFFYvdLROdNWz
lz8g42iO/wlAoscD1iaqPrnzbsF9PE4TfvfH4LlC79R6W2t9U0kdB4HZ1VBBP1nyh8jfrGODi3Pd
LSsecdIw9se1rhgMM241LEMcGQdegWW6KswSWgCebo3k1xsweIZ8DQ8JIisy46myroJM+6nFR2vj
SKUxY+pDHlsemDwdeBwhZfQPJHziFw1UJw4aB5HbJLJFjBYIoGLy8eZZblwf6pb7IDJPvTnIeaZr
muGEIVlm+2zvo3ijF07q/omzS0UxId4h60ZINyc8EUxxi5ydJFXLTykzhFCzJXMhUry98Ethcibe
IZIxM8o+qbZ1V8pOV7pxaLSFdnGB2u8+cUos2irOS0K7JpOOdhxYWly3mpXR13+YvT+q7oXsdA7A
vuo7e9dnwP3Gi8Vq/klh01H4tbs+HqYA6OxIFiMaYvbmvKmwZzdcUoR775OzkR/b6t2b2qbZ9nvO
Zpdk6HBttveNPW0VM0Tm4t/8MGov8RaVzB9Q9yv2EEi/9W1WJtx7pcOx588K20y8mGCX1MvFDHkq
ZpOw0I4lLnXEc0OxnJ5kkN1J8QNuDfQ7Rv4iBv8VdN8C2yxx86sHK70Zx3WipymwKtrStZrMgLbu
PDSpwen5x5+RtuM6PNlj2yokedV8N0CcdDouerSn5G9cB+luUy9ft7OewWRXwlvewsu8WFgi3s89
5msfGp9PxvxoAV+5oDY6e7pD03jisnZNnSN+MeLPt9FRQQri46WH6CmNdbZ2wNjVFJhSDpX7rMhR
KYVm/FR8mCr+BjEgw+FKxttV8Ag956nMZy/ho7rmAbIxYPfW3QJJHb595qS7SJdxLHCy3K6/DUQX
ZTN3bs9E55yXEdP533hTbdMjzCakMveL3VSfRlocLQY3JOKlIXP/swsceqgNJVLy2XUOzUL8jhjm
B0juz7CW9tCjZg2dy45aEYpuwSzTKHjCCqUon73CQKKe5vW/OcWIJJgUl5veFvldnGHkz4eIZgY/
6QDycW6P+jshpkzNgI0MH1DTIMIGjGnRJ0COiRSSmOEq8b4grJW4oQ/QMMy/d+vxIiuW2P1RnzDs
1kfBEWJj8ln0uWn0UNuCCyu3gRrCm96DqsNLSDjG+dXw/FkYGaq+Thhnt9u/RHCtW2SD/g8YMwtg
mPV0WIfVwQ1vr7l3ciGIRF6u38JPNDFatALTyPZ/nZNI8AlMTr22Lad5dHaUrKXgHSordaz38YsN
b+DwQBF1y0TgxyDZooXiPres9ecw9MLPBqNwjoCsBI6QCoxjuu2Hs1omkRMeJKlHOpN8uutcSkMD
b7lRVhJAwIASSHtNxcId7Vofh7JM4QMHs4Jvbat2s+wFC95vNzBu4kjZcUOM9XeXR5NGr0FblFH3
50Iwm99IIr/MXJEZFajeZvMe/jgllA3zWT3SUJDVXFSNztIiQCqjOq+1qjDMFxptxtwz7J+wlHMe
LAmiM1GiDug1WqAmg0xUfB1u6YSy+2rcKrP0s9RBlYa//7PSCyICjy1WQSswJbw7jPFu6gWAKmad
C9LvKZEiifMV9b+JpaPlnLsx5hijbxCuYP7/l+/KnwCbrcb8FBvSa6H+xlg73F1To5zlfeBhCsEn
PiexuC64ClzKSyrxzi6RppM8c34U4MI2mDj+jzBv8sOPjMwp4Pvv5vjCstOtDHfTYdtePIWQE3bq
acf7QHkeHJvYm9laU/6twtw+iPR0H0Isnd9hJOZ2PcaewRiCuKkFU/rHT6eYzAvopry0N3ZQZsox
VQms3gc3DZCKSDdrNgwNJlfP+RK6mzC9G/i62CLS0GpWdM/ak6ibi+bpl8fStTCe+85ZGJrL6m6b
t9+gWqo9i+OAgxvrMHhg4TPvD8Y44t22ypmyYycrIMDZThzw7dsCnGCccjeQ0iD4qXUq+VGVRjl5
yTsSPvYv3G2eXsqti7u6carnaq0m5en6zuW8IqZw4clx38DFKu6i+ei+KPtK0OO/+nkPS3RbnFUW
PvL9ysfylBzzy8NFUGVRrJ9ebDLD0vOafjmBOCT5zbu0svZPQWZKFCafAZxMEvr+kCRm7eabSzk3
aJZSqywmkK46dIin/G/n5HLoHeJUWfKUjJjLDd9B4S8McErl0YiiSJkKWZEPysZWio3oQ7Lemp5Z
x2sStw84SrxiReFqjFGn8Iz7Dgv1TZ9BAqYD9cS35vOh9Jz8buRSS5YxjyiJZE6uPt9lV/8RrjlM
3wGzYvJemfFk4IIyYo8iBTEf3rf4NdXmH3BAaKvDrmmiQyZUi0rcjQtIOffuAjFyhPeonxl1hFwD
qThi0jlvu6r9DqAz8c/H/6JaHZsGgAIW1bieuw7Vt+aO+rTb/ENjkCXJ/AyItP75vBB1RXkxJEU3
IUrO+jKxyozVdHHmJzyfgNLHg26RgnzXgt1Ok0WIEZpBSBw6q3ZU4F/RItKCo7qqhZ4V7ZXQqqck
H0LBuu0eB1MA6NFff4/dn6Y6uScTpvmvICUaR8YG1blRh7k7PclCGYPLNVlhiP+2t8G+ire0ew8a
mxXBj3cFhA833/AL2XD7FpapUhlPoZgH7Nr14uUZCR5VprgDEG9gVgTvhc7bYLudpwWU1NXMw3eX
WCB34UPkt3JPs5a9/32ERBunUN6bLD5AHY17yApLLOD8BkXX8aYb1GhLWJBuRg1lmJh4ZkDR+Z6U
TuCP9qG0KWBMLvTbV5u++huyNGlEp8KAQBsPXHaKWC/NxrQMIOEEIlmBxXObZNJBRDoOYoO/arEw
ZhWclV55s5h5b2AdCDgypZOWEbKO1D9KLHgs55Q73l16Qp3Rf29+8/TXQoDwHUBuBgtgz3aXf0u6
IlrBqkHJ6h1ubi6Xq4BXqY0KRgNmelemBs8CL9KXw5dD/Ce3OrwxVIA1kvY6rMS2XUDW1BILiChz
r+7WePhNs38SiZNZInaK7szz0jc75s4qIKNtknic98Ms+ldvUd49kXT4QGHVz210AmzNHrcBbWKJ
HVfQz2FP7hIgd5N3RjO9DVrQtk6AoJP1YjKoA0uqzGXPokdaOE+IZB7Iz3KYfvivI2BUsoNuZYIl
fwyvn4uAsBU6rU/5Go7SLYCpNNokpGNKRTd/f9j4vEErTl33KLw+qQ56baTaM8nY8rAqug/un238
6zpz7Pb+oXE0TMaMPgiWnFgFNGy53u5ZhhQf2Tvq2ruhGAwA5ntldusWY+f63y7o57zyfncd815Q
EYnm8WfavthAutZPLyA/+cQgiAMPm4Bi0GGV+i32pdG8OAL6ZSDtL/7oTKwbSbkO98yCLdy1Iwvh
sR/cNpor37ie5NAFms0ou0/NENxwn4HLFmHePpP8PEs5aagFNRK5UP/PS+VWZU6HFUXaU/AVVIAl
72ItWvEecAkqu8i/YNipX46IzgLgAAFDLQQNMefAgYam+rwvuNrPcYB2eDDuZgN8ydPKIJmnShiu
eXr0pl4rAtTMaLyyZL+M2XfZJp0hbMNnwg9O0RkbPhlUwha8Z7mpMc3ENqCu+SmD1RkhiG+1l1c2
Ku4ZjRJJ7Bb/lDrrB0VoV2eFcBlVUr8KiFCh7Gg9sMxT9LKjwnDzor8uBtBKVUYv6PVSm5weUIyQ
T9HeB03+4FkuCckI0dW13fOauYDikzAHxQyK5tGS7IyXW5rpmn6xrgowAQ4Msea3mlrp+KiKUuzk
rhhMmx6EtohkglyLxtVdbl+NN6RWVHPsDE/zQS84SvMmTmMP32izNOclaYE6n/HPpsKLCh9AxMD3
1/EO6DTukfB6qWUMXohXiuq4cSPgw/+qffeHQcXvuvJFYMIVNJY0Lc8ZPrrW5HUOjdGwpmOPXPFe
D/fYW74ErOAWmH/YsjLXFpKZAikTApNJsOShb9nqEsbGG7eDatjkvvHLv3VvNrq0jVgaRjcBd1Al
zG8AdHzeVvT+EbtBsve7GzuhuUAnpieJzTdf/wm0T3yUDg8EVgAOp4DahC3sVBCBrMX4+k0u6sBC
/hZDSzY2d1/Fr5kKxooxdCbsDGNN/NT8SrFDJfHfsIDbAdvxJMkCg4Ho/XFyIdt/PfpQzWCs4X73
SPmHTdt1XyZSheGdDkF/W8Wkx2gaigA0wpMF2YH2IAEnn/RRcJrZEysRSfukd6E3r68I1SalXMs9
WJY8uZ5nln2lx2ELj12XTE562RFiLHBsh5UUuaaoHf8DigMw7oBbJEWzBflV+2LKutKHQNNildXH
bv2/mNEx6U7a9brSPDwGLid2ihgK7zhCS5iwH5O+ImsZM9ilHyC9ElEnl3504UKB+mxBX8CpDJjH
0f8ecpPAeeFd6nIL3DvphBBr/eHaJU8fieuc7t97BZNqoKQBnxFjlnTFZxXRnzaqzJ5aNT2QH6mp
y+KBPYBme7K2z/kdI1+iG3U+EKFBGMMg2kUbEU+aeZsD1nGfWv06jccCWcwamVICKi2/qzsKFMcv
Sfae5oWl4jRrUt1hVHLXIQbcyOFDjvh5kJIhb7uGHXn5jWEZpV3t+fJP9kTulFwVIot8ue4kJHxE
I7NZoLI2ywgw3gnjk6CY43YZKrSdYHcIkWtv/UDKCJ9pO3I2lpkVLpt/e9qRsBrXZInwK/i3K+XG
pJfiYiUnEHX0PgXij6EEmK3yBkVS0Pjyd7KIDHSTvI+XAakOnPqPYl6VGSPUtobuZSSgUYygLmWC
0X/JtIh+axLQdf8w3tOizf2UYyRigyeK5agnnddf5tuWa+83eo1htjyt3f+nCmAz8w6kzaBbueVE
0g4IuhYwpxCxcMCLBJdIC6HDsxdBhCPwaFv+Go6Nw6v+AZI5pr55i2pquzsjUM1VUjqpYLQiiyQi
5nHIH9xf52UQOQP5/KJwA1uGPIegMNE3gmKMIonQXS5pZ3mQ0o8kVbL9ue+WxgwoHyXs5FIzwjDj
CNu8Ui86H1LMU7idv9cx2uIbZOgHmlGjObDmNQT3Oshklg5bT+lO4jtGWCTIgVBAHuQk+sQbV4dV
gtlu7Xv7Alza5sc9gqmmAztqNpRKPLLKHoAYkGmCVlLgFJvsdJ9UBInoIfKARMIsOsjtseZNVAKA
NyCWXRvKRMXF804MAEUldhE7f+91tigB7C+GETb0jUWvpARUss3FCtC3ZbsQbYFR5quFq4uPqnqr
Y5DYf23kvQg3r12OrTqReqUeDGzxHw6n4DTOKzIlzi+xbEUfnoT8shyjwNlHhTItNqQfAOLJfR6F
gyNsfqXsmYKjujYyyF31ky49pr9VwH+gLkYUpqC3bYAyXI+lRskOSGa0m+mb674H2xdx82c5yx5U
Y6PC+PS4xUmkLe7FuY0qvVBVHMLrqd3f18BtKkHlj76+gm0de4knihb14WkFG+9eNAGAUEzt3rOC
93WY73m2o8+kY3cgI0dO8P7fzueePo5gWrmgiuILpB16zFJ3/m7sGyfiFZgLX+M/mH27G1qcwsSJ
wL4eQdEGDDSqUTele6gGtqZvL0GrHRE1QipqSGk0Pui1K1cJiwc7FvHZgKZQTEY+a3z/CnpWTSWg
Um4eI1mT/GXBijI6SjFc+f90+Jz8mLuTKI7umBSJOAf1wqbzH+jW2s1/xWCPEgYy3YVEkFfVAEuS
/yKEojC2f/b1nVjKQGcKMbBH1aHZQOaw0dqAAZzrCxYkbflKbYNQ7lWL1D7mB0opE34jGrecHeHg
Ogpy7OjwmbNzjRroX+v3G76XfBxBAyqxQj0mTcbM+AQObLFRUnBMfjQ5clUXxKk8eAm9wO6sKmJ3
n4KXNXT2ZLaYmPvKOPR5Z2rQgQVi+hDu9Hb7jxozBxGJPI2s5xlo7hde3Z7V+eWGAJRRK/ZWjvpn
uSIBn9d/joAfF9HfjDMMjNt6qo54oUIqi6DLh4BEaw==
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
