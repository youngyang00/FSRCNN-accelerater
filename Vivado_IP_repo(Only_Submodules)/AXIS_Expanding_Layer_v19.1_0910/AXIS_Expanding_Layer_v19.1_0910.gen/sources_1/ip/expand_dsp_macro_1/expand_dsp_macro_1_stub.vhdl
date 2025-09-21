-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Sep 11 22:14:32 2025
-- Host        : DESKTOP-DD0PJLS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/FSRCNN_imple2/ip_repo/AXIS_Expanding_Layer_v19.1_0910/AXIS_Expanding_Layer_v19.1_0910.gen/sources_1/ip/expand_dsp_macro_1/expand_dsp_macro_1_stub.vhdl
-- Design      : expand_dsp_macro_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity expand_dsp_macro_1 is
  Port ( 
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 8 downto 0 );
    B : in STD_LOGIC_VECTOR ( 8 downto 0 );
    P : out STD_LOGIC_VECTOR ( 17 downto 0 )
  );

end expand_dsp_macro_1;

architecture stub of expand_dsp_macro_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,CE,SCLR,A[8:0],B[8:0],P[17:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dsp_macro_v1_0_2,Vivado 2022.2";
begin
end;
