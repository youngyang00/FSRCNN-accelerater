-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Fri Jul  4 18:34:49 2025
-- Host        : DESKTOP-DD0PJLS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Capstone/BicubicDDRTest/BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_BicubicResizer_0_0/BicubicDDRTest_BicubicResizer_0_0_stub.vhdl
-- Design      : BicubicDDRTest_BicubicResizer_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BicubicDDRTest_BicubicResizer_0_0 is
  Port ( 
    i_clk : in STD_LOGIC;
    i_rstn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    EOL : out STD_LOGIC;
    EOF : out STD_LOGIC
  );

end BicubicDDRTest_BicubicResizer_0_0;

architecture stub of BicubicDDRTest_BicubicResizer_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_clk,i_rstn,s_axis_tdata[31:0],s_axis_tvalid,s_axis_tready,m_axis_tdata[31:0],m_axis_tvalid,m_axis_tready,EOL,EOF";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bicubicResizer,Vivado 2022.2";
begin
end;
