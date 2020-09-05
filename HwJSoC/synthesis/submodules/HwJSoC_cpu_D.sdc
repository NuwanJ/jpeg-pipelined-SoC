# Legal Notice: (C)2020 Altera Corporation. All rights reserved.  Your
# use of Altera Corporation's design tools, logic functions and other
# software and tools, and its AMPP partner logic functions, and any
# output files any of the foregoing (including device programming or
# simulation files), and any associated documentation or information are
# expressly subject to the terms and conditions of the Altera Program
# License Subscription Agreement or other applicable license agreement,
# including, without limitation, that your use is for the sole purpose
# of programming logic devices manufactured by Altera and sold by Altera
# or its authorized distributors.  Please refer to the applicable
# agreement for further details.

#**************************************************************
# Timequest JTAG clock definition
#   Uncommenting the following lines will define the JTAG
#   clock in TimeQuest Timing Analyzer
#**************************************************************

#create_clock -period 10MHz {altera_reserved_tck}
#set_clock_groups -asynchronous -group {altera_reserved_tck}

#**************************************************************
# Set TCL Path Variables 
#**************************************************************

set 	HwJSoC_cpu_D 	HwJSoC_cpu_D:*
set 	HwJSoC_cpu_D_oci 	HwJSoC_cpu_D_nios2_oci:the_HwJSoC_cpu_D_nios2_oci
set 	HwJSoC_cpu_D_oci_break 	HwJSoC_cpu_D_nios2_oci_break:the_HwJSoC_cpu_D_nios2_oci_break
set 	HwJSoC_cpu_D_ocimem 	HwJSoC_cpu_D_nios2_ocimem:the_HwJSoC_cpu_D_nios2_ocimem
set 	HwJSoC_cpu_D_oci_debug 	HwJSoC_cpu_D_nios2_oci_debug:the_HwJSoC_cpu_D_nios2_oci_debug
set 	HwJSoC_cpu_D_wrapper 	HwJSoC_cpu_D_jtag_debug_module_wrapper:the_HwJSoC_cpu_D_jtag_debug_module_wrapper
set 	HwJSoC_cpu_D_jtag_tck 	HwJSoC_cpu_D_jtag_debug_module_tck:the_HwJSoC_cpu_D_jtag_debug_module_tck
set 	HwJSoC_cpu_D_jtag_sysclk 	HwJSoC_cpu_D_jtag_debug_module_sysclk:the_HwJSoC_cpu_D_jtag_debug_module_sysclk
set 	HwJSoC_cpu_D_oci_path 	 [format "%s|%s" $HwJSoC_cpu_D $HwJSoC_cpu_D_oci]
set 	HwJSoC_cpu_D_oci_break_path 	 [format "%s|%s" $HwJSoC_cpu_D_oci_path $HwJSoC_cpu_D_oci_break]
set 	HwJSoC_cpu_D_ocimem_path 	 [format "%s|%s" $HwJSoC_cpu_D_oci_path $HwJSoC_cpu_D_ocimem]
set 	HwJSoC_cpu_D_oci_debug_path 	 [format "%s|%s" $HwJSoC_cpu_D_oci_path $HwJSoC_cpu_D_oci_debug]
set 	HwJSoC_cpu_D_jtag_tck_path 	 [format "%s|%s|%s" $HwJSoC_cpu_D_oci_path $HwJSoC_cpu_D_wrapper $HwJSoC_cpu_D_jtag_tck]
set 	HwJSoC_cpu_D_jtag_sysclk_path 	 [format "%s|%s|%s" $HwJSoC_cpu_D_oci_path $HwJSoC_cpu_D_wrapper $HwJSoC_cpu_D_jtag_sysclk]
set 	HwJSoC_cpu_D_jtag_sr 	 [format "%s|*sr" $HwJSoC_cpu_D_jtag_tck_path]

#**************************************************************
# Set False Paths
#**************************************************************

set_false_path -from [get_keepers *$HwJSoC_cpu_D_oci_break_path|break_readreg*] -to [get_keepers *$HwJSoC_cpu_D_jtag_sr*]
set_false_path -from [get_keepers *$HwJSoC_cpu_D_oci_debug_path|*resetlatch]     -to [get_keepers *$HwJSoC_cpu_D_jtag_sr[33]]
set_false_path -from [get_keepers *$HwJSoC_cpu_D_oci_debug_path|monitor_ready]  -to [get_keepers *$HwJSoC_cpu_D_jtag_sr[0]]
set_false_path -from [get_keepers *$HwJSoC_cpu_D_oci_debug_path|monitor_error]  -to [get_keepers *$HwJSoC_cpu_D_jtag_sr[34]]
set_false_path -from [get_keepers *$HwJSoC_cpu_D_ocimem_path|*MonDReg*] -to [get_keepers *$HwJSoC_cpu_D_jtag_sr*]
set_false_path -from *$HwJSoC_cpu_D_jtag_sr*    -to *$HwJSoC_cpu_D_jtag_sysclk_path|*jdo*
set_false_path -from sld_hub:*|irf_reg* -to *$HwJSoC_cpu_D_jtag_sysclk_path|ir*
set_false_path -from sld_hub:*|sld_shadow_jsm:shadow_jsm|state[1] -to *$HwJSoC_cpu_D_oci_debug_path|monitor_go
