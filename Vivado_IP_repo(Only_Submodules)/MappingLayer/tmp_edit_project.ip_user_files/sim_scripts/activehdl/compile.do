vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/xbip_dsp48_wrapper_v3_0_4
vlib activehdl/xbip_utils_v3_0_10
vlib activehdl/xbip_pipe_v3_0_6
vlib activehdl/dsp_macro_v1_0_2
vlib activehdl/xil_defaultlib
vlib activehdl/fifo_generator_v13_2_7
vlib activehdl/blk_mem_gen_v8_4_5

vmap xpm activehdl/xpm
vmap xbip_dsp48_wrapper_v3_0_4 activehdl/xbip_dsp48_wrapper_v3_0_4
vmap xbip_utils_v3_0_10 activehdl/xbip_utils_v3_0_10
vmap xbip_pipe_v3_0_6 activehdl/xbip_pipe_v3_0_6
vmap dsp_macro_v1_0_2 activehdl/dsp_macro_v1_0_2
vmap xil_defaultlib activehdl/xil_defaultlib
vmap fifo_generator_v13_2_7 activehdl/fifo_generator_v13_2_7
vmap blk_mem_gen_v8_4_5 activehdl/blk_mem_gen_v8_4_5

vlog -work xpm  -sv2k12 \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93  \
"../../ipstatic/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_utils_v3_0_10 -93  \
"../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93  \
"../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work dsp_macro_v1_0_2 -93  \
"../../ipstatic/hdl/dsp_macro_v1_0_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../../../../mapping_layer/mapping_layer.gen/sources_1/ip/dsp_macro_0/sim/dsp_macro_0.vhd" \
"../../../../../../mapping_layer/mapping_layer.gen/sources_1/ip/dsp_Requant/sim/dsp_Requant.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 \
"../../ipstatic/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93  \
"../../ipstatic/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 \
"../../ipstatic/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../../../mapping_layer/mapping_layer.gen/sources_1/ip/fifo_generator_0/sim/fifo_generator_0.v" \

vlog -work blk_mem_gen_v8_4_5  -v2k5 \
"../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../../../mapping_layer/mapping_layer.gen/sources_1/ip/line_buffer/sim/line_buffer.v" \
"../../../../../../mapping_layer/mapping_layer.srcs/sources_1/Axi4ConvCore.v" \
"../../../../../../mapping_layer/mapping_layer.srcs/sources_1/AxiMappingLayerTop.v" \
"../../../../../../mapping_layer/mapping_layer.srcs/sources_1/AxiToBramDistributor.v" \
"../../../../../../mapping_layer/mapping_layer.srcs/sources_1/PE.v" \
"../../../../../../mapping_layer/mapping_layer.srcs/sources_1/PE_Array.v" \
"../../../../../../mapping_layer/mapping_layer.srcs/sources_1/rom_weights.v" \

vlog -work xil_defaultlib  -sv2k12 \
"../../../../../../mapping_layer/mapping_layer.srcs/sim_1/SystemVerilog/test.sv" \

vlog -work xil_defaultlib \
"glbl.v"

