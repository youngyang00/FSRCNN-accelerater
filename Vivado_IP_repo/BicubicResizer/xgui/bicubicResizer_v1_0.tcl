# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CLAMP_CLEAR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CLAMP_IDLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CLAMP_X_1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CLAMP_X_2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CLAMP_Y_11" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CLAMP_Y_12" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CLAMP_Y_21" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CLAMP_Y_22" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CLAMP_Y_Y1_IDLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CLAMP_Y_Y2_IDLE" -parent ${Page_0}


}

proc update_PARAM_VALUE.CLAMP_CLEAR { PARAM_VALUE.CLAMP_CLEAR } {
	# Procedure called to update CLAMP_CLEAR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLAMP_CLEAR { PARAM_VALUE.CLAMP_CLEAR } {
	# Procedure called to validate CLAMP_CLEAR
	return true
}

proc update_PARAM_VALUE.CLAMP_IDLE { PARAM_VALUE.CLAMP_IDLE } {
	# Procedure called to update CLAMP_IDLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLAMP_IDLE { PARAM_VALUE.CLAMP_IDLE } {
	# Procedure called to validate CLAMP_IDLE
	return true
}

proc update_PARAM_VALUE.CLAMP_X_1 { PARAM_VALUE.CLAMP_X_1 } {
	# Procedure called to update CLAMP_X_1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLAMP_X_1 { PARAM_VALUE.CLAMP_X_1 } {
	# Procedure called to validate CLAMP_X_1
	return true
}

proc update_PARAM_VALUE.CLAMP_X_2 { PARAM_VALUE.CLAMP_X_2 } {
	# Procedure called to update CLAMP_X_2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLAMP_X_2 { PARAM_VALUE.CLAMP_X_2 } {
	# Procedure called to validate CLAMP_X_2
	return true
}

proc update_PARAM_VALUE.CLAMP_Y_11 { PARAM_VALUE.CLAMP_Y_11 } {
	# Procedure called to update CLAMP_Y_11 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLAMP_Y_11 { PARAM_VALUE.CLAMP_Y_11 } {
	# Procedure called to validate CLAMP_Y_11
	return true
}

proc update_PARAM_VALUE.CLAMP_Y_12 { PARAM_VALUE.CLAMP_Y_12 } {
	# Procedure called to update CLAMP_Y_12 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLAMP_Y_12 { PARAM_VALUE.CLAMP_Y_12 } {
	# Procedure called to validate CLAMP_Y_12
	return true
}

proc update_PARAM_VALUE.CLAMP_Y_21 { PARAM_VALUE.CLAMP_Y_21 } {
	# Procedure called to update CLAMP_Y_21 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLAMP_Y_21 { PARAM_VALUE.CLAMP_Y_21 } {
	# Procedure called to validate CLAMP_Y_21
	return true
}

proc update_PARAM_VALUE.CLAMP_Y_22 { PARAM_VALUE.CLAMP_Y_22 } {
	# Procedure called to update CLAMP_Y_22 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLAMP_Y_22 { PARAM_VALUE.CLAMP_Y_22 } {
	# Procedure called to validate CLAMP_Y_22
	return true
}

proc update_PARAM_VALUE.CLAMP_Y_Y1_IDLE { PARAM_VALUE.CLAMP_Y_Y1_IDLE } {
	# Procedure called to update CLAMP_Y_Y1_IDLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLAMP_Y_Y1_IDLE { PARAM_VALUE.CLAMP_Y_Y1_IDLE } {
	# Procedure called to validate CLAMP_Y_Y1_IDLE
	return true
}

proc update_PARAM_VALUE.CLAMP_Y_Y2_IDLE { PARAM_VALUE.CLAMP_Y_Y2_IDLE } {
	# Procedure called to update CLAMP_Y_Y2_IDLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLAMP_Y_Y2_IDLE { PARAM_VALUE.CLAMP_Y_Y2_IDLE } {
	# Procedure called to validate CLAMP_Y_Y2_IDLE
	return true
}


proc update_MODELPARAM_VALUE.CLAMP_IDLE { MODELPARAM_VALUE.CLAMP_IDLE PARAM_VALUE.CLAMP_IDLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLAMP_IDLE}] ${MODELPARAM_VALUE.CLAMP_IDLE}
}

proc update_MODELPARAM_VALUE.CLAMP_X_1 { MODELPARAM_VALUE.CLAMP_X_1 PARAM_VALUE.CLAMP_X_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLAMP_X_1}] ${MODELPARAM_VALUE.CLAMP_X_1}
}

proc update_MODELPARAM_VALUE.CLAMP_X_2 { MODELPARAM_VALUE.CLAMP_X_2 PARAM_VALUE.CLAMP_X_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLAMP_X_2}] ${MODELPARAM_VALUE.CLAMP_X_2}
}

proc update_MODELPARAM_VALUE.CLAMP_Y_Y1_IDLE { MODELPARAM_VALUE.CLAMP_Y_Y1_IDLE PARAM_VALUE.CLAMP_Y_Y1_IDLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLAMP_Y_Y1_IDLE}] ${MODELPARAM_VALUE.CLAMP_Y_Y1_IDLE}
}

proc update_MODELPARAM_VALUE.CLAMP_Y_11 { MODELPARAM_VALUE.CLAMP_Y_11 PARAM_VALUE.CLAMP_Y_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLAMP_Y_11}] ${MODELPARAM_VALUE.CLAMP_Y_11}
}

proc update_MODELPARAM_VALUE.CLAMP_Y_12 { MODELPARAM_VALUE.CLAMP_Y_12 PARAM_VALUE.CLAMP_Y_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLAMP_Y_12}] ${MODELPARAM_VALUE.CLAMP_Y_12}
}

proc update_MODELPARAM_VALUE.CLAMP_Y_Y2_IDLE { MODELPARAM_VALUE.CLAMP_Y_Y2_IDLE PARAM_VALUE.CLAMP_Y_Y2_IDLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLAMP_Y_Y2_IDLE}] ${MODELPARAM_VALUE.CLAMP_Y_Y2_IDLE}
}

proc update_MODELPARAM_VALUE.CLAMP_Y_21 { MODELPARAM_VALUE.CLAMP_Y_21 PARAM_VALUE.CLAMP_Y_21 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLAMP_Y_21}] ${MODELPARAM_VALUE.CLAMP_Y_21}
}

proc update_MODELPARAM_VALUE.CLAMP_Y_22 { MODELPARAM_VALUE.CLAMP_Y_22 PARAM_VALUE.CLAMP_Y_22 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLAMP_Y_22}] ${MODELPARAM_VALUE.CLAMP_Y_22}
}

proc update_MODELPARAM_VALUE.CLAMP_CLEAR { MODELPARAM_VALUE.CLAMP_CLEAR PARAM_VALUE.CLAMP_CLEAR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLAMP_CLEAR}] ${MODELPARAM_VALUE.CLAMP_CLEAR}
}

