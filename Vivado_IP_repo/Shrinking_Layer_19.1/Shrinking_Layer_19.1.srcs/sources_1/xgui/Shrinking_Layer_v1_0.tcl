# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "INPUT_CHANNEL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OUTPUT_CHANNEL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WEIGHT_PATH" -parent ${Page_0}


}

proc update_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to update DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to validate DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.INPUT_CHANNEL { PARAM_VALUE.INPUT_CHANNEL } {
	# Procedure called to update INPUT_CHANNEL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INPUT_CHANNEL { PARAM_VALUE.INPUT_CHANNEL } {
	# Procedure called to validate INPUT_CHANNEL
	return true
}

proc update_PARAM_VALUE.OUTPUT_CHANNEL { PARAM_VALUE.OUTPUT_CHANNEL } {
	# Procedure called to update OUTPUT_CHANNEL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OUTPUT_CHANNEL { PARAM_VALUE.OUTPUT_CHANNEL } {
	# Procedure called to validate OUTPUT_CHANNEL
	return true
}

proc update_PARAM_VALUE.WEIGHT_PATH { PARAM_VALUE.WEIGHT_PATH } {
	# Procedure called to update WEIGHT_PATH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WEIGHT_PATH { PARAM_VALUE.WEIGHT_PATH } {
	# Procedure called to validate WEIGHT_PATH
	return true
}


proc update_MODELPARAM_VALUE.DATA_WIDTH { MODELPARAM_VALUE.DATA_WIDTH PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_WIDTH}] ${MODELPARAM_VALUE.DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.INPUT_CHANNEL { MODELPARAM_VALUE.INPUT_CHANNEL PARAM_VALUE.INPUT_CHANNEL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INPUT_CHANNEL}] ${MODELPARAM_VALUE.INPUT_CHANNEL}
}

proc update_MODELPARAM_VALUE.OUTPUT_CHANNEL { MODELPARAM_VALUE.OUTPUT_CHANNEL PARAM_VALUE.OUTPUT_CHANNEL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OUTPUT_CHANNEL}] ${MODELPARAM_VALUE.OUTPUT_CHANNEL}
}

proc update_MODELPARAM_VALUE.WEIGHT_PATH { MODELPARAM_VALUE.WEIGHT_PATH PARAM_VALUE.WEIGHT_PATH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WEIGHT_PATH}] ${MODELPARAM_VALUE.WEIGHT_PATH}
}

