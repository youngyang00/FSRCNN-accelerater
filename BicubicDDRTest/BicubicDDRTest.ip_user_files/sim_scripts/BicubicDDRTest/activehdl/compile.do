vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_13
vlib activehdl/zynq_ultra_ps_e_vip_v1_0_13
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/fifo_generator_v13_2_7
vlib activehdl/lib_fifo_v1_0_16
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/axi_datamover_v5_1_29
vlib activehdl/axi_sg_v4_1_15
vlib activehdl/axi_dma_v7_1_28
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/xlconstant_v1_1_7
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_register_slice_v2_1_27
vlib activehdl/gigantic_mux
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_data_fifo_v2_1_26
vlib activehdl/axi_protocol_converter_v2_1_27

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 activehdl/axi_vip_v1_1_13
vmap zynq_ultra_ps_e_vip_v1_0_13 activehdl/zynq_ultra_ps_e_vip_v1_0_13
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_7 activehdl/fifo_generator_v13_2_7
vmap lib_fifo_v1_0_16 activehdl/lib_fifo_v1_0_16
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_29 activehdl/axi_datamover_v5_1_29
vmap axi_sg_v4_1_15 activehdl/axi_sg_v4_1_15
vmap axi_dma_v7_1_28 activehdl/axi_dma_v7_1_28
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap xlconstant_v1_1_7 activehdl/xlconstant_v1_1_7
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_register_slice_v2_1_27 activehdl/axi_register_slice_v2_1_27
vmap gigantic_mux activehdl/gigantic_mux
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_data_fifo_v2_1_26 activehdl/axi_data_fifo_v2_1_26
vmap axi_protocol_converter_v2_1_27 activehdl/axi_protocol_converter_v2_1_27

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f9e8/src/BCU_array.v" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f9e8/src/bicubicValueBuffer.v" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f9e8/src/bicubicWeightRom.v" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f9e8/src/bicubic_compute_unit.v" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f9e8/src/colPixelStream.v" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f9e8/src/fifo_bram_quad_to_single_axi4s.v" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f9e8/src/imageRearranger_clamp.v" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f9e8/src/lineBuffer.v" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f9e8/src/pipelined_multiplier_2stage.v" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f9e8/src/xilinx_true_dual_port_no_change_1_clock_ram.v" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f9e8/src/bicubicResizerTop.v" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_BicubicResizer_0_0/sim/BicubicDDRTest_BicubicResizer_0_0.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13  -sv2k12 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_13  -sv2k12 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_zynq_ultra_ps_e_0_0/sim/BicubicDDRTest_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work lib_pkg_v1_0_2 -93  \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93  \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_16 -93  \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/6c82/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93  \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93  \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_29 -93  \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/2237/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_15 -93  \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/751a/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_28 -93  \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/70c4/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_dma_0_1/sim/BicubicDDRTest_axi_dma_0_1.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93  \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_rst_ps8_0_99M_0/sim/BicubicDDRTest_rst_ps8_0_99M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/sim/bd_442f.v" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/badb/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_0/sim/bd_442f_one_0.v" \

vcom -work xil_defaultlib -93  \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_1/sim/bd_442f_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_2/sim/bd_442f_arsw_0.sv" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_3/sim/bd_442f_rsw_0.sv" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_4/sim/bd_442f_awsw_0.sv" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_5/sim/bd_442f_wsw_0.sv" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_6/sim/bd_442f_bsw_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/be1f/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_7/sim/bd_442f_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_8/sim/bd_442f_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/637d/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_9/sim/bd_442f_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f38e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_10/sim/bd_442f_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_11/sim/bd_442f_sarn_0.sv" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_12/sim/bd_442f_srn_0.sv" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_13/sim/bd_442f_s01mmu_0.sv" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_14/sim/bd_442f_s01tr_0.sv" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_15/sim/bd_442f_s01sic_0.sv" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_16/sim/bd_442f_s01a2s_0.sv" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_17/sim/bd_442f_sawn_0.sv" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_18/sim/bd_442f_swn_0.sv" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_19/sim/bd_442f_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/9cc5/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_20/sim/bd_442f_m00s2a_0.sv" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_21/sim/bd_442f_m00arn_0.sv" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_22/sim/bd_442f_m00rn_0.sv" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_23/sim/bd_442f_m00awn_0.sv" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_24/sim/bd_442f_m00wn_0.sv" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_25/sim/bd_442f_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/6bba/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_26/sim/bd_442f_m00e_0.sv" \

vlog -work axi_register_slice_v2_1_27  -v2k5 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/sim/BicubicDDRTest_axi_smc_1.v" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_system_ila_0_2/bd_0/sim/bd_d528.v" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_system_ila_0_2/bd_0/ip/ip_0/sim/bd_d528_ila_lib_0.v" \

vlog -work gigantic_mux  -v2k5 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/e87a/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_system_ila_0_2/bd_0/ip/ip_1/bd_d528_g_inst_0_gigantic_mux.v" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_system_ila_0_2/bd_0/ip/ip_1/sim/bd_d528_g_inst_0.v" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_system_ila_0_2/sim/BicubicDDRTest_system_ila_0_2.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_26  -v2k5 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_27  -v2k5 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/1b7e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/122e/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b205/hdl/verilog" "+incdir+../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/fd26/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_auto_pc_0/sim/BicubicDDRTest_auto_pc_0.v" \
"../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/sim/BicubicDDRTest.v" \

vlog -work xil_defaultlib \
"glbl.v"

