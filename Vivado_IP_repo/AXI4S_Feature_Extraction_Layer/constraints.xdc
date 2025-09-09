#######################################
#  _______ _           _              #
# |__   __(_)         (_)             #
#    | |   _ _ __ ___  _ _ __   __ _  #
#    | |  | | '_ ` _ \| | '_ \ / _` | #
#    | |  | | | | | | | | | | (_| | #
#    |_|  |_|_| |_| |_|_|_| |_|\__, | #
#                               __/ | #
#                              |___/  #
#######################################

# Create constraint for the 300?MHz clock input of the ZCU102 board
# 300?MHz ¡æ 1 / 300e6 = 3.333?ns period
create_clock -period 3.333 -name ref_clk [get_ports axi_clk]
set_property CLOCK_DEDICATED_ROUTE ANY_CMT_COLUMN [get_nets axi_clk]
