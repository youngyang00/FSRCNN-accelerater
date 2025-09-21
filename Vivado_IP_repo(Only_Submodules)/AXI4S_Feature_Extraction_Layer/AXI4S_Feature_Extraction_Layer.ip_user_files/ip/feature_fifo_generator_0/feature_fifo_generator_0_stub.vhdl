-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Tue Sep 16 14:20:42 2025
-- Host        : xylo running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/emergency/FSRCNN_imple2.vol1/ip_repo/AXI4S_Feature_Extraction_Layer/AXI4S_Feature_Extraction_Layer.gen/sources_1/ip/feature_fifo_generator_0/feature_fifo_generator_0_stub.vhdl
-- Design      : feature_fifo_generator_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity feature_fifo_generator_0 is
  Port ( 
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 12 downto 0 );
    axis_prog_full : out STD_LOGIC
  );

end feature_fifo_generator_0;

architecture stub of feature_fifo_generator_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_aclk,s_aresetn,s_axis_tvalid,s_axis_tready,s_axis_tdata[127:0],m_axis_tvalid,m_axis_tready,m_axis_tdata[127:0],axis_data_count[12:0],axis_prog_full";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fifo_generator_v13_2_7,Vivado 2022.2";
begin
end;
