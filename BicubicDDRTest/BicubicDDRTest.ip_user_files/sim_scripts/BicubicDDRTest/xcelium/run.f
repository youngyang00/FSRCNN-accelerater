-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
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
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_13 -sv \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/zynq_ultra_ps_e_vip_v1_0_13 -sv \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/abef/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_zynq_ultra_ps_e_0_0/sim/BicubicDDRTest_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_16 \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/6c82/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_datamover_v5_1_29 \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/2237/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_sg_v4_1_15 \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/751a/hdl/axi_sg_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_dma_v7_1_28 \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/70c4/hdl/axi_dma_v7_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_dma_0_1/sim/BicubicDDRTest_axi_dma_0_1.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_rst_ps8_0_99M_0/sim/BicubicDDRTest_rst_ps8_0_99M_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/sim/bd_442f.v" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_7 \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/badb/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_0/sim/bd_442f_one_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_1/sim/bd_442f_psr_aclk_0.vhd" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_2/sim/bd_442f_arsw_0.sv" \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_3/sim/bd_442f_rsw_0.sv" \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_4/sim/bd_442f_awsw_0.sv" \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_5/sim/bd_442f_wsw_0.sv" \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_6/sim/bd_442f_bsw_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/be1f/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_7/sim/bd_442f_s00mmu_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_8/sim/bd_442f_s00tr_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/637d/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_9/sim/bd_442f_s00sic_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f38e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_10/sim/bd_442f_s00a2s_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/66be/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_11/sim/bd_442f_sarn_0.sv" \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_12/sim/bd_442f_srn_0.sv" \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_13/sim/bd_442f_s01mmu_0.sv" \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_14/sim/bd_442f_s01tr_0.sv" \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_15/sim/bd_442f_s01sic_0.sv" \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_16/sim/bd_442f_s01a2s_0.sv" \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_17/sim/bd_442f_sawn_0.sv" \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_18/sim/bd_442f_swn_0.sv" \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_19/sim/bd_442f_sbn_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/9cc5/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_20/sim/bd_442f_m00s2a_0.sv" \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_21/sim/bd_442f_m00arn_0.sv" \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_22/sim/bd_442f_m00rn_0.sv" \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_23/sim/bd_442f_m00awn_0.sv" \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_24/sim/bd_442f_m00wn_0.sv" \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_25/sim/bd_442f_m00bn_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/6bba/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/bd_0/ip/ip_26/sim/bd_442f_m00e_0.sv" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_27 \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_axi_smc_1/sim/BicubicDDRTest_axi_smc_1.v" \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_system_ila_0_2/bd_0/sim/bd_d528.v" \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_system_ila_0_2/bd_0/ip/ip_0/sim/bd_d528_ila_lib_0.v" \
-endlib
-makelib xcelium_lib/gigantic_mux \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/e87a/hdl/gigantic_mux_v1_0_cntr.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_system_ila_0_2/bd_0/ip/ip_1/bd_d528_g_inst_0_gigantic_mux.v" \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_system_ila_0_2/bd_0/ip/ip_1/sim/bd_d528_g_inst_0.v" \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_system_ila_0_2/sim/BicubicDDRTest_system_ila_0_2.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_26 \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_27 \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/ip/BicubicDDRTest_auto_pc_0/sim/BicubicDDRTest_auto_pc_0.v" \
  "../../../../BicubicDDRTest.gen/sources_1/bd/BicubicDDRTest/sim/BicubicDDRTest.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

