package require -exact qsys 13.1

# module properties
set_module_property NAME {HwJSoC_export}
set_module_property DISPLAY_NAME {HwJSoC_export_display}

# default module properties
set_module_property VERSION {1.0}
set_module_property GROUP {default group}
set_module_property DESCRIPTION {default description}
set_module_property AUTHOR {author}

set_module_property COMPOSITION_CALLBACK compose
set_module_property opaque_address_map false

proc compose { } {
    # Instances and instance parameters
    # (disabled instances are intentionally culled)
    add_instance clock clock_source 13.1
    set_instance_parameter_value clock {clockFrequency} {50000000.0}
    set_instance_parameter_value clock {clockFrequencyKnown} {1}
    set_instance_parameter_value clock {resetSynchronousEdges} {NONE}

    add_instance SDRAM_controller altera_avalon_new_sdram_controller 13.1
    set_instance_parameter_value SDRAM_controller {TAC} {6.0}
    set_instance_parameter_value SDRAM_controller {TRCD} {20.0}
    set_instance_parameter_value SDRAM_controller {TRFC} {70.0}
    set_instance_parameter_value SDRAM_controller {TRP} {20.0}
    set_instance_parameter_value SDRAM_controller {TWR} {14.0}
    set_instance_parameter_value SDRAM_controller {casLatency} {3}
    set_instance_parameter_value SDRAM_controller {columnWidth} {10}
    set_instance_parameter_value SDRAM_controller {dataWidth} {32}
    set_instance_parameter_value SDRAM_controller {generateSimulationModel} {0}
    set_instance_parameter_value SDRAM_controller {initRefreshCommands} {2}
    set_instance_parameter_value SDRAM_controller {model} {single_Micron_MT48LC4M32B2_7_chip}
    set_instance_parameter_value SDRAM_controller {numberOfBanks} {4}
    set_instance_parameter_value SDRAM_controller {numberOfChipSelects} {1}
    set_instance_parameter_value SDRAM_controller {pinsSharedViaTriState} {0}
    set_instance_parameter_value SDRAM_controller {powerUpDelay} {100.0}
    set_instance_parameter_value SDRAM_controller {refreshPeriod} {15.625}
    set_instance_parameter_value SDRAM_controller {rowWidth} {13}
    set_instance_parameter_value SDRAM_controller {masteredTristateBridgeSlave} {0}
    set_instance_parameter_value SDRAM_controller {TMRD} {3.0}
    set_instance_parameter_value SDRAM_controller {initNOPDelay} {0.0}
    set_instance_parameter_value SDRAM_controller {registerDataIn} {1}

    add_instance PLL altpll 13.1
    set_instance_parameter_value PLL {HIDDEN_CUSTOM_ELABORATION} {altpll_avalon_elaboration}
    set_instance_parameter_value PLL {HIDDEN_CUSTOM_POST_EDIT} {altpll_avalon_post_edit}
    set_instance_parameter_value PLL {INTENDED_DEVICE_FAMILY} {Cyclone IV E}
    set_instance_parameter_value PLL {WIDTH_CLOCK} {5}
    set_instance_parameter_value PLL {WIDTH_PHASECOUNTERSELECT} {}
    set_instance_parameter_value PLL {PRIMARY_CLOCK} {}
    set_instance_parameter_value PLL {INCLK0_INPUT_FREQUENCY} {10000}
    set_instance_parameter_value PLL {INCLK1_INPUT_FREQUENCY} {}
    set_instance_parameter_value PLL {OPERATION_MODE} {NORMAL}
    set_instance_parameter_value PLL {PLL_TYPE} {AUTO}
    set_instance_parameter_value PLL {QUALIFY_CONF_DONE} {}
    set_instance_parameter_value PLL {COMPENSATE_CLOCK} {CLK0}
    set_instance_parameter_value PLL {SCAN_CHAIN} {}
    set_instance_parameter_value PLL {GATE_LOCK_SIGNAL} {}
    set_instance_parameter_value PLL {GATE_LOCK_COUNTER} {}
    set_instance_parameter_value PLL {LOCK_HIGH} {}
    set_instance_parameter_value PLL {LOCK_LOW} {}
    set_instance_parameter_value PLL {VALID_LOCK_MULTIPLIER} {}
    set_instance_parameter_value PLL {INVALID_LOCK_MULTIPLIER} {}
    set_instance_parameter_value PLL {SWITCH_OVER_ON_LOSSCLK} {}
    set_instance_parameter_value PLL {SWITCH_OVER_ON_GATED_LOCK} {}
    set_instance_parameter_value PLL {ENABLE_SWITCH_OVER_COUNTER} {}
    set_instance_parameter_value PLL {SKIP_VCO} {}
    set_instance_parameter_value PLL {SWITCH_OVER_COUNTER} {}
    set_instance_parameter_value PLL {SWITCH_OVER_TYPE} {}
    set_instance_parameter_value PLL {FEEDBACK_SOURCE} {}
    set_instance_parameter_value PLL {BANDWIDTH} {}
    set_instance_parameter_value PLL {BANDWIDTH_TYPE} {AUTO}
    set_instance_parameter_value PLL {SPREAD_FREQUENCY} {}
    set_instance_parameter_value PLL {DOWN_SPREAD} {}
    set_instance_parameter_value PLL {SELF_RESET_ON_GATED_LOSS_LOCK} {}
    set_instance_parameter_value PLL {SELF_RESET_ON_LOSS_LOCK} {}
    set_instance_parameter_value PLL {CLK0_MULTIPLY_BY} {1}
    set_instance_parameter_value PLL {CLK1_MULTIPLY_BY} {1}
    set_instance_parameter_value PLL {CLK2_MULTIPLY_BY} {1}
    set_instance_parameter_value PLL {CLK3_MULTIPLY_BY} {}
    set_instance_parameter_value PLL {CLK4_MULTIPLY_BY} {}
    set_instance_parameter_value PLL {CLK5_MULTIPLY_BY} {}
    set_instance_parameter_value PLL {CLK6_MULTIPLY_BY} {}
    set_instance_parameter_value PLL {CLK7_MULTIPLY_BY} {}
    set_instance_parameter_value PLL {CLK8_MULTIPLY_BY} {}
    set_instance_parameter_value PLL {CLK9_MULTIPLY_BY} {}
    set_instance_parameter_value PLL {EXTCLK0_MULTIPLY_BY} {}
    set_instance_parameter_value PLL {EXTCLK1_MULTIPLY_BY} {}
    set_instance_parameter_value PLL {EXTCLK2_MULTIPLY_BY} {}
    set_instance_parameter_value PLL {EXTCLK3_MULTIPLY_BY} {}
    set_instance_parameter_value PLL {CLK0_DIVIDE_BY} {1}
    set_instance_parameter_value PLL {CLK1_DIVIDE_BY} {10}
    set_instance_parameter_value PLL {CLK2_DIVIDE_BY} {1}
    set_instance_parameter_value PLL {CLK3_DIVIDE_BY} {}
    set_instance_parameter_value PLL {CLK4_DIVIDE_BY} {}
    set_instance_parameter_value PLL {CLK5_DIVIDE_BY} {}
    set_instance_parameter_value PLL {CLK6_DIVIDE_BY} {}
    set_instance_parameter_value PLL {CLK7_DIVIDE_BY} {}
    set_instance_parameter_value PLL {CLK8_DIVIDE_BY} {}
    set_instance_parameter_value PLL {CLK9_DIVIDE_BY} {}
    set_instance_parameter_value PLL {EXTCLK0_DIVIDE_BY} {}
    set_instance_parameter_value PLL {EXTCLK1_DIVIDE_BY} {}
    set_instance_parameter_value PLL {EXTCLK2_DIVIDE_BY} {}
    set_instance_parameter_value PLL {EXTCLK3_DIVIDE_BY} {}
    set_instance_parameter_value PLL {CLK0_PHASE_SHIFT} {0}
    set_instance_parameter_value PLL {CLK1_PHASE_SHIFT} {0}
    set_instance_parameter_value PLL {CLK2_PHASE_SHIFT} {-1806}
    set_instance_parameter_value PLL {CLK3_PHASE_SHIFT} {}
    set_instance_parameter_value PLL {CLK4_PHASE_SHIFT} {}
    set_instance_parameter_value PLL {CLK5_PHASE_SHIFT} {}
    set_instance_parameter_value PLL {CLK6_PHASE_SHIFT} {}
    set_instance_parameter_value PLL {CLK7_PHASE_SHIFT} {}
    set_instance_parameter_value PLL {CLK8_PHASE_SHIFT} {}
    set_instance_parameter_value PLL {CLK9_PHASE_SHIFT} {}
    set_instance_parameter_value PLL {EXTCLK0_PHASE_SHIFT} {}
    set_instance_parameter_value PLL {EXTCLK1_PHASE_SHIFT} {}
    set_instance_parameter_value PLL {EXTCLK2_PHASE_SHIFT} {}
    set_instance_parameter_value PLL {EXTCLK3_PHASE_SHIFT} {}
    set_instance_parameter_value PLL {CLK0_DUTY_CYCLE} {50}
    set_instance_parameter_value PLL {CLK1_DUTY_CYCLE} {50}
    set_instance_parameter_value PLL {CLK2_DUTY_CYCLE} {50}
    set_instance_parameter_value PLL {CLK3_DUTY_CYCLE} {}
    set_instance_parameter_value PLL {CLK4_DUTY_CYCLE} {}
    set_instance_parameter_value PLL {CLK5_DUTY_CYCLE} {}
    set_instance_parameter_value PLL {CLK6_DUTY_CYCLE} {}
    set_instance_parameter_value PLL {CLK7_DUTY_CYCLE} {}
    set_instance_parameter_value PLL {CLK8_DUTY_CYCLE} {}
    set_instance_parameter_value PLL {CLK9_DUTY_CYCLE} {}
    set_instance_parameter_value PLL {EXTCLK0_DUTY_CYCLE} {}
    set_instance_parameter_value PLL {EXTCLK1_DUTY_CYCLE} {}
    set_instance_parameter_value PLL {EXTCLK2_DUTY_CYCLE} {}
    set_instance_parameter_value PLL {EXTCLK3_DUTY_CYCLE} {}
    set_instance_parameter_value PLL {PORT_clkena0} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_clkena1} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_clkena2} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_clkena3} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_clkena4} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_clkena5} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_extclkena0} {}
    set_instance_parameter_value PLL {PORT_extclkena1} {}
    set_instance_parameter_value PLL {PORT_extclkena2} {}
    set_instance_parameter_value PLL {PORT_extclkena3} {}
    set_instance_parameter_value PLL {PORT_extclk0} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_extclk1} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_extclk2} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_extclk3} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_CLKBAD0} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_CLKBAD1} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_clk0} {PORT_USED}
    set_instance_parameter_value PLL {PORT_clk1} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_clk2} {PORT_USED}
    set_instance_parameter_value PLL {PORT_clk3} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_clk4} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_clk5} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_clk6} {}
    set_instance_parameter_value PLL {PORT_clk7} {}
    set_instance_parameter_value PLL {PORT_clk8} {}
    set_instance_parameter_value PLL {PORT_clk9} {}
    set_instance_parameter_value PLL {PORT_SCANDATA} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_SCANDATAOUT} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_SCANDONE} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_SCLKOUT1} {}
    set_instance_parameter_value PLL {PORT_SCLKOUT0} {}
    set_instance_parameter_value PLL {PORT_ACTIVECLOCK} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_CLKLOSS} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_INCLK1} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_INCLK0} {PORT_USED}
    set_instance_parameter_value PLL {PORT_FBIN} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_PLLENA} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_CLKSWITCH} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_ARESET} {PORT_USED}
    set_instance_parameter_value PLL {PORT_PFDENA} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_SCANCLK} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_SCANACLR} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_SCANREAD} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_SCANWRITE} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_ENABLE0} {}
    set_instance_parameter_value PLL {PORT_ENABLE1} {}
    set_instance_parameter_value PLL {PORT_LOCKED} {PORT_USED}
    set_instance_parameter_value PLL {PORT_CONFIGUPDATE} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_FBOUT} {}
    set_instance_parameter_value PLL {PORT_PHASEDONE} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_PHASESTEP} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_PHASEUPDOWN} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_SCANCLKENA} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_PHASECOUNTERSELECT} {PORT_UNUSED}
    set_instance_parameter_value PLL {PORT_VCOOVERRANGE} {}
    set_instance_parameter_value PLL {PORT_VCOUNDERRANGE} {}
    set_instance_parameter_value PLL {DPA_MULTIPLY_BY} {}
    set_instance_parameter_value PLL {DPA_DIVIDE_BY} {}
    set_instance_parameter_value PLL {DPA_DIVIDER} {}
    set_instance_parameter_value PLL {VCO_MULTIPLY_BY} {}
    set_instance_parameter_value PLL {VCO_DIVIDE_BY} {}
    set_instance_parameter_value PLL {SCLKOUT0_PHASE_SHIFT} {}
    set_instance_parameter_value PLL {SCLKOUT1_PHASE_SHIFT} {}
    set_instance_parameter_value PLL {VCO_FREQUENCY_CONTROL} {}
    set_instance_parameter_value PLL {VCO_PHASE_SHIFT_STEP} {}
    set_instance_parameter_value PLL {USING_FBMIMICBIDIR_PORT} {}
    set_instance_parameter_value PLL {SCAN_CHAIN_MIF_FILE} {}
    set_instance_parameter_value PLL {AVALON_USE_SEPARATE_SYSCLK} {NO}
    set_instance_parameter_value PLL {HIDDEN_CONSTANTS} {CT#CLK2_DIVIDE_BY 1 CT#PORT_clk5 PORT_UNUSED CT#PORT_clk4 PORT_UNUSED CT#PORT_clk3 PORT_UNUSED CT#PORT_clk2 PORT_USED CT#PORT_clk1 PORT_UNUSED CT#PORT_clk0 PORT_USED CT#CLK0_MULTIPLY_BY 1 CT#PORT_SCANWRITE PORT_UNUSED CT#PORT_SCANACLR PORT_UNUSED CT#PORT_PFDENA PORT_UNUSED CT#PORT_PLLENA PORT_UNUSED CT#PORT_SCANDATA PORT_UNUSED CT#PORT_SCANCLKENA PORT_UNUSED CT#WIDTH_CLOCK 5 CT#PORT_SCANDATAOUT PORT_UNUSED CT#LPM_TYPE altpll CT#PLL_TYPE AUTO CT#CLK0_PHASE_SHIFT 0 CT#CLK1_DUTY_CYCLE 50 CT#PORT_PHASEDONE PORT_UNUSED CT#OPERATION_MODE NORMAL CT#PORT_CONFIGUPDATE PORT_UNUSED CT#CLK1_MULTIPLY_BY 1 CT#COMPENSATE_CLOCK CLK0 CT#PORT_CLKSWITCH PORT_UNUSED CT#INCLK0_INPUT_FREQUENCY 10000 CT#PORT_SCANDONE PORT_UNUSED CT#PORT_CLKLOSS PORT_UNUSED CT#PORT_INCLK1 PORT_UNUSED CT#AVALON_USE_SEPARATE_SYSCLK NO CT#PORT_INCLK0 PORT_USED CT#PORT_clkena5 PORT_UNUSED CT#PORT_clkena4 PORT_UNUSED CT#PORT_clkena3 PORT_UNUSED CT#PORT_clkena2 PORT_UNUSED CT#PORT_clkena1 PORT_UNUSED CT#PORT_clkena0 PORT_UNUSED CT#CLK1_PHASE_SHIFT 0 CT#PORT_ARESET PORT_USED CT#BANDWIDTH_TYPE AUTO CT#CLK2_MULTIPLY_BY 1 CT#INTENDED_DEVICE_FAMILY {Cyclone IV E} CT#PORT_SCANREAD PORT_UNUSED CT#CLK2_DUTY_CYCLE 50 CT#PORT_PHASESTEP PORT_UNUSED CT#PORT_SCANCLK PORT_UNUSED CT#PORT_CLKBAD1 PORT_UNUSED CT#PORT_CLKBAD0 PORT_UNUSED CT#PORT_FBIN PORT_UNUSED CT#PORT_PHASEUPDOWN PORT_UNUSED CT#PORT_extclk3 PORT_UNUSED CT#PORT_extclk2 PORT_UNUSED CT#PORT_extclk1 PORT_UNUSED CT#PORT_PHASECOUNTERSELECT PORT_UNUSED CT#PORT_extclk0 PORT_UNUSED CT#PORT_ACTIVECLOCK PORT_UNUSED CT#CLK2_PHASE_SHIFT -1806 CT#CLK0_DUTY_CYCLE 50 CT#CLK0_DIVIDE_BY 1 CT#CLK1_DIVIDE_BY 10 CT#PORT_LOCKED PORT_USED}
    set_instance_parameter_value PLL {HIDDEN_PRIVATES} {PT#GLOCKED_FEATURE_ENABLED 0 PT#SPREAD_FEATURE_ENABLED 0 PT#BANDWIDTH_FREQ_UNIT MHz PT#CUR_DEDICATED_CLK c0 PT#INCLK0_FREQ_EDIT 100.000 PT#BANDWIDTH_PRESET Low PT#PLL_LVDS_PLL_CHECK 0 PT#BANDWIDTH_USE_PRESET 0 PT#AVALON_USE_SEPARATE_SYSCLK NO PT#PLL_ENHPLL_CHECK 0 PT#OUTPUT_FREQ_UNIT2 MHz PT#OUTPUT_FREQ_UNIT1 MHz PT#OUTPUT_FREQ_UNIT0 MHz PT#PHASE_RECONFIG_FEATURE_ENABLED 1 PT#CREATE_CLKBAD_CHECK 0 PT#CLKSWITCH_CHECK 0 PT#INCLK1_FREQ_EDIT 100.000 PT#NORMAL_MODE_RADIO 1 PT#SRC_SYNCH_COMP_RADIO 0 PT#PLL_ARESET_CHECK 1 PT#LONG_SCAN_RADIO 1 PT#SCAN_FEATURE_ENABLED 1 PT#USE_CLK2 1 PT#PHASE_RECONFIG_INPUTS_CHECK 0 PT#USE_CLK1 1 PT#USE_CLK0 1 PT#PRIMARY_CLK_COMBO inclk0 PT#BANDWIDTH 1.000 PT#GLOCKED_COUNTER_EDIT_CHANGED 1 PT#PLL_FASTPLL_CHECK 0 PT#SPREAD_FREQ_UNIT KHz PT#PLL_AUTOPLL_CHECK 1 PT#LVDS_PHASE_SHIFT_UNIT2 deg PT#LVDS_PHASE_SHIFT_UNIT1 deg PT#OUTPUT_FREQ_MODE2 1 PT#LVDS_PHASE_SHIFT_UNIT0 deg PT#OUTPUT_FREQ_MODE1 1 PT#SWITCHOVER_FEATURE_ENABLED 0 PT#MIG_DEVICE_SPEED_GRADE Any PT#OUTPUT_FREQ_MODE0 1 PT#BANDWIDTH_FEATURE_ENABLED 1 PT#INCLK0_FREQ_UNIT_COMBO MHz PT#ZERO_DELAY_RADIO 0 PT#OUTPUT_FREQ2 100.00000000 PT#OUTPUT_FREQ1 10.00000000 PT#OUTPUT_FREQ0 100.00000000 PT#SHORT_SCAN_RADIO 0 PT#LVDS_MODE_DATA_RATE_DIRTY 0 PT#CUR_FBIN_CLK c0 PT#PLL_ADVANCED_PARAM_CHECK 0 PT#CLKBAD_SWITCHOVER_CHECK 0 PT#PHASE_SHIFT_STEP_ENABLED_CHECK 0 PT#DEVICE_SPEED_GRADE Any PT#PLL_FBMIMIC_CHECK 0 PT#LVDS_MODE_DATA_RATE {Not Available} PT#LOCKED_OUTPUT_CHECK 1 PT#SPREAD_PERCENT 0.500 PT#PHASE_SHIFT2 -65.00000000 PT#PHASE_SHIFT1 0.00000000 PT#DIV_FACTOR2 1 PT#PHASE_SHIFT0 0.00000000 PT#DIV_FACTOR1 1 PT#DIV_FACTOR0 1 PT#CNX_NO_COMPENSATE_RADIO 0 PT#USE_CLKENA2 0 PT#USE_CLKENA1 0 PT#USE_CLKENA0 0 PT#CREATE_INCLK1_CHECK 0 PT#GLOCK_COUNTER_EDIT 1048575 PT#INCLK1_FREQ_UNIT_COMBO MHz PT#EFF_OUTPUT_FREQ_VALUE2 100.000000 PT#EFF_OUTPUT_FREQ_VALUE1 10.000000 PT#EFF_OUTPUT_FREQ_VALUE0 100.000000 PT#SPREAD_FREQ 50.000 PT#USE_MIL_SPEED_GRADE 0 PT#EXPLICIT_SWITCHOVER_COUNTER 0 PT#STICKY_CLK2 1 PT#STICKY_CLK1 1 PT#STICKY_CLK0 1 PT#EXT_FEEDBACK_RADIO 0 PT#MIRROR_CLK2 0 PT#MIRROR_CLK1 0 PT#SWITCHOVER_COUNT_EDIT 1 PT#MIRROR_CLK0 0 PT#SELF_RESET_LOCK_LOSS 0 PT#PLL_PFDENA_CHECK 0 PT#INT_FEEDBACK__MODE_RADIO 1 PT#INCLK1_FREQ_EDIT_CHANGED 1 PT#SYNTH_WRAPPER_GEN_POSTFIX 0 PT#CLKLOSS_CHECK 0 PT#PHASE_SHIFT_UNIT2 deg PT#PHASE_SHIFT_UNIT1 deg PT#PHASE_SHIFT_UNIT0 deg PT#BANDWIDTH_USE_AUTO 1 PT#HAS_MANUAL_SWITCHOVER 1 PT#MULT_FACTOR2 1 PT#MULT_FACTOR1 1 PT#MULT_FACTOR0 1 PT#SPREAD_USE 0 PT#GLOCKED_MODE_CHECK 0 PT#DUTY_CYCLE2 50.00000000 PT#SACN_INPUTS_CHECK 0 PT#DUTY_CYCLE1 50.00000000 PT#INTENDED_DEVICE_FAMILY {Cyclone IV E} PT#DUTY_CYCLE0 50.00000000 PT#PLL_TARGET_HARCOPY_CHECK 0 PT#INCLK1_FREQ_UNIT_CHANGED 1 PT#RECONFIG_FILE ALTPLL1582103098618131.mif PT#ACTIVECLK_CHECK 0}
    set_instance_parameter_value PLL {HIDDEN_USED_PORTS} {UP#locked used UP#c2 used UP#c1 used UP#c0 used UP#areset used UP#inclk0 used}
    set_instance_parameter_value PLL {HIDDEN_IS_NUMERIC} {IN#WIDTH_CLOCK 1 IN#CLK0_DUTY_CYCLE 1 IN#CLK2_DIVIDE_BY 1 IN#PLL_TARGET_HARCOPY_CHECK 1 IN#CLK1_MULTIPLY_BY 1 IN#SWITCHOVER_COUNT_EDIT 1 IN#INCLK0_INPUT_FREQUENCY 1 IN#PLL_LVDS_PLL_CHECK 1 IN#PLL_AUTOPLL_CHECK 1 IN#PLL_FASTPLL_CHECK 1 IN#CLK1_DUTY_CYCLE 1 IN#PLL_ENHPLL_CHECK 1 IN#CLK2_MULTIPLY_BY 1 IN#DIV_FACTOR2 1 IN#DIV_FACTOR1 1 IN#DIV_FACTOR0 1 IN#LVDS_MODE_DATA_RATE_DIRTY 1 IN#GLOCK_COUNTER_EDIT 1 IN#CLK2_DUTY_CYCLE 1 IN#CLK0_DIVIDE_BY 1 IN#MULT_FACTOR2 1 IN#MULT_FACTOR1 1 IN#MULT_FACTOR0 1 IN#CLK0_MULTIPLY_BY 1 IN#USE_MIL_SPEED_GRADE 1 IN#CLK1_DIVIDE_BY 1}
    set_instance_parameter_value PLL {HIDDEN_MF_PORTS} {MF#areset 1 MF#clk 1 MF#locked 1 MF#inclk 1}
    set_instance_parameter_value PLL {HIDDEN_IF_PORTS} {IF#locked {output 0} IF#reset {input 0} IF#clk {input 0} IF#readdata {output 32} IF#write {input 0} IF#phasedone {output 0} IF#address {input 2} IF#c2 {output 0} IF#c1 {output 0} IF#c0 {output 0} IF#writedata {input 32} IF#read {input 0} IF#areset {input 0}}
    set_instance_parameter_value PLL {HIDDEN_IS_FIRST_EDIT} {0}

    add_instance led_out altera_avalon_pio 13.1
    set_instance_parameter_value led_out {bitClearingEdgeCapReg} {0}
    set_instance_parameter_value led_out {bitModifyingOutReg} {0}
    set_instance_parameter_value led_out {captureEdge} {0}
    set_instance_parameter_value led_out {direction} {Output}
    set_instance_parameter_value led_out {edgeType} {RISING}
    set_instance_parameter_value led_out {generateIRQ} {0}
    set_instance_parameter_value led_out {irqType} {LEVEL}
    set_instance_parameter_value led_out {resetValue} {0.0}
    set_instance_parameter_value led_out {simDoTestBenchWiring} {0}
    set_instance_parameter_value led_out {simDrivenValue} {0.0}
    set_instance_parameter_value led_out {width} {8}

    add_instance timer_A altera_avalon_timer 13.1
    set_instance_parameter_value timer_A {alwaysRun} {0}
    set_instance_parameter_value timer_A {counterSize} {32}
    set_instance_parameter_value timer_A {fixedPeriod} {0}
    set_instance_parameter_value timer_A {period} {1}
    set_instance_parameter_value timer_A {periodUnits} {MSEC}
    set_instance_parameter_value timer_A {resetOutput} {0}
    set_instance_parameter_value timer_A {snapshot} {1}
    set_instance_parameter_value timer_A {timeoutPulseOutput} {0}

    add_instance sysid_A altera_avalon_sysid_qsys 13.1
    set_instance_parameter_value sysid_A {id} {16}

    add_instance jtag_A altera_avalon_jtag_uart 13.1
    set_instance_parameter_value jtag_A {allowMultipleConnections} {0}
    set_instance_parameter_value jtag_A {hubInstanceID} {0}
    set_instance_parameter_value jtag_A {readBufferDepth} {64}
    set_instance_parameter_value jtag_A {readIRQThreshold} {8}
    set_instance_parameter_value jtag_A {simInputCharacterStream} {}
    set_instance_parameter_value jtag_A {simInteractiveOptions} {NO_INTERACTIVE_WINDOWS}
    set_instance_parameter_value jtag_A {useRegistersForReadBuffer} {0}
    set_instance_parameter_value jtag_A {useRegistersForWriteBuffer} {0}
    set_instance_parameter_value jtag_A {useRelativePathForSimFile} {0}
    set_instance_parameter_value jtag_A {writeBufferDepth} {64}
    set_instance_parameter_value jtag_A {writeIRQThreshold} {8}

    add_instance cpu_A altera_nios2_qsys 13.1
    set_instance_parameter_value cpu_A {setting_showUnpublishedSettings} {0}
    set_instance_parameter_value cpu_A {setting_showInternalSettings} {0}
    set_instance_parameter_value cpu_A {setting_preciseSlaveAccessErrorException} {0}
    set_instance_parameter_value cpu_A {setting_preciseIllegalMemAccessException} {0}
    set_instance_parameter_value cpu_A {setting_preciseDivisionErrorException} {0}
    set_instance_parameter_value cpu_A {setting_performanceCounter} {0}
    set_instance_parameter_value cpu_A {setting_illegalMemAccessDetection} {0}
    set_instance_parameter_value cpu_A {setting_illegalInstructionsTrap} {0}
    set_instance_parameter_value cpu_A {setting_fullWaveformSignals} {0}
    set_instance_parameter_value cpu_A {setting_extraExceptionInfo} {0}
    set_instance_parameter_value cpu_A {setting_exportPCB} {0}
    set_instance_parameter_value cpu_A {setting_debugSimGen} {0}
    set_instance_parameter_value cpu_A {setting_clearXBitsLDNonBypass} {1}
    set_instance_parameter_value cpu_A {setting_bit31BypassDCache} {1}
    set_instance_parameter_value cpu_A {setting_bigEndian} {0}
    set_instance_parameter_value cpu_A {setting_export_large_RAMs} {0}
    set_instance_parameter_value cpu_A {setting_asic_enabled} {0}
    set_instance_parameter_value cpu_A {setting_asic_synopsys_translate_on_off} {0}
    set_instance_parameter_value cpu_A {setting_oci_export_jtag_signals} {0}
    set_instance_parameter_value cpu_A {setting_bhtIndexPcOnly} {0}
    set_instance_parameter_value cpu_A {setting_avalonDebugPortPresent} {0}
    set_instance_parameter_value cpu_A {setting_alwaysEncrypt} {1}
    set_instance_parameter_value cpu_A {setting_allowFullAddressRange} {0}
    set_instance_parameter_value cpu_A {setting_activateTrace} {1}
    set_instance_parameter_value cpu_A {setting_activateTrace_user} {0}
    set_instance_parameter_value cpu_A {setting_activateTestEndChecker} {0}
    set_instance_parameter_value cpu_A {setting_ecc_sim_test_ports} {0}
    set_instance_parameter_value cpu_A {setting_activateMonitors} {1}
    set_instance_parameter_value cpu_A {setting_activateModelChecker} {0}
    set_instance_parameter_value cpu_A {setting_HDLSimCachesCleared} {1}
    set_instance_parameter_value cpu_A {setting_HBreakTest} {0}
    set_instance_parameter_value cpu_A {setting_breakslaveoveride} {0}
    set_instance_parameter_value cpu_A {muldiv_divider} {0}
    set_instance_parameter_value cpu_A {mpu_useLimit} {0}
    set_instance_parameter_value cpu_A {mpu_enabled} {0}
    set_instance_parameter_value cpu_A {mmu_enabled} {0}
    set_instance_parameter_value cpu_A {mmu_autoAssignTlbPtrSz} {1}
    set_instance_parameter_value cpu_A {manuallyAssignCpuID} {1}
    set_instance_parameter_value cpu_A {debug_triggerArming} {1}
    set_instance_parameter_value cpu_A {debug_embeddedPLL} {1}
    set_instance_parameter_value cpu_A {debug_debugReqSignals} {0}
    set_instance_parameter_value cpu_A {debug_assignJtagInstanceID} {0}
    set_instance_parameter_value cpu_A {dcache_omitDataMaster} {0}
    set_instance_parameter_value cpu_A {cpuReset} {0}
    set_instance_parameter_value cpu_A {is_hardcopy_compatible} {0}
    set_instance_parameter_value cpu_A {setting_shadowRegisterSets} {0}
    set_instance_parameter_value cpu_A {mpu_numOfInstRegion} {8}
    set_instance_parameter_value cpu_A {mpu_numOfDataRegion} {8}
    set_instance_parameter_value cpu_A {mmu_TLBMissExcOffset} {0}
    set_instance_parameter_value cpu_A {debug_jtagInstanceID} {0}
    set_instance_parameter_value cpu_A {resetOffset} {0}
    set_instance_parameter_value cpu_A {exceptionOffset} {32}
    set_instance_parameter_value cpu_A {cpuID} {0}
    set_instance_parameter_value cpu_A {cpuID_stored} {0}
    set_instance_parameter_value cpu_A {breakOffset} {32}
    set_instance_parameter_value cpu_A {userDefinedSettings} {}
    set_instance_parameter_value cpu_A {resetSlave} {inst_mem_A.s1}
    set_instance_parameter_value cpu_A {mmu_TLBMissExcSlave} {None}
    set_instance_parameter_value cpu_A {exceptionSlave} {inst_mem_A.s1}
    set_instance_parameter_value cpu_A {breakSlave} {cpu_A.jtag_debug_module}
    set_instance_parameter_value cpu_A {setting_perfCounterWidth} {32}
    set_instance_parameter_value cpu_A {setting_interruptControllerType} {Internal}
    set_instance_parameter_value cpu_A {setting_branchPredictionType} {Automatic}
    set_instance_parameter_value cpu_A {setting_bhtPtrSz} {8}
    set_instance_parameter_value cpu_A {muldiv_multiplierType} {NoneSmall}
    set_instance_parameter_value cpu_A {mpu_minInstRegionSize} {12}
    set_instance_parameter_value cpu_A {mpu_minDataRegionSize} {12}
    set_instance_parameter_value cpu_A {mmu_uitlbNumEntries} {4}
    set_instance_parameter_value cpu_A {mmu_udtlbNumEntries} {6}
    set_instance_parameter_value cpu_A {mmu_tlbPtrSz} {7}
    set_instance_parameter_value cpu_A {mmu_tlbNumWays} {16}
    set_instance_parameter_value cpu_A {mmu_processIDNumBits} {8}
    set_instance_parameter_value cpu_A {impl} {Small}
    set_instance_parameter_value cpu_A {icache_size} {4096}
    set_instance_parameter_value cpu_A {icache_tagramBlockType} {Automatic}
    set_instance_parameter_value cpu_A {icache_ramBlockType} {Automatic}
    set_instance_parameter_value cpu_A {icache_numTCIM} {0}
    set_instance_parameter_value cpu_A {icache_burstType} {None}
    set_instance_parameter_value cpu_A {dcache_bursts} {false}
    set_instance_parameter_value cpu_A {dcache_victim_buf_impl} {ram}
    set_instance_parameter_value cpu_A {debug_level} {Level1}
    set_instance_parameter_value cpu_A {debug_OCIOnchipTrace} {_128}
    set_instance_parameter_value cpu_A {dcache_size} {2048}
    set_instance_parameter_value cpu_A {dcache_tagramBlockType} {Automatic}
    set_instance_parameter_value cpu_A {dcache_ramBlockType} {Automatic}
    set_instance_parameter_value cpu_A {dcache_numTCDM} {0}
    set_instance_parameter_value cpu_A {dcache_lineSize} {32}
    set_instance_parameter_value cpu_A {setting_exportvectors} {0}
    set_instance_parameter_value cpu_A {setting_ecc_present} {0}
    set_instance_parameter_value cpu_A {setting_ic_ecc_present} {1}
    set_instance_parameter_value cpu_A {setting_rf_ecc_present} {1}
    set_instance_parameter_value cpu_A {setting_mmu_ecc_present} {1}
    set_instance_parameter_value cpu_A {setting_dc_ecc_present} {0}
    set_instance_parameter_value cpu_A {setting_itcm_ecc_present} {0}
    set_instance_parameter_value cpu_A {setting_dtcm_ecc_present} {0}
    set_instance_parameter_value cpu_A {regfile_ramBlockType} {Automatic}
    set_instance_parameter_value cpu_A {ocimem_ramBlockType} {Automatic}
    set_instance_parameter_value cpu_A {mmu_ramBlockType} {Automatic}
    set_instance_parameter_value cpu_A {bht_ramBlockType} {Automatic}

    add_instance highTimer_A altera_avalon_timer 13.1
    set_instance_parameter_value highTimer_A {alwaysRun} {0}
    set_instance_parameter_value highTimer_A {counterSize} {32}
    set_instance_parameter_value highTimer_A {fixedPeriod} {0}
    set_instance_parameter_value highTimer_A {period} {1}
    set_instance_parameter_value highTimer_A {periodUnits} {USEC}
    set_instance_parameter_value highTimer_A {resetOutput} {0}
    set_instance_parameter_value highTimer_A {snapshot} {1}
    set_instance_parameter_value highTimer_A {timeoutPulseOutput} {0}

    add_instance fifo_AB_0 altera_avalon_fifo 13.1
    set_instance_parameter_value fifo_AB_0 {avalonMMAvalonMMDataWidth} {32}
    set_instance_parameter_value fifo_AB_0 {avalonMMAvalonSTDataWidth} {32}
    set_instance_parameter_value fifo_AB_0 {bitsPerSymbol} {16}
    set_instance_parameter_value fifo_AB_0 {channelWidth} {8}
    set_instance_parameter_value fifo_AB_0 {errorWidth} {8}
    set_instance_parameter_value fifo_AB_0 {fifoDepth} {64}
    set_instance_parameter_value fifo_AB_0 {fifoInputInterfaceOptions} {AVALONMM_WRITE}
    set_instance_parameter_value fifo_AB_0 {fifoOutputInterfaceOptions} {AVALONMM_READ}
    set_instance_parameter_value fifo_AB_0 {showHiddenFeatures} {0}
    set_instance_parameter_value fifo_AB_0 {singleClockMode} {1}
    set_instance_parameter_value fifo_AB_0 {singleResetMode} {0}
    set_instance_parameter_value fifo_AB_0 {symbolsPerBeat} {2}
    set_instance_parameter_value fifo_AB_0 {useBackpressure} {1}
    set_instance_parameter_value fifo_AB_0 {useIRQ} {1}
    set_instance_parameter_value fifo_AB_0 {usePacket} {1}
    set_instance_parameter_value fifo_AB_0 {useReadControl} {0}
    set_instance_parameter_value fifo_AB_0 {useRegister} {0}
    set_instance_parameter_value fifo_AB_0 {useWriteControl} {1}

    add_instance timer_B altera_avalon_timer 13.1
    set_instance_parameter_value timer_B {alwaysRun} {0}
    set_instance_parameter_value timer_B {counterSize} {32}
    set_instance_parameter_value timer_B {fixedPeriod} {0}
    set_instance_parameter_value timer_B {period} {1}
    set_instance_parameter_value timer_B {periodUnits} {MSEC}
    set_instance_parameter_value timer_B {resetOutput} {0}
    set_instance_parameter_value timer_B {snapshot} {1}
    set_instance_parameter_value timer_B {timeoutPulseOutput} {0}

    add_instance highTimer_B altera_avalon_timer 13.1
    set_instance_parameter_value highTimer_B {alwaysRun} {0}
    set_instance_parameter_value highTimer_B {counterSize} {32}
    set_instance_parameter_value highTimer_B {fixedPeriod} {0}
    set_instance_parameter_value highTimer_B {period} {1}
    set_instance_parameter_value highTimer_B {periodUnits} {USEC}
    set_instance_parameter_value highTimer_B {resetOutput} {0}
    set_instance_parameter_value highTimer_B {snapshot} {1}
    set_instance_parameter_value highTimer_B {timeoutPulseOutput} {0}

    add_instance sysid_B altera_avalon_sysid_qsys 13.1
    set_instance_parameter_value sysid_B {id} {16}

    add_instance jtag_B altera_avalon_jtag_uart 13.1
    set_instance_parameter_value jtag_B {allowMultipleConnections} {0}
    set_instance_parameter_value jtag_B {hubInstanceID} {0}
    set_instance_parameter_value jtag_B {readBufferDepth} {64}
    set_instance_parameter_value jtag_B {readIRQThreshold} {8}
    set_instance_parameter_value jtag_B {simInputCharacterStream} {}
    set_instance_parameter_value jtag_B {simInteractiveOptions} {NO_INTERACTIVE_WINDOWS}
    set_instance_parameter_value jtag_B {useRegistersForReadBuffer} {0}
    set_instance_parameter_value jtag_B {useRegistersForWriteBuffer} {0}
    set_instance_parameter_value jtag_B {useRelativePathForSimFile} {0}
    set_instance_parameter_value jtag_B {writeBufferDepth} {64}
    set_instance_parameter_value jtag_B {writeIRQThreshold} {8}

    add_instance cpu_B altera_nios2_qsys 13.1
    set_instance_parameter_value cpu_B {setting_showUnpublishedSettings} {0}
    set_instance_parameter_value cpu_B {setting_showInternalSettings} {0}
    set_instance_parameter_value cpu_B {setting_preciseSlaveAccessErrorException} {0}
    set_instance_parameter_value cpu_B {setting_preciseIllegalMemAccessException} {0}
    set_instance_parameter_value cpu_B {setting_preciseDivisionErrorException} {0}
    set_instance_parameter_value cpu_B {setting_performanceCounter} {0}
    set_instance_parameter_value cpu_B {setting_illegalMemAccessDetection} {0}
    set_instance_parameter_value cpu_B {setting_illegalInstructionsTrap} {0}
    set_instance_parameter_value cpu_B {setting_fullWaveformSignals} {0}
    set_instance_parameter_value cpu_B {setting_extraExceptionInfo} {0}
    set_instance_parameter_value cpu_B {setting_exportPCB} {0}
    set_instance_parameter_value cpu_B {setting_debugSimGen} {0}
    set_instance_parameter_value cpu_B {setting_clearXBitsLDNonBypass} {1}
    set_instance_parameter_value cpu_B {setting_bit31BypassDCache} {1}
    set_instance_parameter_value cpu_B {setting_bigEndian} {0}
    set_instance_parameter_value cpu_B {setting_export_large_RAMs} {0}
    set_instance_parameter_value cpu_B {setting_asic_enabled} {0}
    set_instance_parameter_value cpu_B {setting_asic_synopsys_translate_on_off} {0}
    set_instance_parameter_value cpu_B {setting_oci_export_jtag_signals} {0}
    set_instance_parameter_value cpu_B {setting_bhtIndexPcOnly} {0}
    set_instance_parameter_value cpu_B {setting_avalonDebugPortPresent} {0}
    set_instance_parameter_value cpu_B {setting_alwaysEncrypt} {1}
    set_instance_parameter_value cpu_B {setting_allowFullAddressRange} {0}
    set_instance_parameter_value cpu_B {setting_activateTrace} {1}
    set_instance_parameter_value cpu_B {setting_activateTrace_user} {0}
    set_instance_parameter_value cpu_B {setting_activateTestEndChecker} {0}
    set_instance_parameter_value cpu_B {setting_ecc_sim_test_ports} {0}
    set_instance_parameter_value cpu_B {setting_activateMonitors} {1}
    set_instance_parameter_value cpu_B {setting_activateModelChecker} {0}
    set_instance_parameter_value cpu_B {setting_HDLSimCachesCleared} {1}
    set_instance_parameter_value cpu_B {setting_HBreakTest} {0}
    set_instance_parameter_value cpu_B {setting_breakslaveoveride} {0}
    set_instance_parameter_value cpu_B {muldiv_divider} {0}
    set_instance_parameter_value cpu_B {mpu_useLimit} {0}
    set_instance_parameter_value cpu_B {mpu_enabled} {0}
    set_instance_parameter_value cpu_B {mmu_enabled} {0}
    set_instance_parameter_value cpu_B {mmu_autoAssignTlbPtrSz} {1}
    set_instance_parameter_value cpu_B {manuallyAssignCpuID} {1}
    set_instance_parameter_value cpu_B {debug_triggerArming} {1}
    set_instance_parameter_value cpu_B {debug_embeddedPLL} {1}
    set_instance_parameter_value cpu_B {debug_debugReqSignals} {0}
    set_instance_parameter_value cpu_B {debug_assignJtagInstanceID} {0}
    set_instance_parameter_value cpu_B {dcache_omitDataMaster} {0}
    set_instance_parameter_value cpu_B {cpuReset} {0}
    set_instance_parameter_value cpu_B {is_hardcopy_compatible} {0}
    set_instance_parameter_value cpu_B {setting_shadowRegisterSets} {0}
    set_instance_parameter_value cpu_B {mpu_numOfInstRegion} {8}
    set_instance_parameter_value cpu_B {mpu_numOfDataRegion} {8}
    set_instance_parameter_value cpu_B {mmu_TLBMissExcOffset} {0}
    set_instance_parameter_value cpu_B {debug_jtagInstanceID} {0}
    set_instance_parameter_value cpu_B {resetOffset} {0}
    set_instance_parameter_value cpu_B {exceptionOffset} {32}
    set_instance_parameter_value cpu_B {cpuID} {0}
    set_instance_parameter_value cpu_B {cpuID_stored} {0}
    set_instance_parameter_value cpu_B {breakOffset} {32}
    set_instance_parameter_value cpu_B {userDefinedSettings} {}
    set_instance_parameter_value cpu_B {resetSlave} {inst_mem_B.s1}
    set_instance_parameter_value cpu_B {mmu_TLBMissExcSlave} {None}
    set_instance_parameter_value cpu_B {exceptionSlave} {inst_mem_B.s1}
    set_instance_parameter_value cpu_B {breakSlave} {cpu_B.jtag_debug_module}
    set_instance_parameter_value cpu_B {setting_perfCounterWidth} {32}
    set_instance_parameter_value cpu_B {setting_interruptControllerType} {Internal}
    set_instance_parameter_value cpu_B {setting_branchPredictionType} {Automatic}
    set_instance_parameter_value cpu_B {setting_bhtPtrSz} {8}
    set_instance_parameter_value cpu_B {muldiv_multiplierType} {NoneSmall}
    set_instance_parameter_value cpu_B {mpu_minInstRegionSize} {12}
    set_instance_parameter_value cpu_B {mpu_minDataRegionSize} {12}
    set_instance_parameter_value cpu_B {mmu_uitlbNumEntries} {4}
    set_instance_parameter_value cpu_B {mmu_udtlbNumEntries} {6}
    set_instance_parameter_value cpu_B {mmu_tlbPtrSz} {7}
    set_instance_parameter_value cpu_B {mmu_tlbNumWays} {16}
    set_instance_parameter_value cpu_B {mmu_processIDNumBits} {8}
    set_instance_parameter_value cpu_B {impl} {Small}
    set_instance_parameter_value cpu_B {icache_size} {4096}
    set_instance_parameter_value cpu_B {icache_tagramBlockType} {Automatic}
    set_instance_parameter_value cpu_B {icache_ramBlockType} {Automatic}
    set_instance_parameter_value cpu_B {icache_numTCIM} {0}
    set_instance_parameter_value cpu_B {icache_burstType} {None}
    set_instance_parameter_value cpu_B {dcache_bursts} {false}
    set_instance_parameter_value cpu_B {dcache_victim_buf_impl} {ram}
    set_instance_parameter_value cpu_B {debug_level} {Level1}
    set_instance_parameter_value cpu_B {debug_OCIOnchipTrace} {_128}
    set_instance_parameter_value cpu_B {dcache_size} {2048}
    set_instance_parameter_value cpu_B {dcache_tagramBlockType} {Automatic}
    set_instance_parameter_value cpu_B {dcache_ramBlockType} {Automatic}
    set_instance_parameter_value cpu_B {dcache_numTCDM} {0}
    set_instance_parameter_value cpu_B {dcache_lineSize} {32}
    set_instance_parameter_value cpu_B {setting_exportvectors} {0}
    set_instance_parameter_value cpu_B {setting_ecc_present} {0}
    set_instance_parameter_value cpu_B {setting_ic_ecc_present} {1}
    set_instance_parameter_value cpu_B {setting_rf_ecc_present} {1}
    set_instance_parameter_value cpu_B {setting_mmu_ecc_present} {1}
    set_instance_parameter_value cpu_B {setting_dc_ecc_present} {0}
    set_instance_parameter_value cpu_B {setting_itcm_ecc_present} {0}
    set_instance_parameter_value cpu_B {setting_dtcm_ecc_present} {0}
    set_instance_parameter_value cpu_B {regfile_ramBlockType} {Automatic}
    set_instance_parameter_value cpu_B {ocimem_ramBlockType} {Automatic}
    set_instance_parameter_value cpu_B {mmu_ramBlockType} {Automatic}
    set_instance_parameter_value cpu_B {bht_ramBlockType} {Automatic}

    add_instance timer_C altera_avalon_timer 13.1
    set_instance_parameter_value timer_C {alwaysRun} {0}
    set_instance_parameter_value timer_C {counterSize} {32}
    set_instance_parameter_value timer_C {fixedPeriod} {0}
    set_instance_parameter_value timer_C {period} {1}
    set_instance_parameter_value timer_C {periodUnits} {MSEC}
    set_instance_parameter_value timer_C {resetOutput} {0}
    set_instance_parameter_value timer_C {snapshot} {1}
    set_instance_parameter_value timer_C {timeoutPulseOutput} {0}

    add_instance highTimer_C altera_avalon_timer 13.1
    set_instance_parameter_value highTimer_C {alwaysRun} {0}
    set_instance_parameter_value highTimer_C {counterSize} {32}
    set_instance_parameter_value highTimer_C {fixedPeriod} {0}
    set_instance_parameter_value highTimer_C {period} {1}
    set_instance_parameter_value highTimer_C {periodUnits} {USEC}
    set_instance_parameter_value highTimer_C {resetOutput} {0}
    set_instance_parameter_value highTimer_C {snapshot} {1}
    set_instance_parameter_value highTimer_C {timeoutPulseOutput} {0}

    add_instance sysid_C altera_avalon_sysid_qsys 13.1
    set_instance_parameter_value sysid_C {id} {16}

    add_instance jtag_C altera_avalon_jtag_uart 13.1
    set_instance_parameter_value jtag_C {allowMultipleConnections} {0}
    set_instance_parameter_value jtag_C {hubInstanceID} {0}
    set_instance_parameter_value jtag_C {readBufferDepth} {64}
    set_instance_parameter_value jtag_C {readIRQThreshold} {8}
    set_instance_parameter_value jtag_C {simInputCharacterStream} {}
    set_instance_parameter_value jtag_C {simInteractiveOptions} {NO_INTERACTIVE_WINDOWS}
    set_instance_parameter_value jtag_C {useRegistersForReadBuffer} {0}
    set_instance_parameter_value jtag_C {useRegistersForWriteBuffer} {0}
    set_instance_parameter_value jtag_C {useRelativePathForSimFile} {0}
    set_instance_parameter_value jtag_C {writeBufferDepth} {64}
    set_instance_parameter_value jtag_C {writeIRQThreshold} {8}

    add_instance cpu_C altera_nios2_qsys 13.1
    set_instance_parameter_value cpu_C {setting_showUnpublishedSettings} {0}
    set_instance_parameter_value cpu_C {setting_showInternalSettings} {0}
    set_instance_parameter_value cpu_C {setting_preciseSlaveAccessErrorException} {0}
    set_instance_parameter_value cpu_C {setting_preciseIllegalMemAccessException} {0}
    set_instance_parameter_value cpu_C {setting_preciseDivisionErrorException} {0}
    set_instance_parameter_value cpu_C {setting_performanceCounter} {0}
    set_instance_parameter_value cpu_C {setting_illegalMemAccessDetection} {0}
    set_instance_parameter_value cpu_C {setting_illegalInstructionsTrap} {0}
    set_instance_parameter_value cpu_C {setting_fullWaveformSignals} {0}
    set_instance_parameter_value cpu_C {setting_extraExceptionInfo} {0}
    set_instance_parameter_value cpu_C {setting_exportPCB} {0}
    set_instance_parameter_value cpu_C {setting_debugSimGen} {0}
    set_instance_parameter_value cpu_C {setting_clearXBitsLDNonBypass} {1}
    set_instance_parameter_value cpu_C {setting_bit31BypassDCache} {1}
    set_instance_parameter_value cpu_C {setting_bigEndian} {0}
    set_instance_parameter_value cpu_C {setting_export_large_RAMs} {0}
    set_instance_parameter_value cpu_C {setting_asic_enabled} {0}
    set_instance_parameter_value cpu_C {setting_asic_synopsys_translate_on_off} {0}
    set_instance_parameter_value cpu_C {setting_oci_export_jtag_signals} {0}
    set_instance_parameter_value cpu_C {setting_bhtIndexPcOnly} {0}
    set_instance_parameter_value cpu_C {setting_avalonDebugPortPresent} {0}
    set_instance_parameter_value cpu_C {setting_alwaysEncrypt} {1}
    set_instance_parameter_value cpu_C {setting_allowFullAddressRange} {0}
    set_instance_parameter_value cpu_C {setting_activateTrace} {1}
    set_instance_parameter_value cpu_C {setting_activateTrace_user} {0}
    set_instance_parameter_value cpu_C {setting_activateTestEndChecker} {0}
    set_instance_parameter_value cpu_C {setting_ecc_sim_test_ports} {0}
    set_instance_parameter_value cpu_C {setting_activateMonitors} {1}
    set_instance_parameter_value cpu_C {setting_activateModelChecker} {0}
    set_instance_parameter_value cpu_C {setting_HDLSimCachesCleared} {1}
    set_instance_parameter_value cpu_C {setting_HBreakTest} {0}
    set_instance_parameter_value cpu_C {setting_breakslaveoveride} {0}
    set_instance_parameter_value cpu_C {muldiv_divider} {0}
    set_instance_parameter_value cpu_C {mpu_useLimit} {0}
    set_instance_parameter_value cpu_C {mpu_enabled} {0}
    set_instance_parameter_value cpu_C {mmu_enabled} {0}
    set_instance_parameter_value cpu_C {mmu_autoAssignTlbPtrSz} {1}
    set_instance_parameter_value cpu_C {manuallyAssignCpuID} {1}
    set_instance_parameter_value cpu_C {debug_triggerArming} {1}
    set_instance_parameter_value cpu_C {debug_embeddedPLL} {1}
    set_instance_parameter_value cpu_C {debug_debugReqSignals} {0}
    set_instance_parameter_value cpu_C {debug_assignJtagInstanceID} {0}
    set_instance_parameter_value cpu_C {dcache_omitDataMaster} {0}
    set_instance_parameter_value cpu_C {cpuReset} {0}
    set_instance_parameter_value cpu_C {is_hardcopy_compatible} {0}
    set_instance_parameter_value cpu_C {setting_shadowRegisterSets} {0}
    set_instance_parameter_value cpu_C {mpu_numOfInstRegion} {8}
    set_instance_parameter_value cpu_C {mpu_numOfDataRegion} {8}
    set_instance_parameter_value cpu_C {mmu_TLBMissExcOffset} {0}
    set_instance_parameter_value cpu_C {debug_jtagInstanceID} {0}
    set_instance_parameter_value cpu_C {resetOffset} {0}
    set_instance_parameter_value cpu_C {exceptionOffset} {32}
    set_instance_parameter_value cpu_C {cpuID} {0}
    set_instance_parameter_value cpu_C {cpuID_stored} {0}
    set_instance_parameter_value cpu_C {breakOffset} {32}
    set_instance_parameter_value cpu_C {userDefinedSettings} {}
    set_instance_parameter_value cpu_C {resetSlave} {inst_mem_C.s1}
    set_instance_parameter_value cpu_C {mmu_TLBMissExcSlave} {None}
    set_instance_parameter_value cpu_C {exceptionSlave} {inst_mem_C.s1}
    set_instance_parameter_value cpu_C {breakSlave} {cpu_C.jtag_debug_module}
    set_instance_parameter_value cpu_C {setting_perfCounterWidth} {32}
    set_instance_parameter_value cpu_C {setting_interruptControllerType} {Internal}
    set_instance_parameter_value cpu_C {setting_branchPredictionType} {Automatic}
    set_instance_parameter_value cpu_C {setting_bhtPtrSz} {8}
    set_instance_parameter_value cpu_C {muldiv_multiplierType} {NoneSmall}
    set_instance_parameter_value cpu_C {mpu_minInstRegionSize} {12}
    set_instance_parameter_value cpu_C {mpu_minDataRegionSize} {12}
    set_instance_parameter_value cpu_C {mmu_uitlbNumEntries} {4}
    set_instance_parameter_value cpu_C {mmu_udtlbNumEntries} {6}
    set_instance_parameter_value cpu_C {mmu_tlbPtrSz} {7}
    set_instance_parameter_value cpu_C {mmu_tlbNumWays} {16}
    set_instance_parameter_value cpu_C {mmu_processIDNumBits} {8}
    set_instance_parameter_value cpu_C {impl} {Small}
    set_instance_parameter_value cpu_C {icache_size} {4096}
    set_instance_parameter_value cpu_C {icache_tagramBlockType} {Automatic}
    set_instance_parameter_value cpu_C {icache_ramBlockType} {Automatic}
    set_instance_parameter_value cpu_C {icache_numTCIM} {0}
    set_instance_parameter_value cpu_C {icache_burstType} {None}
    set_instance_parameter_value cpu_C {dcache_bursts} {false}
    set_instance_parameter_value cpu_C {dcache_victim_buf_impl} {ram}
    set_instance_parameter_value cpu_C {debug_level} {Level1}
    set_instance_parameter_value cpu_C {debug_OCIOnchipTrace} {_128}
    set_instance_parameter_value cpu_C {dcache_size} {2048}
    set_instance_parameter_value cpu_C {dcache_tagramBlockType} {Automatic}
    set_instance_parameter_value cpu_C {dcache_ramBlockType} {Automatic}
    set_instance_parameter_value cpu_C {dcache_numTCDM} {0}
    set_instance_parameter_value cpu_C {dcache_lineSize} {32}
    set_instance_parameter_value cpu_C {setting_exportvectors} {0}
    set_instance_parameter_value cpu_C {setting_ecc_present} {0}
    set_instance_parameter_value cpu_C {setting_ic_ecc_present} {1}
    set_instance_parameter_value cpu_C {setting_rf_ecc_present} {1}
    set_instance_parameter_value cpu_C {setting_mmu_ecc_present} {1}
    set_instance_parameter_value cpu_C {setting_dc_ecc_present} {0}
    set_instance_parameter_value cpu_C {setting_itcm_ecc_present} {0}
    set_instance_parameter_value cpu_C {setting_dtcm_ecc_present} {0}
    set_instance_parameter_value cpu_C {regfile_ramBlockType} {Automatic}
    set_instance_parameter_value cpu_C {ocimem_ramBlockType} {Automatic}
    set_instance_parameter_value cpu_C {mmu_ramBlockType} {Automatic}
    set_instance_parameter_value cpu_C {bht_ramBlockType} {Automatic}

    add_instance timer_D altera_avalon_timer 13.1
    set_instance_parameter_value timer_D {alwaysRun} {0}
    set_instance_parameter_value timer_D {counterSize} {32}
    set_instance_parameter_value timer_D {fixedPeriod} {0}
    set_instance_parameter_value timer_D {period} {1}
    set_instance_parameter_value timer_D {periodUnits} {MSEC}
    set_instance_parameter_value timer_D {resetOutput} {0}
    set_instance_parameter_value timer_D {snapshot} {1}
    set_instance_parameter_value timer_D {timeoutPulseOutput} {0}

    add_instance highTimer_D altera_avalon_timer 13.1
    set_instance_parameter_value highTimer_D {alwaysRun} {0}
    set_instance_parameter_value highTimer_D {counterSize} {32}
    set_instance_parameter_value highTimer_D {fixedPeriod} {0}
    set_instance_parameter_value highTimer_D {period} {1}
    set_instance_parameter_value highTimer_D {periodUnits} {USEC}
    set_instance_parameter_value highTimer_D {resetOutput} {0}
    set_instance_parameter_value highTimer_D {snapshot} {1}
    set_instance_parameter_value highTimer_D {timeoutPulseOutput} {0}

    add_instance sysid_D altera_avalon_sysid_qsys 13.1
    set_instance_parameter_value sysid_D {id} {16}

    add_instance jtag_D altera_avalon_jtag_uart 13.1
    set_instance_parameter_value jtag_D {allowMultipleConnections} {0}
    set_instance_parameter_value jtag_D {hubInstanceID} {0}
    set_instance_parameter_value jtag_D {readBufferDepth} {64}
    set_instance_parameter_value jtag_D {readIRQThreshold} {8}
    set_instance_parameter_value jtag_D {simInputCharacterStream} {}
    set_instance_parameter_value jtag_D {simInteractiveOptions} {NO_INTERACTIVE_WINDOWS}
    set_instance_parameter_value jtag_D {useRegistersForReadBuffer} {0}
    set_instance_parameter_value jtag_D {useRegistersForWriteBuffer} {0}
    set_instance_parameter_value jtag_D {useRelativePathForSimFile} {0}
    set_instance_parameter_value jtag_D {writeBufferDepth} {64}
    set_instance_parameter_value jtag_D {writeIRQThreshold} {8}

    add_instance cpu_D altera_nios2_qsys 13.1
    set_instance_parameter_value cpu_D {setting_showUnpublishedSettings} {0}
    set_instance_parameter_value cpu_D {setting_showInternalSettings} {0}
    set_instance_parameter_value cpu_D {setting_preciseSlaveAccessErrorException} {0}
    set_instance_parameter_value cpu_D {setting_preciseIllegalMemAccessException} {0}
    set_instance_parameter_value cpu_D {setting_preciseDivisionErrorException} {0}
    set_instance_parameter_value cpu_D {setting_performanceCounter} {0}
    set_instance_parameter_value cpu_D {setting_illegalMemAccessDetection} {0}
    set_instance_parameter_value cpu_D {setting_illegalInstructionsTrap} {0}
    set_instance_parameter_value cpu_D {setting_fullWaveformSignals} {0}
    set_instance_parameter_value cpu_D {setting_extraExceptionInfo} {0}
    set_instance_parameter_value cpu_D {setting_exportPCB} {0}
    set_instance_parameter_value cpu_D {setting_debugSimGen} {0}
    set_instance_parameter_value cpu_D {setting_clearXBitsLDNonBypass} {1}
    set_instance_parameter_value cpu_D {setting_bit31BypassDCache} {1}
    set_instance_parameter_value cpu_D {setting_bigEndian} {0}
    set_instance_parameter_value cpu_D {setting_export_large_RAMs} {0}
    set_instance_parameter_value cpu_D {setting_asic_enabled} {0}
    set_instance_parameter_value cpu_D {setting_asic_synopsys_translate_on_off} {0}
    set_instance_parameter_value cpu_D {setting_oci_export_jtag_signals} {0}
    set_instance_parameter_value cpu_D {setting_bhtIndexPcOnly} {0}
    set_instance_parameter_value cpu_D {setting_avalonDebugPortPresent} {0}
    set_instance_parameter_value cpu_D {setting_alwaysEncrypt} {1}
    set_instance_parameter_value cpu_D {setting_allowFullAddressRange} {0}
    set_instance_parameter_value cpu_D {setting_activateTrace} {1}
    set_instance_parameter_value cpu_D {setting_activateTrace_user} {0}
    set_instance_parameter_value cpu_D {setting_activateTestEndChecker} {0}
    set_instance_parameter_value cpu_D {setting_ecc_sim_test_ports} {0}
    set_instance_parameter_value cpu_D {setting_activateMonitors} {1}
    set_instance_parameter_value cpu_D {setting_activateModelChecker} {0}
    set_instance_parameter_value cpu_D {setting_HDLSimCachesCleared} {1}
    set_instance_parameter_value cpu_D {setting_HBreakTest} {0}
    set_instance_parameter_value cpu_D {setting_breakslaveoveride} {0}
    set_instance_parameter_value cpu_D {muldiv_divider} {0}
    set_instance_parameter_value cpu_D {mpu_useLimit} {0}
    set_instance_parameter_value cpu_D {mpu_enabled} {0}
    set_instance_parameter_value cpu_D {mmu_enabled} {0}
    set_instance_parameter_value cpu_D {mmu_autoAssignTlbPtrSz} {1}
    set_instance_parameter_value cpu_D {manuallyAssignCpuID} {1}
    set_instance_parameter_value cpu_D {debug_triggerArming} {1}
    set_instance_parameter_value cpu_D {debug_embeddedPLL} {1}
    set_instance_parameter_value cpu_D {debug_debugReqSignals} {0}
    set_instance_parameter_value cpu_D {debug_assignJtagInstanceID} {0}
    set_instance_parameter_value cpu_D {dcache_omitDataMaster} {0}
    set_instance_parameter_value cpu_D {cpuReset} {0}
    set_instance_parameter_value cpu_D {is_hardcopy_compatible} {0}
    set_instance_parameter_value cpu_D {setting_shadowRegisterSets} {0}
    set_instance_parameter_value cpu_D {mpu_numOfInstRegion} {8}
    set_instance_parameter_value cpu_D {mpu_numOfDataRegion} {8}
    set_instance_parameter_value cpu_D {mmu_TLBMissExcOffset} {0}
    set_instance_parameter_value cpu_D {debug_jtagInstanceID} {0}
    set_instance_parameter_value cpu_D {resetOffset} {0}
    set_instance_parameter_value cpu_D {exceptionOffset} {32}
    set_instance_parameter_value cpu_D {cpuID} {0}
    set_instance_parameter_value cpu_D {cpuID_stored} {0}
    set_instance_parameter_value cpu_D {breakOffset} {32}
    set_instance_parameter_value cpu_D {userDefinedSettings} {}
    set_instance_parameter_value cpu_D {resetSlave} {inst_mem_D.s1}
    set_instance_parameter_value cpu_D {mmu_TLBMissExcSlave} {None}
    set_instance_parameter_value cpu_D {exceptionSlave} {inst_mem_D.s1}
    set_instance_parameter_value cpu_D {breakSlave} {cpu_D.jtag_debug_module}
    set_instance_parameter_value cpu_D {setting_perfCounterWidth} {32}
    set_instance_parameter_value cpu_D {setting_interruptControllerType} {Internal}
    set_instance_parameter_value cpu_D {setting_branchPredictionType} {Automatic}
    set_instance_parameter_value cpu_D {setting_bhtPtrSz} {8}
    set_instance_parameter_value cpu_D {muldiv_multiplierType} {NoneSmall}
    set_instance_parameter_value cpu_D {mpu_minInstRegionSize} {12}
    set_instance_parameter_value cpu_D {mpu_minDataRegionSize} {12}
    set_instance_parameter_value cpu_D {mmu_uitlbNumEntries} {4}
    set_instance_parameter_value cpu_D {mmu_udtlbNumEntries} {6}
    set_instance_parameter_value cpu_D {mmu_tlbPtrSz} {7}
    set_instance_parameter_value cpu_D {mmu_tlbNumWays} {16}
    set_instance_parameter_value cpu_D {mmu_processIDNumBits} {8}
    set_instance_parameter_value cpu_D {impl} {Small}
    set_instance_parameter_value cpu_D {icache_size} {4096}
    set_instance_parameter_value cpu_D {icache_tagramBlockType} {Automatic}
    set_instance_parameter_value cpu_D {icache_ramBlockType} {Automatic}
    set_instance_parameter_value cpu_D {icache_numTCIM} {0}
    set_instance_parameter_value cpu_D {icache_burstType} {None}
    set_instance_parameter_value cpu_D {dcache_bursts} {false}
    set_instance_parameter_value cpu_D {dcache_victim_buf_impl} {ram}
    set_instance_parameter_value cpu_D {debug_level} {Level1}
    set_instance_parameter_value cpu_D {debug_OCIOnchipTrace} {_128}
    set_instance_parameter_value cpu_D {dcache_size} {2048}
    set_instance_parameter_value cpu_D {dcache_tagramBlockType} {Automatic}
    set_instance_parameter_value cpu_D {dcache_ramBlockType} {Automatic}
    set_instance_parameter_value cpu_D {dcache_numTCDM} {0}
    set_instance_parameter_value cpu_D {dcache_lineSize} {32}
    set_instance_parameter_value cpu_D {setting_exportvectors} {0}
    set_instance_parameter_value cpu_D {setting_ecc_present} {0}
    set_instance_parameter_value cpu_D {setting_ic_ecc_present} {1}
    set_instance_parameter_value cpu_D {setting_rf_ecc_present} {1}
    set_instance_parameter_value cpu_D {setting_mmu_ecc_present} {1}
    set_instance_parameter_value cpu_D {setting_dc_ecc_present} {0}
    set_instance_parameter_value cpu_D {setting_itcm_ecc_present} {0}
    set_instance_parameter_value cpu_D {setting_dtcm_ecc_present} {0}
    set_instance_parameter_value cpu_D {regfile_ramBlockType} {Automatic}
    set_instance_parameter_value cpu_D {ocimem_ramBlockType} {Automatic}
    set_instance_parameter_value cpu_D {mmu_ramBlockType} {Automatic}
    set_instance_parameter_value cpu_D {bht_ramBlockType} {Automatic}

    add_instance timer_E altera_avalon_timer 13.1
    set_instance_parameter_value timer_E {alwaysRun} {0}
    set_instance_parameter_value timer_E {counterSize} {32}
    set_instance_parameter_value timer_E {fixedPeriod} {0}
    set_instance_parameter_value timer_E {period} {1}
    set_instance_parameter_value timer_E {periodUnits} {MSEC}
    set_instance_parameter_value timer_E {resetOutput} {0}
    set_instance_parameter_value timer_E {snapshot} {1}
    set_instance_parameter_value timer_E {timeoutPulseOutput} {0}

    add_instance highTimer_E altera_avalon_timer 13.1
    set_instance_parameter_value highTimer_E {alwaysRun} {0}
    set_instance_parameter_value highTimer_E {counterSize} {32}
    set_instance_parameter_value highTimer_E {fixedPeriod} {0}
    set_instance_parameter_value highTimer_E {period} {1}
    set_instance_parameter_value highTimer_E {periodUnits} {USEC}
    set_instance_parameter_value highTimer_E {resetOutput} {0}
    set_instance_parameter_value highTimer_E {snapshot} {1}
    set_instance_parameter_value highTimer_E {timeoutPulseOutput} {0}

    add_instance sysid_E altera_avalon_sysid_qsys 13.1
    set_instance_parameter_value sysid_E {id} {16}

    add_instance jtag_E altera_avalon_jtag_uart 13.1
    set_instance_parameter_value jtag_E {allowMultipleConnections} {0}
    set_instance_parameter_value jtag_E {hubInstanceID} {0}
    set_instance_parameter_value jtag_E {readBufferDepth} {64}
    set_instance_parameter_value jtag_E {readIRQThreshold} {8}
    set_instance_parameter_value jtag_E {simInputCharacterStream} {}
    set_instance_parameter_value jtag_E {simInteractiveOptions} {NO_INTERACTIVE_WINDOWS}
    set_instance_parameter_value jtag_E {useRegistersForReadBuffer} {0}
    set_instance_parameter_value jtag_E {useRegistersForWriteBuffer} {0}
    set_instance_parameter_value jtag_E {useRelativePathForSimFile} {0}
    set_instance_parameter_value jtag_E {writeBufferDepth} {64}
    set_instance_parameter_value jtag_E {writeIRQThreshold} {8}

    add_instance cpu_E altera_nios2_qsys 13.1
    set_instance_parameter_value cpu_E {setting_showUnpublishedSettings} {0}
    set_instance_parameter_value cpu_E {setting_showInternalSettings} {0}
    set_instance_parameter_value cpu_E {setting_preciseSlaveAccessErrorException} {0}
    set_instance_parameter_value cpu_E {setting_preciseIllegalMemAccessException} {0}
    set_instance_parameter_value cpu_E {setting_preciseDivisionErrorException} {0}
    set_instance_parameter_value cpu_E {setting_performanceCounter} {0}
    set_instance_parameter_value cpu_E {setting_illegalMemAccessDetection} {0}
    set_instance_parameter_value cpu_E {setting_illegalInstructionsTrap} {0}
    set_instance_parameter_value cpu_E {setting_fullWaveformSignals} {0}
    set_instance_parameter_value cpu_E {setting_extraExceptionInfo} {0}
    set_instance_parameter_value cpu_E {setting_exportPCB} {0}
    set_instance_parameter_value cpu_E {setting_debugSimGen} {0}
    set_instance_parameter_value cpu_E {setting_clearXBitsLDNonBypass} {1}
    set_instance_parameter_value cpu_E {setting_bit31BypassDCache} {1}
    set_instance_parameter_value cpu_E {setting_bigEndian} {0}
    set_instance_parameter_value cpu_E {setting_export_large_RAMs} {0}
    set_instance_parameter_value cpu_E {setting_asic_enabled} {0}
    set_instance_parameter_value cpu_E {setting_asic_synopsys_translate_on_off} {0}
    set_instance_parameter_value cpu_E {setting_oci_export_jtag_signals} {0}
    set_instance_parameter_value cpu_E {setting_bhtIndexPcOnly} {0}
    set_instance_parameter_value cpu_E {setting_avalonDebugPortPresent} {0}
    set_instance_parameter_value cpu_E {setting_alwaysEncrypt} {1}
    set_instance_parameter_value cpu_E {setting_allowFullAddressRange} {0}
    set_instance_parameter_value cpu_E {setting_activateTrace} {1}
    set_instance_parameter_value cpu_E {setting_activateTrace_user} {0}
    set_instance_parameter_value cpu_E {setting_activateTestEndChecker} {0}
    set_instance_parameter_value cpu_E {setting_ecc_sim_test_ports} {0}
    set_instance_parameter_value cpu_E {setting_activateMonitors} {1}
    set_instance_parameter_value cpu_E {setting_activateModelChecker} {0}
    set_instance_parameter_value cpu_E {setting_HDLSimCachesCleared} {1}
    set_instance_parameter_value cpu_E {setting_HBreakTest} {0}
    set_instance_parameter_value cpu_E {setting_breakslaveoveride} {0}
    set_instance_parameter_value cpu_E {muldiv_divider} {0}
    set_instance_parameter_value cpu_E {mpu_useLimit} {0}
    set_instance_parameter_value cpu_E {mpu_enabled} {0}
    set_instance_parameter_value cpu_E {mmu_enabled} {0}
    set_instance_parameter_value cpu_E {mmu_autoAssignTlbPtrSz} {1}
    set_instance_parameter_value cpu_E {manuallyAssignCpuID} {1}
    set_instance_parameter_value cpu_E {debug_triggerArming} {1}
    set_instance_parameter_value cpu_E {debug_embeddedPLL} {1}
    set_instance_parameter_value cpu_E {debug_debugReqSignals} {0}
    set_instance_parameter_value cpu_E {debug_assignJtagInstanceID} {0}
    set_instance_parameter_value cpu_E {dcache_omitDataMaster} {0}
    set_instance_parameter_value cpu_E {cpuReset} {0}
    set_instance_parameter_value cpu_E {is_hardcopy_compatible} {0}
    set_instance_parameter_value cpu_E {setting_shadowRegisterSets} {0}
    set_instance_parameter_value cpu_E {mpu_numOfInstRegion} {8}
    set_instance_parameter_value cpu_E {mpu_numOfDataRegion} {8}
    set_instance_parameter_value cpu_E {mmu_TLBMissExcOffset} {0}
    set_instance_parameter_value cpu_E {debug_jtagInstanceID} {0}
    set_instance_parameter_value cpu_E {resetOffset} {0}
    set_instance_parameter_value cpu_E {exceptionOffset} {32}
    set_instance_parameter_value cpu_E {cpuID} {0}
    set_instance_parameter_value cpu_E {cpuID_stored} {0}
    set_instance_parameter_value cpu_E {breakOffset} {32}
    set_instance_parameter_value cpu_E {userDefinedSettings} {}
    set_instance_parameter_value cpu_E {resetSlave} {inst_mem_E.s1}
    set_instance_parameter_value cpu_E {mmu_TLBMissExcSlave} {None}
    set_instance_parameter_value cpu_E {exceptionSlave} {inst_mem_E.s1}
    set_instance_parameter_value cpu_E {breakSlave} {cpu_E.jtag_debug_module}
    set_instance_parameter_value cpu_E {setting_perfCounterWidth} {32}
    set_instance_parameter_value cpu_E {setting_interruptControllerType} {Internal}
    set_instance_parameter_value cpu_E {setting_branchPredictionType} {Automatic}
    set_instance_parameter_value cpu_E {setting_bhtPtrSz} {8}
    set_instance_parameter_value cpu_E {muldiv_multiplierType} {NoneSmall}
    set_instance_parameter_value cpu_E {mpu_minInstRegionSize} {12}
    set_instance_parameter_value cpu_E {mpu_minDataRegionSize} {12}
    set_instance_parameter_value cpu_E {mmu_uitlbNumEntries} {4}
    set_instance_parameter_value cpu_E {mmu_udtlbNumEntries} {6}
    set_instance_parameter_value cpu_E {mmu_tlbPtrSz} {7}
    set_instance_parameter_value cpu_E {mmu_tlbNumWays} {16}
    set_instance_parameter_value cpu_E {mmu_processIDNumBits} {8}
    set_instance_parameter_value cpu_E {impl} {Small}
    set_instance_parameter_value cpu_E {icache_size} {4096}
    set_instance_parameter_value cpu_E {icache_tagramBlockType} {Automatic}
    set_instance_parameter_value cpu_E {icache_ramBlockType} {Automatic}
    set_instance_parameter_value cpu_E {icache_numTCIM} {0}
    set_instance_parameter_value cpu_E {icache_burstType} {None}
    set_instance_parameter_value cpu_E {dcache_bursts} {false}
    set_instance_parameter_value cpu_E {dcache_victim_buf_impl} {ram}
    set_instance_parameter_value cpu_E {debug_level} {Level1}
    set_instance_parameter_value cpu_E {debug_OCIOnchipTrace} {_128}
    set_instance_parameter_value cpu_E {dcache_size} {2048}
    set_instance_parameter_value cpu_E {dcache_tagramBlockType} {Automatic}
    set_instance_parameter_value cpu_E {dcache_ramBlockType} {Automatic}
    set_instance_parameter_value cpu_E {dcache_numTCDM} {0}
    set_instance_parameter_value cpu_E {dcache_lineSize} {32}
    set_instance_parameter_value cpu_E {setting_exportvectors} {0}
    set_instance_parameter_value cpu_E {setting_ecc_present} {0}
    set_instance_parameter_value cpu_E {setting_ic_ecc_present} {1}
    set_instance_parameter_value cpu_E {setting_rf_ecc_present} {1}
    set_instance_parameter_value cpu_E {setting_mmu_ecc_present} {1}
    set_instance_parameter_value cpu_E {setting_dc_ecc_present} {0}
    set_instance_parameter_value cpu_E {setting_itcm_ecc_present} {0}
    set_instance_parameter_value cpu_E {setting_dtcm_ecc_present} {0}
    set_instance_parameter_value cpu_E {regfile_ramBlockType} {Automatic}
    set_instance_parameter_value cpu_E {ocimem_ramBlockType} {Automatic}
    set_instance_parameter_value cpu_E {mmu_ramBlockType} {Automatic}
    set_instance_parameter_value cpu_E {bht_ramBlockType} {Automatic}

    add_instance timer_F altera_avalon_timer 13.1
    set_instance_parameter_value timer_F {alwaysRun} {0}
    set_instance_parameter_value timer_F {counterSize} {32}
    set_instance_parameter_value timer_F {fixedPeriod} {0}
    set_instance_parameter_value timer_F {period} {1}
    set_instance_parameter_value timer_F {periodUnits} {MSEC}
    set_instance_parameter_value timer_F {resetOutput} {0}
    set_instance_parameter_value timer_F {snapshot} {1}
    set_instance_parameter_value timer_F {timeoutPulseOutput} {0}

    add_instance highTimer_F altera_avalon_timer 13.1
    set_instance_parameter_value highTimer_F {alwaysRun} {0}
    set_instance_parameter_value highTimer_F {counterSize} {32}
    set_instance_parameter_value highTimer_F {fixedPeriod} {0}
    set_instance_parameter_value highTimer_F {period} {1}
    set_instance_parameter_value highTimer_F {periodUnits} {USEC}
    set_instance_parameter_value highTimer_F {resetOutput} {0}
    set_instance_parameter_value highTimer_F {snapshot} {1}
    set_instance_parameter_value highTimer_F {timeoutPulseOutput} {0}

    add_instance sysid_F altera_avalon_sysid_qsys 13.1
    set_instance_parameter_value sysid_F {id} {16}

    add_instance jtag_F altera_avalon_jtag_uart 13.1
    set_instance_parameter_value jtag_F {allowMultipleConnections} {0}
    set_instance_parameter_value jtag_F {hubInstanceID} {0}
    set_instance_parameter_value jtag_F {readBufferDepth} {64}
    set_instance_parameter_value jtag_F {readIRQThreshold} {8}
    set_instance_parameter_value jtag_F {simInputCharacterStream} {}
    set_instance_parameter_value jtag_F {simInteractiveOptions} {NO_INTERACTIVE_WINDOWS}
    set_instance_parameter_value jtag_F {useRegistersForReadBuffer} {0}
    set_instance_parameter_value jtag_F {useRegistersForWriteBuffer} {0}
    set_instance_parameter_value jtag_F {useRelativePathForSimFile} {0}
    set_instance_parameter_value jtag_F {writeBufferDepth} {64}
    set_instance_parameter_value jtag_F {writeIRQThreshold} {8}

    add_instance cpu_F altera_nios2_qsys 13.1
    set_instance_parameter_value cpu_F {setting_showUnpublishedSettings} {0}
    set_instance_parameter_value cpu_F {setting_showInternalSettings} {0}
    set_instance_parameter_value cpu_F {setting_preciseSlaveAccessErrorException} {0}
    set_instance_parameter_value cpu_F {setting_preciseIllegalMemAccessException} {0}
    set_instance_parameter_value cpu_F {setting_preciseDivisionErrorException} {0}
    set_instance_parameter_value cpu_F {setting_performanceCounter} {0}
    set_instance_parameter_value cpu_F {setting_illegalMemAccessDetection} {0}
    set_instance_parameter_value cpu_F {setting_illegalInstructionsTrap} {0}
    set_instance_parameter_value cpu_F {setting_fullWaveformSignals} {0}
    set_instance_parameter_value cpu_F {setting_extraExceptionInfo} {0}
    set_instance_parameter_value cpu_F {setting_exportPCB} {0}
    set_instance_parameter_value cpu_F {setting_debugSimGen} {0}
    set_instance_parameter_value cpu_F {setting_clearXBitsLDNonBypass} {1}
    set_instance_parameter_value cpu_F {setting_bit31BypassDCache} {1}
    set_instance_parameter_value cpu_F {setting_bigEndian} {0}
    set_instance_parameter_value cpu_F {setting_export_large_RAMs} {0}
    set_instance_parameter_value cpu_F {setting_asic_enabled} {0}
    set_instance_parameter_value cpu_F {setting_asic_synopsys_translate_on_off} {0}
    set_instance_parameter_value cpu_F {setting_oci_export_jtag_signals} {0}
    set_instance_parameter_value cpu_F {setting_bhtIndexPcOnly} {0}
    set_instance_parameter_value cpu_F {setting_avalonDebugPortPresent} {0}
    set_instance_parameter_value cpu_F {setting_alwaysEncrypt} {1}
    set_instance_parameter_value cpu_F {setting_allowFullAddressRange} {0}
    set_instance_parameter_value cpu_F {setting_activateTrace} {1}
    set_instance_parameter_value cpu_F {setting_activateTrace_user} {0}
    set_instance_parameter_value cpu_F {setting_activateTestEndChecker} {0}
    set_instance_parameter_value cpu_F {setting_ecc_sim_test_ports} {0}
    set_instance_parameter_value cpu_F {setting_activateMonitors} {1}
    set_instance_parameter_value cpu_F {setting_activateModelChecker} {0}
    set_instance_parameter_value cpu_F {setting_HDLSimCachesCleared} {1}
    set_instance_parameter_value cpu_F {setting_HBreakTest} {0}
    set_instance_parameter_value cpu_F {setting_breakslaveoveride} {0}
    set_instance_parameter_value cpu_F {muldiv_divider} {0}
    set_instance_parameter_value cpu_F {mpu_useLimit} {0}
    set_instance_parameter_value cpu_F {mpu_enabled} {0}
    set_instance_parameter_value cpu_F {mmu_enabled} {0}
    set_instance_parameter_value cpu_F {mmu_autoAssignTlbPtrSz} {1}
    set_instance_parameter_value cpu_F {manuallyAssignCpuID} {1}
    set_instance_parameter_value cpu_F {debug_triggerArming} {1}
    set_instance_parameter_value cpu_F {debug_embeddedPLL} {1}
    set_instance_parameter_value cpu_F {debug_debugReqSignals} {0}
    set_instance_parameter_value cpu_F {debug_assignJtagInstanceID} {0}
    set_instance_parameter_value cpu_F {dcache_omitDataMaster} {0}
    set_instance_parameter_value cpu_F {cpuReset} {0}
    set_instance_parameter_value cpu_F {is_hardcopy_compatible} {0}
    set_instance_parameter_value cpu_F {setting_shadowRegisterSets} {0}
    set_instance_parameter_value cpu_F {mpu_numOfInstRegion} {8}
    set_instance_parameter_value cpu_F {mpu_numOfDataRegion} {8}
    set_instance_parameter_value cpu_F {mmu_TLBMissExcOffset} {0}
    set_instance_parameter_value cpu_F {debug_jtagInstanceID} {0}
    set_instance_parameter_value cpu_F {resetOffset} {0}
    set_instance_parameter_value cpu_F {exceptionOffset} {32}
    set_instance_parameter_value cpu_F {cpuID} {0}
    set_instance_parameter_value cpu_F {cpuID_stored} {0}
    set_instance_parameter_value cpu_F {breakOffset} {32}
    set_instance_parameter_value cpu_F {userDefinedSettings} {}
    set_instance_parameter_value cpu_F {resetSlave} {inst_mem_F.s1}
    set_instance_parameter_value cpu_F {mmu_TLBMissExcSlave} {None}
    set_instance_parameter_value cpu_F {exceptionSlave} {inst_mem_F.s1}
    set_instance_parameter_value cpu_F {breakSlave} {cpu_F.jtag_debug_module}
    set_instance_parameter_value cpu_F {setting_perfCounterWidth} {32}
    set_instance_parameter_value cpu_F {setting_interruptControllerType} {Internal}
    set_instance_parameter_value cpu_F {setting_branchPredictionType} {Automatic}
    set_instance_parameter_value cpu_F {setting_bhtPtrSz} {8}
    set_instance_parameter_value cpu_F {muldiv_multiplierType} {NoneSmall}
    set_instance_parameter_value cpu_F {mpu_minInstRegionSize} {12}
    set_instance_parameter_value cpu_F {mpu_minDataRegionSize} {12}
    set_instance_parameter_value cpu_F {mmu_uitlbNumEntries} {4}
    set_instance_parameter_value cpu_F {mmu_udtlbNumEntries} {6}
    set_instance_parameter_value cpu_F {mmu_tlbPtrSz} {7}
    set_instance_parameter_value cpu_F {mmu_tlbNumWays} {16}
    set_instance_parameter_value cpu_F {mmu_processIDNumBits} {8}
    set_instance_parameter_value cpu_F {impl} {Small}
    set_instance_parameter_value cpu_F {icache_size} {4096}
    set_instance_parameter_value cpu_F {icache_tagramBlockType} {Automatic}
    set_instance_parameter_value cpu_F {icache_ramBlockType} {Automatic}
    set_instance_parameter_value cpu_F {icache_numTCIM} {0}
    set_instance_parameter_value cpu_F {icache_burstType} {None}
    set_instance_parameter_value cpu_F {dcache_bursts} {false}
    set_instance_parameter_value cpu_F {dcache_victim_buf_impl} {ram}
    set_instance_parameter_value cpu_F {debug_level} {Level1}
    set_instance_parameter_value cpu_F {debug_OCIOnchipTrace} {_128}
    set_instance_parameter_value cpu_F {dcache_size} {2048}
    set_instance_parameter_value cpu_F {dcache_tagramBlockType} {Automatic}
    set_instance_parameter_value cpu_F {dcache_ramBlockType} {Automatic}
    set_instance_parameter_value cpu_F {dcache_numTCDM} {0}
    set_instance_parameter_value cpu_F {dcache_lineSize} {32}
    set_instance_parameter_value cpu_F {setting_exportvectors} {0}
    set_instance_parameter_value cpu_F {setting_ecc_present} {0}
    set_instance_parameter_value cpu_F {setting_ic_ecc_present} {1}
    set_instance_parameter_value cpu_F {setting_rf_ecc_present} {1}
    set_instance_parameter_value cpu_F {setting_mmu_ecc_present} {1}
    set_instance_parameter_value cpu_F {setting_dc_ecc_present} {0}
    set_instance_parameter_value cpu_F {setting_itcm_ecc_present} {0}
    set_instance_parameter_value cpu_F {setting_dtcm_ecc_present} {0}
    set_instance_parameter_value cpu_F {regfile_ramBlockType} {Automatic}
    set_instance_parameter_value cpu_F {ocimem_ramBlockType} {Automatic}
    set_instance_parameter_value cpu_F {mmu_ramBlockType} {Automatic}
    set_instance_parameter_value cpu_F {bht_ramBlockType} {Automatic}

    add_instance inst_mem_A altera_avalon_onchip_memory2 13.1
    set_instance_parameter_value inst_mem_A {allowInSystemMemoryContentEditor} {0}
    set_instance_parameter_value inst_mem_A {blockType} {AUTO}
    set_instance_parameter_value inst_mem_A {dataWidth} {32}
    set_instance_parameter_value inst_mem_A {dualPort} {0}
    set_instance_parameter_value inst_mem_A {initMemContent} {1}
    set_instance_parameter_value inst_mem_A {initializationFileName} {onchip_mem.hex}
    set_instance_parameter_value inst_mem_A {instanceID} {NONE}
    set_instance_parameter_value inst_mem_A {memorySize} {32768.0}
    set_instance_parameter_value inst_mem_A {readDuringWriteMode} {DONT_CARE}
    set_instance_parameter_value inst_mem_A {simAllowMRAMContentsFile} {0}
    set_instance_parameter_value inst_mem_A {simMemInitOnlyFilename} {0}
    set_instance_parameter_value inst_mem_A {singleClockOperation} {0}
    set_instance_parameter_value inst_mem_A {slave1Latency} {1}
    set_instance_parameter_value inst_mem_A {slave2Latency} {1}
    set_instance_parameter_value inst_mem_A {useNonDefaultInitFile} {0}
    set_instance_parameter_value inst_mem_A {useShallowMemBlocks} {0}
    set_instance_parameter_value inst_mem_A {writable} {1}
    set_instance_parameter_value inst_mem_A {ecc_enabled} {0}

    add_instance inst_mem_B altera_avalon_onchip_memory2 13.1
    set_instance_parameter_value inst_mem_B {allowInSystemMemoryContentEditor} {0}
    set_instance_parameter_value inst_mem_B {blockType} {AUTO}
    set_instance_parameter_value inst_mem_B {dataWidth} {32}
    set_instance_parameter_value inst_mem_B {dualPort} {0}
    set_instance_parameter_value inst_mem_B {initMemContent} {1}
    set_instance_parameter_value inst_mem_B {initializationFileName} {onchip_mem.hex}
    set_instance_parameter_value inst_mem_B {instanceID} {NONE}
    set_instance_parameter_value inst_mem_B {memorySize} {32768.0}
    set_instance_parameter_value inst_mem_B {readDuringWriteMode} {DONT_CARE}
    set_instance_parameter_value inst_mem_B {simAllowMRAMContentsFile} {0}
    set_instance_parameter_value inst_mem_B {simMemInitOnlyFilename} {0}
    set_instance_parameter_value inst_mem_B {singleClockOperation} {0}
    set_instance_parameter_value inst_mem_B {slave1Latency} {1}
    set_instance_parameter_value inst_mem_B {slave2Latency} {1}
    set_instance_parameter_value inst_mem_B {useNonDefaultInitFile} {0}
    set_instance_parameter_value inst_mem_B {useShallowMemBlocks} {0}
    set_instance_parameter_value inst_mem_B {writable} {1}
    set_instance_parameter_value inst_mem_B {ecc_enabled} {0}

    add_instance inst_mem_C altera_avalon_onchip_memory2 13.1
    set_instance_parameter_value inst_mem_C {allowInSystemMemoryContentEditor} {0}
    set_instance_parameter_value inst_mem_C {blockType} {AUTO}
    set_instance_parameter_value inst_mem_C {dataWidth} {32}
    set_instance_parameter_value inst_mem_C {dualPort} {0}
    set_instance_parameter_value inst_mem_C {initMemContent} {1}
    set_instance_parameter_value inst_mem_C {initializationFileName} {onchip_mem.hex}
    set_instance_parameter_value inst_mem_C {instanceID} {NONE}
    set_instance_parameter_value inst_mem_C {memorySize} {32768.0}
    set_instance_parameter_value inst_mem_C {readDuringWriteMode} {DONT_CARE}
    set_instance_parameter_value inst_mem_C {simAllowMRAMContentsFile} {0}
    set_instance_parameter_value inst_mem_C {simMemInitOnlyFilename} {0}
    set_instance_parameter_value inst_mem_C {singleClockOperation} {0}
    set_instance_parameter_value inst_mem_C {slave1Latency} {1}
    set_instance_parameter_value inst_mem_C {slave2Latency} {1}
    set_instance_parameter_value inst_mem_C {useNonDefaultInitFile} {0}
    set_instance_parameter_value inst_mem_C {useShallowMemBlocks} {0}
    set_instance_parameter_value inst_mem_C {writable} {1}
    set_instance_parameter_value inst_mem_C {ecc_enabled} {0}

    add_instance inst_mem_D altera_avalon_onchip_memory2 13.1
    set_instance_parameter_value inst_mem_D {allowInSystemMemoryContentEditor} {0}
    set_instance_parameter_value inst_mem_D {blockType} {AUTO}
    set_instance_parameter_value inst_mem_D {dataWidth} {32}
    set_instance_parameter_value inst_mem_D {dualPort} {0}
    set_instance_parameter_value inst_mem_D {initMemContent} {1}
    set_instance_parameter_value inst_mem_D {initializationFileName} {onchip_mem.hex}
    set_instance_parameter_value inst_mem_D {instanceID} {NONE}
    set_instance_parameter_value inst_mem_D {memorySize} {32768.0}
    set_instance_parameter_value inst_mem_D {readDuringWriteMode} {DONT_CARE}
    set_instance_parameter_value inst_mem_D {simAllowMRAMContentsFile} {0}
    set_instance_parameter_value inst_mem_D {simMemInitOnlyFilename} {0}
    set_instance_parameter_value inst_mem_D {singleClockOperation} {0}
    set_instance_parameter_value inst_mem_D {slave1Latency} {1}
    set_instance_parameter_value inst_mem_D {slave2Latency} {1}
    set_instance_parameter_value inst_mem_D {useNonDefaultInitFile} {0}
    set_instance_parameter_value inst_mem_D {useShallowMemBlocks} {0}
    set_instance_parameter_value inst_mem_D {writable} {1}
    set_instance_parameter_value inst_mem_D {ecc_enabled} {0}

    add_instance inst_mem_E altera_avalon_onchip_memory2 13.1
    set_instance_parameter_value inst_mem_E {allowInSystemMemoryContentEditor} {0}
    set_instance_parameter_value inst_mem_E {blockType} {AUTO}
    set_instance_parameter_value inst_mem_E {dataWidth} {32}
    set_instance_parameter_value inst_mem_E {dualPort} {0}
    set_instance_parameter_value inst_mem_E {initMemContent} {1}
    set_instance_parameter_value inst_mem_E {initializationFileName} {onchip_mem.hex}
    set_instance_parameter_value inst_mem_E {instanceID} {NONE}
    set_instance_parameter_value inst_mem_E {memorySize} {32768.0}
    set_instance_parameter_value inst_mem_E {readDuringWriteMode} {DONT_CARE}
    set_instance_parameter_value inst_mem_E {simAllowMRAMContentsFile} {0}
    set_instance_parameter_value inst_mem_E {simMemInitOnlyFilename} {0}
    set_instance_parameter_value inst_mem_E {singleClockOperation} {0}
    set_instance_parameter_value inst_mem_E {slave1Latency} {1}
    set_instance_parameter_value inst_mem_E {slave2Latency} {1}
    set_instance_parameter_value inst_mem_E {useNonDefaultInitFile} {0}
    set_instance_parameter_value inst_mem_E {useShallowMemBlocks} {0}
    set_instance_parameter_value inst_mem_E {writable} {1}
    set_instance_parameter_value inst_mem_E {ecc_enabled} {0}

    add_instance inst_mem_F altera_avalon_onchip_memory2 13.1
    set_instance_parameter_value inst_mem_F {allowInSystemMemoryContentEditor} {0}
    set_instance_parameter_value inst_mem_F {blockType} {AUTO}
    set_instance_parameter_value inst_mem_F {dataWidth} {32}
    set_instance_parameter_value inst_mem_F {dualPort} {0}
    set_instance_parameter_value inst_mem_F {initMemContent} {1}
    set_instance_parameter_value inst_mem_F {initializationFileName} {onchip_mem.hex}
    set_instance_parameter_value inst_mem_F {instanceID} {NONE}
    set_instance_parameter_value inst_mem_F {memorySize} {32768.0}
    set_instance_parameter_value inst_mem_F {readDuringWriteMode} {DONT_CARE}
    set_instance_parameter_value inst_mem_F {simAllowMRAMContentsFile} {0}
    set_instance_parameter_value inst_mem_F {simMemInitOnlyFilename} {0}
    set_instance_parameter_value inst_mem_F {singleClockOperation} {0}
    set_instance_parameter_value inst_mem_F {slave1Latency} {1}
    set_instance_parameter_value inst_mem_F {slave2Latency} {1}
    set_instance_parameter_value inst_mem_F {useNonDefaultInitFile} {0}
    set_instance_parameter_value inst_mem_F {useShallowMemBlocks} {0}
    set_instance_parameter_value inst_mem_F {writable} {1}
    set_instance_parameter_value inst_mem_F {ecc_enabled} {0}

    add_instance fifo_AB_1 altera_avalon_fifo 13.1
    set_instance_parameter_value fifo_AB_1 {avalonMMAvalonMMDataWidth} {32}
    set_instance_parameter_value fifo_AB_1 {avalonMMAvalonSTDataWidth} {32}
    set_instance_parameter_value fifo_AB_1 {bitsPerSymbol} {16}
    set_instance_parameter_value fifo_AB_1 {channelWidth} {8}
    set_instance_parameter_value fifo_AB_1 {errorWidth} {8}
    set_instance_parameter_value fifo_AB_1 {fifoDepth} {64}
    set_instance_parameter_value fifo_AB_1 {fifoInputInterfaceOptions} {AVALONMM_WRITE}
    set_instance_parameter_value fifo_AB_1 {fifoOutputInterfaceOptions} {AVALONMM_READ}
    set_instance_parameter_value fifo_AB_1 {showHiddenFeatures} {0}
    set_instance_parameter_value fifo_AB_1 {singleClockMode} {1}
    set_instance_parameter_value fifo_AB_1 {singleResetMode} {0}
    set_instance_parameter_value fifo_AB_1 {symbolsPerBeat} {2}
    set_instance_parameter_value fifo_AB_1 {useBackpressure} {1}
    set_instance_parameter_value fifo_AB_1 {useIRQ} {1}
    set_instance_parameter_value fifo_AB_1 {usePacket} {1}
    set_instance_parameter_value fifo_AB_1 {useReadControl} {0}
    set_instance_parameter_value fifo_AB_1 {useRegister} {0}
    set_instance_parameter_value fifo_AB_1 {useWriteControl} {1}

    add_instance fifo_AB_2 altera_avalon_fifo 13.1
    set_instance_parameter_value fifo_AB_2 {avalonMMAvalonMMDataWidth} {32}
    set_instance_parameter_value fifo_AB_2 {avalonMMAvalonSTDataWidth} {32}
    set_instance_parameter_value fifo_AB_2 {bitsPerSymbol} {16}
    set_instance_parameter_value fifo_AB_2 {channelWidth} {8}
    set_instance_parameter_value fifo_AB_2 {errorWidth} {8}
    set_instance_parameter_value fifo_AB_2 {fifoDepth} {64}
    set_instance_parameter_value fifo_AB_2 {fifoInputInterfaceOptions} {AVALONMM_WRITE}
    set_instance_parameter_value fifo_AB_2 {fifoOutputInterfaceOptions} {AVALONMM_READ}
    set_instance_parameter_value fifo_AB_2 {showHiddenFeatures} {0}
    set_instance_parameter_value fifo_AB_2 {singleClockMode} {1}
    set_instance_parameter_value fifo_AB_2 {singleResetMode} {0}
    set_instance_parameter_value fifo_AB_2 {symbolsPerBeat} {2}
    set_instance_parameter_value fifo_AB_2 {useBackpressure} {1}
    set_instance_parameter_value fifo_AB_2 {useIRQ} {1}
    set_instance_parameter_value fifo_AB_2 {usePacket} {1}
    set_instance_parameter_value fifo_AB_2 {useReadControl} {0}
    set_instance_parameter_value fifo_AB_2 {useRegister} {0}
    set_instance_parameter_value fifo_AB_2 {useWriteControl} {1}

    add_instance fifo_AD altera_avalon_fifo 13.1
    set_instance_parameter_value fifo_AD {avalonMMAvalonMMDataWidth} {32}
    set_instance_parameter_value fifo_AD {avalonMMAvalonSTDataWidth} {32}
    set_instance_parameter_value fifo_AD {bitsPerSymbol} {16}
    set_instance_parameter_value fifo_AD {channelWidth} {8}
    set_instance_parameter_value fifo_AD {errorWidth} {8}
    set_instance_parameter_value fifo_AD {fifoDepth} {64}
    set_instance_parameter_value fifo_AD {fifoInputInterfaceOptions} {AVALONMM_WRITE}
    set_instance_parameter_value fifo_AD {fifoOutputInterfaceOptions} {AVALONMM_READ}
    set_instance_parameter_value fifo_AD {showHiddenFeatures} {0}
    set_instance_parameter_value fifo_AD {singleClockMode} {1}
    set_instance_parameter_value fifo_AD {singleResetMode} {0}
    set_instance_parameter_value fifo_AD {symbolsPerBeat} {2}
    set_instance_parameter_value fifo_AD {useBackpressure} {1}
    set_instance_parameter_value fifo_AD {useIRQ} {1}
    set_instance_parameter_value fifo_AD {usePacket} {1}
    set_instance_parameter_value fifo_AD {useReadControl} {0}
    set_instance_parameter_value fifo_AD {useRegister} {0}
    set_instance_parameter_value fifo_AD {useWriteControl} {1}

    add_instance fifo_AE altera_avalon_fifo 13.1
    set_instance_parameter_value fifo_AE {avalonMMAvalonMMDataWidth} {32}
    set_instance_parameter_value fifo_AE {avalonMMAvalonSTDataWidth} {32}
    set_instance_parameter_value fifo_AE {bitsPerSymbol} {16}
    set_instance_parameter_value fifo_AE {channelWidth} {8}
    set_instance_parameter_value fifo_AE {errorWidth} {8}
    set_instance_parameter_value fifo_AE {fifoDepth} {64}
    set_instance_parameter_value fifo_AE {fifoInputInterfaceOptions} {AVALONMM_WRITE}
    set_instance_parameter_value fifo_AE {fifoOutputInterfaceOptions} {AVALONMM_READ}
    set_instance_parameter_value fifo_AE {showHiddenFeatures} {0}
    set_instance_parameter_value fifo_AE {singleClockMode} {1}
    set_instance_parameter_value fifo_AE {singleResetMode} {0}
    set_instance_parameter_value fifo_AE {symbolsPerBeat} {2}
    set_instance_parameter_value fifo_AE {useBackpressure} {1}
    set_instance_parameter_value fifo_AE {useIRQ} {1}
    set_instance_parameter_value fifo_AE {usePacket} {1}
    set_instance_parameter_value fifo_AE {useReadControl} {0}
    set_instance_parameter_value fifo_AE {useRegister} {0}
    set_instance_parameter_value fifo_AE {useWriteControl} {1}

    add_instance fifo_AF altera_avalon_fifo 13.1
    set_instance_parameter_value fifo_AF {avalonMMAvalonMMDataWidth} {32}
    set_instance_parameter_value fifo_AF {avalonMMAvalonSTDataWidth} {32}
    set_instance_parameter_value fifo_AF {bitsPerSymbol} {16}
    set_instance_parameter_value fifo_AF {channelWidth} {8}
    set_instance_parameter_value fifo_AF {errorWidth} {8}
    set_instance_parameter_value fifo_AF {fifoDepth} {64}
    set_instance_parameter_value fifo_AF {fifoInputInterfaceOptions} {AVALONMM_WRITE}
    set_instance_parameter_value fifo_AF {fifoOutputInterfaceOptions} {AVALONMM_READ}
    set_instance_parameter_value fifo_AF {showHiddenFeatures} {0}
    set_instance_parameter_value fifo_AF {singleClockMode} {1}
    set_instance_parameter_value fifo_AF {singleResetMode} {0}
    set_instance_parameter_value fifo_AF {symbolsPerBeat} {2}
    set_instance_parameter_value fifo_AF {useBackpressure} {1}
    set_instance_parameter_value fifo_AF {useIRQ} {1}
    set_instance_parameter_value fifo_AF {usePacket} {1}
    set_instance_parameter_value fifo_AF {useReadControl} {0}
    set_instance_parameter_value fifo_AF {useRegister} {0}
    set_instance_parameter_value fifo_AF {useWriteControl} {1}

    add_instance fifo_BC altera_avalon_fifo 13.1
    set_instance_parameter_value fifo_BC {avalonMMAvalonMMDataWidth} {32}
    set_instance_parameter_value fifo_BC {avalonMMAvalonSTDataWidth} {32}
    set_instance_parameter_value fifo_BC {bitsPerSymbol} {16}
    set_instance_parameter_value fifo_BC {channelWidth} {8}
    set_instance_parameter_value fifo_BC {errorWidth} {8}
    set_instance_parameter_value fifo_BC {fifoDepth} {64}
    set_instance_parameter_value fifo_BC {fifoInputInterfaceOptions} {AVALONMM_WRITE}
    set_instance_parameter_value fifo_BC {fifoOutputInterfaceOptions} {AVALONMM_READ}
    set_instance_parameter_value fifo_BC {showHiddenFeatures} {0}
    set_instance_parameter_value fifo_BC {singleClockMode} {1}
    set_instance_parameter_value fifo_BC {singleResetMode} {0}
    set_instance_parameter_value fifo_BC {symbolsPerBeat} {2}
    set_instance_parameter_value fifo_BC {useBackpressure} {1}
    set_instance_parameter_value fifo_BC {useIRQ} {1}
    set_instance_parameter_value fifo_BC {usePacket} {1}
    set_instance_parameter_value fifo_BC {useReadControl} {0}
    set_instance_parameter_value fifo_BC {useRegister} {0}
    set_instance_parameter_value fifo_BC {useWriteControl} {1}

    add_instance fifo_CD altera_avalon_fifo 13.1
    set_instance_parameter_value fifo_CD {avalonMMAvalonMMDataWidth} {32}
    set_instance_parameter_value fifo_CD {avalonMMAvalonSTDataWidth} {32}
    set_instance_parameter_value fifo_CD {bitsPerSymbol} {16}
    set_instance_parameter_value fifo_CD {channelWidth} {8}
    set_instance_parameter_value fifo_CD {errorWidth} {8}
    set_instance_parameter_value fifo_CD {fifoDepth} {64}
    set_instance_parameter_value fifo_CD {fifoInputInterfaceOptions} {AVALONMM_WRITE}
    set_instance_parameter_value fifo_CD {fifoOutputInterfaceOptions} {AVALONMM_READ}
    set_instance_parameter_value fifo_CD {showHiddenFeatures} {0}
    set_instance_parameter_value fifo_CD {singleClockMode} {1}
    set_instance_parameter_value fifo_CD {singleResetMode} {0}
    set_instance_parameter_value fifo_CD {symbolsPerBeat} {2}
    set_instance_parameter_value fifo_CD {useBackpressure} {1}
    set_instance_parameter_value fifo_CD {useIRQ} {1}
    set_instance_parameter_value fifo_CD {usePacket} {1}
    set_instance_parameter_value fifo_CD {useReadControl} {0}
    set_instance_parameter_value fifo_CD {useRegister} {0}
    set_instance_parameter_value fifo_CD {useWriteControl} {1}

    add_instance fifo_DE altera_avalon_fifo 13.1
    set_instance_parameter_value fifo_DE {avalonMMAvalonMMDataWidth} {32}
    set_instance_parameter_value fifo_DE {avalonMMAvalonSTDataWidth} {32}
    set_instance_parameter_value fifo_DE {bitsPerSymbol} {16}
    set_instance_parameter_value fifo_DE {channelWidth} {8}
    set_instance_parameter_value fifo_DE {errorWidth} {8}
    set_instance_parameter_value fifo_DE {fifoDepth} {64}
    set_instance_parameter_value fifo_DE {fifoInputInterfaceOptions} {AVALONMM_WRITE}
    set_instance_parameter_value fifo_DE {fifoOutputInterfaceOptions} {AVALONMM_READ}
    set_instance_parameter_value fifo_DE {showHiddenFeatures} {0}
    set_instance_parameter_value fifo_DE {singleClockMode} {1}
    set_instance_parameter_value fifo_DE {singleResetMode} {0}
    set_instance_parameter_value fifo_DE {symbolsPerBeat} {2}
    set_instance_parameter_value fifo_DE {useBackpressure} {1}
    set_instance_parameter_value fifo_DE {useIRQ} {1}
    set_instance_parameter_value fifo_DE {usePacket} {1}
    set_instance_parameter_value fifo_DE {useReadControl} {0}
    set_instance_parameter_value fifo_DE {useRegister} {0}
    set_instance_parameter_value fifo_DE {useWriteControl} {1}

    add_instance fifo_EF altera_avalon_fifo 13.1
    set_instance_parameter_value fifo_EF {avalonMMAvalonMMDataWidth} {32}
    set_instance_parameter_value fifo_EF {avalonMMAvalonSTDataWidth} {32}
    set_instance_parameter_value fifo_EF {bitsPerSymbol} {16}
    set_instance_parameter_value fifo_EF {channelWidth} {8}
    set_instance_parameter_value fifo_EF {errorWidth} {8}
    set_instance_parameter_value fifo_EF {fifoDepth} {64}
    set_instance_parameter_value fifo_EF {fifoInputInterfaceOptions} {AVALONMM_WRITE}
    set_instance_parameter_value fifo_EF {fifoOutputInterfaceOptions} {AVALONMM_READ}
    set_instance_parameter_value fifo_EF {showHiddenFeatures} {0}
    set_instance_parameter_value fifo_EF {singleClockMode} {1}
    set_instance_parameter_value fifo_EF {singleResetMode} {0}
    set_instance_parameter_value fifo_EF {symbolsPerBeat} {2}
    set_instance_parameter_value fifo_EF {useBackpressure} {1}
    set_instance_parameter_value fifo_EF {useIRQ} {1}
    set_instance_parameter_value fifo_EF {usePacket} {1}
    set_instance_parameter_value fifo_EF {useReadControl} {0}
    set_instance_parameter_value fifo_EF {useRegister} {0}
    set_instance_parameter_value fifo_EF {useWriteControl} {1}

    # connections and connection parameters
    add_connection clock.clk PLL.inclk_interface clock

    add_connection clock.clk_reset PLL.inclk_interface_reset reset

    add_connection PLL.c0 led_out.clk clock

    add_connection clock.clk_reset led_out.reset reset

    add_connection PLL.c0 SDRAM_controller.clk clock

    add_connection clock.clk_reset SDRAM_controller.reset reset

    add_connection PLL.c0 timer_A.clk clock

    add_connection cpu_A.jtag_debug_module_reset timer_A.reset reset

    add_connection cpu_A.data_master timer_A.s1 avalon
    set_connection_parameter_value cpu_A.data_master/timer_A.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_A.data_master/timer_A.s1 baseAddress {0x080110e0}
    set_connection_parameter_value cpu_A.data_master/timer_A.s1 defaultConnection {0}

    add_connection PLL.c0 highTimer_A.clk clock

    add_connection PLL.c0 sysid_A.clk clock

    add_connection PLL.c0 jtag_A.clk clock

    add_connection PLL.c0 cpu_A.clk clock

    add_connection clock.clk_reset highTimer_A.reset reset

    add_connection clock.clk_reset sysid_A.reset reset

    add_connection clock.clk_reset jtag_A.reset reset

    add_connection clock.clk_reset cpu_A.reset_n reset

    add_connection clock.clk_reset timer_A.reset reset

    add_connection cpu_A.jtag_debug_module_reset highTimer_A.reset reset

    add_connection cpu_A.jtag_debug_module_reset sysid_A.reset reset

    add_connection cpu_A.jtag_debug_module_reset jtag_A.reset reset

    add_connection cpu_A.jtag_debug_module_reset cpu_A.reset_n reset

    add_connection cpu_A.d_irq timer_A.irq interrupt
    set_connection_parameter_value cpu_A.d_irq/timer_A.irq irqNumber {0}

    add_connection cpu_A.d_irq jtag_A.irq interrupt
    set_connection_parameter_value cpu_A.d_irq/jtag_A.irq irqNumber {1}

    add_connection cpu_A.d_irq highTimer_A.irq interrupt
    set_connection_parameter_value cpu_A.d_irq/highTimer_A.irq irqNumber {2}

    add_connection cpu_A.data_master highTimer_A.s1 avalon
    set_connection_parameter_value cpu_A.data_master/highTimer_A.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_A.data_master/highTimer_A.s1 baseAddress {0x080110c0}
    set_connection_parameter_value cpu_A.data_master/highTimer_A.s1 defaultConnection {0}

    add_connection cpu_A.data_master jtag_A.avalon_jtag_slave avalon
    set_connection_parameter_value cpu_A.data_master/jtag_A.avalon_jtag_slave arbitrationPriority {1}
    set_connection_parameter_value cpu_A.data_master/jtag_A.avalon_jtag_slave baseAddress {0x08011130}
    set_connection_parameter_value cpu_A.data_master/jtag_A.avalon_jtag_slave defaultConnection {0}

    add_connection cpu_A.data_master sysid_A.control_slave avalon
    set_connection_parameter_value cpu_A.data_master/sysid_A.control_slave arbitrationPriority {1}
    set_connection_parameter_value cpu_A.data_master/sysid_A.control_slave baseAddress {0x08011128}
    set_connection_parameter_value cpu_A.data_master/sysid_A.control_slave defaultConnection {0}

    add_connection cpu_A.data_master cpu_A.jtag_debug_module avalon
    set_connection_parameter_value cpu_A.data_master/cpu_A.jtag_debug_module arbitrationPriority {1}
    set_connection_parameter_value cpu_A.data_master/cpu_A.jtag_debug_module baseAddress {0x08010800}
    set_connection_parameter_value cpu_A.data_master/cpu_A.jtag_debug_module defaultConnection {0}

    add_connection cpu_A.data_master PLL.pll_slave avalon
    set_connection_parameter_value cpu_A.data_master/PLL.pll_slave arbitrationPriority {1}
    set_connection_parameter_value cpu_A.data_master/PLL.pll_slave baseAddress {0x08011110}
    set_connection_parameter_value cpu_A.data_master/PLL.pll_slave defaultConnection {0}

    add_connection cpu_A.data_master SDRAM_controller.s1 avalon
    set_connection_parameter_value cpu_A.data_master/SDRAM_controller.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_A.data_master/SDRAM_controller.s1 baseAddress {0x0000}
    set_connection_parameter_value cpu_A.data_master/SDRAM_controller.s1 defaultConnection {0}

    add_connection cpu_A.data_master led_out.s1 avalon
    set_connection_parameter_value cpu_A.data_master/led_out.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_A.data_master/led_out.s1 baseAddress {0x08011100}
    set_connection_parameter_value cpu_A.data_master/led_out.s1 defaultConnection {0}

    add_connection cpu_A.jtag_debug_module_reset SDRAM_controller.reset reset

    add_connection PLL.c0 fifo_AB_0.clk_in clock

    add_connection clock.clk_reset fifo_AB_0.reset_in reset

    add_connection cpu_A.jtag_debug_module_reset fifo_AB_0.reset_in reset

    add_connection cpu_A.data_master fifo_AB_0.in avalon
    set_connection_parameter_value cpu_A.data_master/fifo_AB_0.in arbitrationPriority {1}
    set_connection_parameter_value cpu_A.data_master/fifo_AB_0.in baseAddress {0x08011164}
    set_connection_parameter_value cpu_A.data_master/fifo_AB_0.in defaultConnection {0}

    add_connection cpu_A.data_master fifo_AB_0.in_csr avalon
    set_connection_parameter_value cpu_A.data_master/fifo_AB_0.in_csr arbitrationPriority {1}
    set_connection_parameter_value cpu_A.data_master/fifo_AB_0.in_csr baseAddress {0x080110a0}
    set_connection_parameter_value cpu_A.data_master/fifo_AB_0.in_csr defaultConnection {0}

    add_connection cpu_A.d_irq fifo_AB_0.in_irq interrupt
    set_connection_parameter_value cpu_A.d_irq/fifo_AB_0.in_irq irqNumber {3}

    add_connection PLL.c0 cpu_B.clk clock

    add_connection clock.clk_reset cpu_B.reset_n reset

    add_connection cpu_B.jtag_debug_module_reset cpu_B.reset_n reset

    add_connection cpu_B.d_irq highTimer_B.irq interrupt
    set_connection_parameter_value cpu_B.d_irq/highTimer_B.irq irqNumber {0}

    add_connection cpu_B.d_irq timer_B.irq interrupt
    set_connection_parameter_value cpu_B.d_irq/timer_B.irq irqNumber {1}

    add_connection cpu_B.data_master cpu_B.jtag_debug_module avalon
    set_connection_parameter_value cpu_B.data_master/cpu_B.jtag_debug_module arbitrationPriority {1}
    set_connection_parameter_value cpu_B.data_master/cpu_B.jtag_debug_module baseAddress {0x08010800}
    set_connection_parameter_value cpu_B.data_master/cpu_B.jtag_debug_module defaultConnection {0}

    add_connection cpu_B.instruction_master cpu_B.jtag_debug_module avalon
    set_connection_parameter_value cpu_B.instruction_master/cpu_B.jtag_debug_module arbitrationPriority {1}
    set_connection_parameter_value cpu_B.instruction_master/cpu_B.jtag_debug_module baseAddress {0x08010800}
    set_connection_parameter_value cpu_B.instruction_master/cpu_B.jtag_debug_module defaultConnection {0}

    add_connection cpu_B.data_master jtag_B.avalon_jtag_slave avalon
    set_connection_parameter_value cpu_B.data_master/jtag_B.avalon_jtag_slave arbitrationPriority {1}
    set_connection_parameter_value cpu_B.data_master/jtag_B.avalon_jtag_slave baseAddress {0x080110d0}
    set_connection_parameter_value cpu_B.data_master/jtag_B.avalon_jtag_slave defaultConnection {0}

    add_connection cpu_B.data_master sysid_B.control_slave avalon
    set_connection_parameter_value cpu_B.data_master/sysid_B.control_slave arbitrationPriority {1}
    set_connection_parameter_value cpu_B.data_master/sysid_B.control_slave baseAddress {0x080110c8}
    set_connection_parameter_value cpu_B.data_master/sysid_B.control_slave defaultConnection {0}

    add_connection cpu_B.data_master PLL.pll_slave avalon
    set_connection_parameter_value cpu_B.data_master/PLL.pll_slave arbitrationPriority {1}
    set_connection_parameter_value cpu_B.data_master/PLL.pll_slave baseAddress {0x08011110}
    set_connection_parameter_value cpu_B.data_master/PLL.pll_slave defaultConnection {0}

    add_connection cpu_B.data_master SDRAM_controller.s1 avalon
    set_connection_parameter_value cpu_B.data_master/SDRAM_controller.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_B.data_master/SDRAM_controller.s1 baseAddress {0x0000}
    set_connection_parameter_value cpu_B.data_master/SDRAM_controller.s1 defaultConnection {0}

    add_connection cpu_B.data_master highTimer_B.s1 avalon
    set_connection_parameter_value cpu_B.data_master/highTimer_B.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_B.data_master/highTimer_B.s1 baseAddress {0x08011040}
    set_connection_parameter_value cpu_B.data_master/highTimer_B.s1 defaultConnection {0}

    add_connection cpu_B.data_master led_out.s1 avalon
    set_connection_parameter_value cpu_B.data_master/led_out.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_B.data_master/led_out.s1 baseAddress {0x08011100}
    set_connection_parameter_value cpu_B.data_master/led_out.s1 defaultConnection {0}

    add_connection cpu_B.data_master timer_B.s1 avalon
    set_connection_parameter_value cpu_B.data_master/timer_B.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_B.data_master/timer_B.s1 baseAddress {0x08011020}
    set_connection_parameter_value cpu_B.data_master/timer_B.s1 defaultConnection {0}

    add_connection cpu_B.instruction_master jtag_B.avalon_jtag_slave avalon
    set_connection_parameter_value cpu_B.instruction_master/jtag_B.avalon_jtag_slave arbitrationPriority {1}
    set_connection_parameter_value cpu_B.instruction_master/jtag_B.avalon_jtag_slave baseAddress {0x080110d0}
    set_connection_parameter_value cpu_B.instruction_master/jtag_B.avalon_jtag_slave defaultConnection {0}

    add_connection PLL.c0 timer_B.clk clock

    add_connection clock.clk_reset timer_B.reset reset

    add_connection cpu_B.jtag_debug_module_reset timer_B.reset reset

    add_connection PLL.c0 highTimer_B.clk clock

    add_connection clock.clk_reset highTimer_B.reset reset

    add_connection cpu_B.jtag_debug_module_reset highTimer_B.reset reset

    add_connection PLL.c0 sysid_B.clk clock

    add_connection clock.clk_reset sysid_B.reset reset

    add_connection cpu_B.jtag_debug_module_reset sysid_B.reset reset

    add_connection PLL.c0 jtag_B.clk clock

    add_connection clock.clk_reset jtag_B.reset reset

    add_connection cpu_B.jtag_debug_module_reset jtag_B.reset reset

    add_connection cpu_B.d_irq jtag_B.irq interrupt
    set_connection_parameter_value cpu_B.d_irq/jtag_B.irq irqNumber {2}

    add_connection PLL.c0 cpu_C.clk clock

    add_connection clock.clk_reset cpu_C.reset_n reset

    add_connection cpu_C.jtag_debug_module_reset cpu_C.reset_n reset

    add_connection cpu_C.data_master jtag_C.avalon_jtag_slave avalon
    set_connection_parameter_value cpu_C.data_master/jtag_C.avalon_jtag_slave arbitrationPriority {1}
    set_connection_parameter_value cpu_C.data_master/jtag_C.avalon_jtag_slave baseAddress {0x08011090}
    set_connection_parameter_value cpu_C.data_master/jtag_C.avalon_jtag_slave defaultConnection {0}

    add_connection cpu_C.data_master sysid_C.control_slave avalon
    set_connection_parameter_value cpu_C.data_master/sysid_C.control_slave arbitrationPriority {1}
    set_connection_parameter_value cpu_C.data_master/sysid_C.control_slave baseAddress {0x08011088}
    set_connection_parameter_value cpu_C.data_master/sysid_C.control_slave defaultConnection {0}

    add_connection cpu_C.data_master cpu_C.jtag_debug_module avalon
    set_connection_parameter_value cpu_C.data_master/cpu_C.jtag_debug_module arbitrationPriority {1}
    set_connection_parameter_value cpu_C.data_master/cpu_C.jtag_debug_module baseAddress {0x08010800}
    set_connection_parameter_value cpu_C.data_master/cpu_C.jtag_debug_module defaultConnection {0}

    add_connection cpu_C.data_master PLL.pll_slave avalon
    set_connection_parameter_value cpu_C.data_master/PLL.pll_slave arbitrationPriority {1}
    set_connection_parameter_value cpu_C.data_master/PLL.pll_slave baseAddress {0x08011110}
    set_connection_parameter_value cpu_C.data_master/PLL.pll_slave defaultConnection {0}

    add_connection cpu_C.data_master SDRAM_controller.s1 avalon
    set_connection_parameter_value cpu_C.data_master/SDRAM_controller.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_C.data_master/SDRAM_controller.s1 baseAddress {0x0000}
    set_connection_parameter_value cpu_C.data_master/SDRAM_controller.s1 defaultConnection {0}

    add_connection cpu_C.data_master highTimer_C.s1 avalon
    set_connection_parameter_value cpu_C.data_master/highTimer_C.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_C.data_master/highTimer_C.s1 baseAddress {0x08011060}
    set_connection_parameter_value cpu_C.data_master/highTimer_C.s1 defaultConnection {0}

    add_connection cpu_C.data_master timer_C.s1 avalon
    set_connection_parameter_value cpu_C.data_master/timer_C.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_C.data_master/timer_C.s1 baseAddress {0x08011040}
    set_connection_parameter_value cpu_C.data_master/timer_C.s1 defaultConnection {0}

    add_connection cpu_C.instruction_master jtag_C.avalon_jtag_slave avalon
    set_connection_parameter_value cpu_C.instruction_master/jtag_C.avalon_jtag_slave arbitrationPriority {1}
    set_connection_parameter_value cpu_C.instruction_master/jtag_C.avalon_jtag_slave baseAddress {0x08011090}
    set_connection_parameter_value cpu_C.instruction_master/jtag_C.avalon_jtag_slave defaultConnection {0}

    add_connection cpu_C.instruction_master cpu_C.jtag_debug_module avalon
    set_connection_parameter_value cpu_C.instruction_master/cpu_C.jtag_debug_module arbitrationPriority {1}
    set_connection_parameter_value cpu_C.instruction_master/cpu_C.jtag_debug_module baseAddress {0x08010800}
    set_connection_parameter_value cpu_C.instruction_master/cpu_C.jtag_debug_module defaultConnection {0}

    add_connection cpu_C.jtag_debug_module_reset SDRAM_controller.reset reset

    add_connection cpu_C.jtag_debug_module_reset highTimer_C.reset reset

    add_connection cpu_C.jtag_debug_module_reset jtag_C.reset reset

    add_connection cpu_C.jtag_debug_module_reset sysid_C.reset reset

    add_connection cpu_C.jtag_debug_module_reset timer_C.reset reset

    add_connection PLL.c0 timer_C.clk clock

    add_connection clock.clk_reset timer_C.reset reset

    add_connection cpu_C.d_irq timer_C.irq interrupt
    set_connection_parameter_value cpu_C.d_irq/timer_C.irq irqNumber {0}

    add_connection PLL.c0 highTimer_C.clk clock

    add_connection clock.clk_reset highTimer_C.reset reset

    add_connection cpu_C.d_irq highTimer_C.irq interrupt
    set_connection_parameter_value cpu_C.d_irq/highTimer_C.irq irqNumber {1}

    add_connection PLL.c0 sysid_C.clk clock

    add_connection clock.clk_reset sysid_C.reset reset

    add_connection PLL.c0 jtag_C.clk clock

    add_connection clock.clk_reset jtag_C.reset reset

    add_connection cpu_C.d_irq jtag_C.irq interrupt
    set_connection_parameter_value cpu_C.d_irq/jtag_C.irq irqNumber {2}

    add_connection PLL.c0 cpu_D.clk clock

    add_connection clock.clk_reset cpu_D.reset_n reset

    add_connection cpu_D.jtag_debug_module_reset cpu_D.reset_n reset

    add_connection cpu_D.data_master jtag_D.avalon_jtag_slave avalon
    set_connection_parameter_value cpu_D.data_master/jtag_D.avalon_jtag_slave arbitrationPriority {1}
    set_connection_parameter_value cpu_D.data_master/jtag_D.avalon_jtag_slave baseAddress {0x08011090}
    set_connection_parameter_value cpu_D.data_master/jtag_D.avalon_jtag_slave defaultConnection {0}

    add_connection cpu_D.data_master sysid_D.control_slave avalon
    set_connection_parameter_value cpu_D.data_master/sysid_D.control_slave arbitrationPriority {1}
    set_connection_parameter_value cpu_D.data_master/sysid_D.control_slave baseAddress {0x08011088}
    set_connection_parameter_value cpu_D.data_master/sysid_D.control_slave defaultConnection {0}

    add_connection cpu_D.data_master cpu_D.jtag_debug_module avalon
    set_connection_parameter_value cpu_D.data_master/cpu_D.jtag_debug_module arbitrationPriority {1}
    set_connection_parameter_value cpu_D.data_master/cpu_D.jtag_debug_module baseAddress {0x08010800}
    set_connection_parameter_value cpu_D.data_master/cpu_D.jtag_debug_module defaultConnection {0}

    add_connection cpu_D.data_master PLL.pll_slave avalon
    set_connection_parameter_value cpu_D.data_master/PLL.pll_slave arbitrationPriority {1}
    set_connection_parameter_value cpu_D.data_master/PLL.pll_slave baseAddress {0x08011110}
    set_connection_parameter_value cpu_D.data_master/PLL.pll_slave defaultConnection {0}

    add_connection cpu_D.data_master SDRAM_controller.s1 avalon
    set_connection_parameter_value cpu_D.data_master/SDRAM_controller.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_D.data_master/SDRAM_controller.s1 baseAddress {0x0000}
    set_connection_parameter_value cpu_D.data_master/SDRAM_controller.s1 defaultConnection {0}

    add_connection cpu_D.data_master highTimer_D.s1 avalon
    set_connection_parameter_value cpu_D.data_master/highTimer_D.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_D.data_master/highTimer_D.s1 baseAddress {0x080110a0}
    set_connection_parameter_value cpu_D.data_master/highTimer_D.s1 defaultConnection {0}

    add_connection cpu_D.data_master led_out.s1 avalon
    set_connection_parameter_value cpu_D.data_master/led_out.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_D.data_master/led_out.s1 baseAddress {0x08011100}
    set_connection_parameter_value cpu_D.data_master/led_out.s1 defaultConnection {0}

    add_connection cpu_D.data_master timer_D.s1 avalon
    set_connection_parameter_value cpu_D.data_master/timer_D.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_D.data_master/timer_D.s1 baseAddress {0x08011060}
    set_connection_parameter_value cpu_D.data_master/timer_D.s1 defaultConnection {0}

    add_connection cpu_D.instruction_master jtag_D.avalon_jtag_slave avalon
    set_connection_parameter_value cpu_D.instruction_master/jtag_D.avalon_jtag_slave arbitrationPriority {1}
    set_connection_parameter_value cpu_D.instruction_master/jtag_D.avalon_jtag_slave baseAddress {0x08011090}
    set_connection_parameter_value cpu_D.instruction_master/jtag_D.avalon_jtag_slave defaultConnection {0}

    add_connection cpu_D.instruction_master cpu_D.jtag_debug_module avalon
    set_connection_parameter_value cpu_D.instruction_master/cpu_D.jtag_debug_module arbitrationPriority {1}
    set_connection_parameter_value cpu_D.instruction_master/cpu_D.jtag_debug_module baseAddress {0x08010800}
    set_connection_parameter_value cpu_D.instruction_master/cpu_D.jtag_debug_module defaultConnection {0}

    add_connection cpu_D.jtag_debug_module_reset SDRAM_controller.reset reset

    add_connection cpu_D.jtag_debug_module_reset highTimer_D.reset reset

    add_connection cpu_D.jtag_debug_module_reset jtag_D.reset reset

    add_connection cpu_D.jtag_debug_module_reset sysid_D.reset reset

    add_connection cpu_D.jtag_debug_module_reset timer_D.reset reset

    add_connection cpu_D.jtag_debug_module_reset led_out.reset reset

    add_connection cpu_C.jtag_debug_module_reset led_out.reset reset

    add_connection cpu_B.jtag_debug_module_reset led_out.reset reset

    add_connection cpu_B.jtag_debug_module_reset SDRAM_controller.reset reset

    add_connection cpu_A.jtag_debug_module_reset led_out.reset reset

    add_connection PLL.c0 timer_D.clk clock

    add_connection clock.clk_reset timer_D.reset reset

    add_connection cpu_D.d_irq timer_D.irq interrupt
    set_connection_parameter_value cpu_D.d_irq/timer_D.irq irqNumber {0}

    add_connection PLL.c0 highTimer_D.clk clock

    add_connection clock.clk_reset highTimer_D.reset reset

    add_connection cpu_D.d_irq highTimer_D.irq interrupt
    set_connection_parameter_value cpu_D.d_irq/highTimer_D.irq irqNumber {1}

    add_connection PLL.c0 sysid_D.clk clock

    add_connection clock.clk_reset sysid_D.reset reset

    add_connection PLL.c0 jtag_D.clk clock

    add_connection clock.clk_reset jtag_D.reset reset

    add_connection cpu_D.d_irq jtag_D.irq interrupt
    set_connection_parameter_value cpu_D.d_irq/jtag_D.irq irqNumber {2}

    add_connection PLL.c0 cpu_E.clk clock

    add_connection clock.clk_reset cpu_E.reset_n reset

    add_connection cpu_E.jtag_debug_module_reset cpu_E.reset_n reset

    add_connection cpu_E.data_master jtag_E.avalon_jtag_slave avalon
    set_connection_parameter_value cpu_E.data_master/jtag_E.avalon_jtag_slave arbitrationPriority {1}
    set_connection_parameter_value cpu_E.data_master/jtag_E.avalon_jtag_slave baseAddress {0x080110b0}
    set_connection_parameter_value cpu_E.data_master/jtag_E.avalon_jtag_slave defaultConnection {0}

    add_connection cpu_E.data_master sysid_E.control_slave avalon
    set_connection_parameter_value cpu_E.data_master/sysid_E.control_slave arbitrationPriority {1}
    set_connection_parameter_value cpu_E.data_master/sysid_E.control_slave baseAddress {0x080110a8}
    set_connection_parameter_value cpu_E.data_master/sysid_E.control_slave defaultConnection {0}

    add_connection cpu_E.data_master cpu_E.jtag_debug_module avalon
    set_connection_parameter_value cpu_E.data_master/cpu_E.jtag_debug_module arbitrationPriority {1}
    set_connection_parameter_value cpu_E.data_master/cpu_E.jtag_debug_module baseAddress {0x08010800}
    set_connection_parameter_value cpu_E.data_master/cpu_E.jtag_debug_module defaultConnection {0}

    add_connection cpu_E.data_master PLL.pll_slave avalon
    set_connection_parameter_value cpu_E.data_master/PLL.pll_slave arbitrationPriority {1}
    set_connection_parameter_value cpu_E.data_master/PLL.pll_slave baseAddress {0x08011110}
    set_connection_parameter_value cpu_E.data_master/PLL.pll_slave defaultConnection {0}

    add_connection cpu_E.data_master SDRAM_controller.s1 avalon
    set_connection_parameter_value cpu_E.data_master/SDRAM_controller.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_E.data_master/SDRAM_controller.s1 baseAddress {0x0000}
    set_connection_parameter_value cpu_E.data_master/SDRAM_controller.s1 defaultConnection {0}

    add_connection cpu_E.data_master highTimer_E.s1 avalon
    set_connection_parameter_value cpu_E.data_master/highTimer_E.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_E.data_master/highTimer_E.s1 baseAddress {0x08011080}
    set_connection_parameter_value cpu_E.data_master/highTimer_E.s1 defaultConnection {0}

    add_connection cpu_E.data_master led_out.s1 avalon
    set_connection_parameter_value cpu_E.data_master/led_out.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_E.data_master/led_out.s1 baseAddress {0x08011100}
    set_connection_parameter_value cpu_E.data_master/led_out.s1 defaultConnection {0}

    add_connection cpu_E.data_master timer_E.s1 avalon
    set_connection_parameter_value cpu_E.data_master/timer_E.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_E.data_master/timer_E.s1 baseAddress {0x08011060}
    set_connection_parameter_value cpu_E.data_master/timer_E.s1 defaultConnection {0}

    add_connection cpu_E.instruction_master jtag_E.avalon_jtag_slave avalon
    set_connection_parameter_value cpu_E.instruction_master/jtag_E.avalon_jtag_slave arbitrationPriority {1}
    set_connection_parameter_value cpu_E.instruction_master/jtag_E.avalon_jtag_slave baseAddress {0x080110b0}
    set_connection_parameter_value cpu_E.instruction_master/jtag_E.avalon_jtag_slave defaultConnection {0}

    add_connection cpu_E.instruction_master cpu_E.jtag_debug_module avalon
    set_connection_parameter_value cpu_E.instruction_master/cpu_E.jtag_debug_module arbitrationPriority {1}
    set_connection_parameter_value cpu_E.instruction_master/cpu_E.jtag_debug_module baseAddress {0x08010800}
    set_connection_parameter_value cpu_E.instruction_master/cpu_E.jtag_debug_module defaultConnection {0}

    add_connection cpu_E.jtag_debug_module_reset SDRAM_controller.reset reset

    add_connection cpu_E.jtag_debug_module_reset highTimer_E.reset reset

    add_connection cpu_E.jtag_debug_module_reset jtag_E.reset reset

    add_connection cpu_E.jtag_debug_module_reset led_out.reset reset

    add_connection cpu_E.jtag_debug_module_reset sysid_E.reset reset

    add_connection cpu_E.jtag_debug_module_reset timer_E.reset reset

    add_connection PLL.c0 timer_E.clk clock

    add_connection clock.clk_reset timer_E.reset reset

    add_connection cpu_E.d_irq timer_E.irq interrupt
    set_connection_parameter_value cpu_E.d_irq/timer_E.irq irqNumber {0}

    add_connection PLL.c0 highTimer_E.clk clock

    add_connection clock.clk_reset highTimer_E.reset reset

    add_connection cpu_E.d_irq highTimer_E.irq interrupt
    set_connection_parameter_value cpu_E.d_irq/highTimer_E.irq irqNumber {1}

    add_connection PLL.c0 sysid_E.clk clock

    add_connection clock.clk_reset sysid_E.reset reset

    add_connection PLL.c0 jtag_E.clk clock

    add_connection clock.clk_reset jtag_E.reset reset

    add_connection cpu_E.d_irq jtag_E.irq interrupt
    set_connection_parameter_value cpu_E.d_irq/jtag_E.irq irqNumber {2}

    add_connection PLL.c0 cpu_F.clk clock

    add_connection clock.clk_reset cpu_F.reset_n reset

    add_connection cpu_F.jtag_debug_module_reset cpu_F.reset_n reset

    add_connection cpu_F.data_master jtag_F.avalon_jtag_slave avalon
    set_connection_parameter_value cpu_F.data_master/jtag_F.avalon_jtag_slave arbitrationPriority {1}
    set_connection_parameter_value cpu_F.data_master/jtag_F.avalon_jtag_slave baseAddress {0x08011090}
    set_connection_parameter_value cpu_F.data_master/jtag_F.avalon_jtag_slave defaultConnection {0}

    add_connection cpu_F.data_master sysid_F.control_slave avalon
    set_connection_parameter_value cpu_F.data_master/sysid_F.control_slave arbitrationPriority {1}
    set_connection_parameter_value cpu_F.data_master/sysid_F.control_slave baseAddress {0x08011088}
    set_connection_parameter_value cpu_F.data_master/sysid_F.control_slave defaultConnection {0}

    add_connection cpu_F.data_master cpu_F.jtag_debug_module avalon
    set_connection_parameter_value cpu_F.data_master/cpu_F.jtag_debug_module arbitrationPriority {1}
    set_connection_parameter_value cpu_F.data_master/cpu_F.jtag_debug_module baseAddress {0x08010800}
    set_connection_parameter_value cpu_F.data_master/cpu_F.jtag_debug_module defaultConnection {0}

    add_connection cpu_F.data_master PLL.pll_slave avalon
    set_connection_parameter_value cpu_F.data_master/PLL.pll_slave arbitrationPriority {1}
    set_connection_parameter_value cpu_F.data_master/PLL.pll_slave baseAddress {0x08011110}
    set_connection_parameter_value cpu_F.data_master/PLL.pll_slave defaultConnection {0}

    add_connection cpu_F.data_master SDRAM_controller.s1 avalon
    set_connection_parameter_value cpu_F.data_master/SDRAM_controller.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_F.data_master/SDRAM_controller.s1 baseAddress {0x0000}
    set_connection_parameter_value cpu_F.data_master/SDRAM_controller.s1 defaultConnection {0}

    add_connection cpu_F.data_master highTimer_F.s1 avalon
    set_connection_parameter_value cpu_F.data_master/highTimer_F.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_F.data_master/highTimer_F.s1 baseAddress {0x08011060}
    set_connection_parameter_value cpu_F.data_master/highTimer_F.s1 defaultConnection {0}

    add_connection cpu_F.data_master led_out.s1 avalon
    set_connection_parameter_value cpu_F.data_master/led_out.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_F.data_master/led_out.s1 baseAddress {0x08011100}
    set_connection_parameter_value cpu_F.data_master/led_out.s1 defaultConnection {0}

    add_connection cpu_F.data_master timer_F.s1 avalon
    set_connection_parameter_value cpu_F.data_master/timer_F.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_F.data_master/timer_F.s1 baseAddress {0x08011020}
    set_connection_parameter_value cpu_F.data_master/timer_F.s1 defaultConnection {0}

    add_connection cpu_F.instruction_master jtag_F.avalon_jtag_slave avalon
    set_connection_parameter_value cpu_F.instruction_master/jtag_F.avalon_jtag_slave arbitrationPriority {1}
    set_connection_parameter_value cpu_F.instruction_master/jtag_F.avalon_jtag_slave baseAddress {0x08011090}
    set_connection_parameter_value cpu_F.instruction_master/jtag_F.avalon_jtag_slave defaultConnection {0}

    add_connection cpu_F.instruction_master cpu_F.jtag_debug_module avalon
    set_connection_parameter_value cpu_F.instruction_master/cpu_F.jtag_debug_module arbitrationPriority {1}
    set_connection_parameter_value cpu_F.instruction_master/cpu_F.jtag_debug_module baseAddress {0x08010800}
    set_connection_parameter_value cpu_F.instruction_master/cpu_F.jtag_debug_module defaultConnection {0}

    add_connection cpu_F.jtag_debug_module_reset SDRAM_controller.reset reset

    add_connection cpu_F.jtag_debug_module_reset highTimer_F.reset reset

    add_connection cpu_F.jtag_debug_module_reset jtag_F.reset reset

    add_connection cpu_F.jtag_debug_module_reset led_out.reset reset

    add_connection cpu_F.jtag_debug_module_reset sysid_F.reset reset

    add_connection cpu_F.jtag_debug_module_reset timer_F.reset reset

    add_connection PLL.c0 timer_F.clk clock

    add_connection clock.clk_reset timer_F.reset reset

    add_connection cpu_F.d_irq timer_F.irq interrupt
    set_connection_parameter_value cpu_F.d_irq/timer_F.irq irqNumber {0}

    add_connection PLL.c0 highTimer_F.clk clock

    add_connection clock.clk_reset highTimer_F.reset reset

    add_connection cpu_F.d_irq highTimer_F.irq interrupt
    set_connection_parameter_value cpu_F.d_irq/highTimer_F.irq irqNumber {1}

    add_connection PLL.c0 sysid_F.clk clock

    add_connection clock.clk_reset sysid_F.reset reset

    add_connection PLL.c0 jtag_F.clk clock

    add_connection clock.clk_reset jtag_F.reset reset

    add_connection cpu_F.d_irq jtag_F.irq interrupt
    set_connection_parameter_value cpu_F.d_irq/jtag_F.irq irqNumber {2}

    add_connection cpu_C.data_master led_out.s1 avalon
    set_connection_parameter_value cpu_C.data_master/led_out.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_C.data_master/led_out.s1 baseAddress {0x08011100}
    set_connection_parameter_value cpu_C.data_master/led_out.s1 defaultConnection {0}

    add_connection PLL.c0 inst_mem_A.clk1 clock

    add_connection cpu_A.data_master inst_mem_A.s1 avalon
    set_connection_parameter_value cpu_A.data_master/inst_mem_A.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_A.data_master/inst_mem_A.s1 baseAddress {0x08008000}
    set_connection_parameter_value cpu_A.data_master/inst_mem_A.s1 defaultConnection {0}

    add_connection cpu_A.instruction_master inst_mem_A.s1 avalon
    set_connection_parameter_value cpu_A.instruction_master/inst_mem_A.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_A.instruction_master/inst_mem_A.s1 baseAddress {0x08008000}
    set_connection_parameter_value cpu_A.instruction_master/inst_mem_A.s1 defaultConnection {0}

    add_connection clock.clk_reset inst_mem_A.reset1 reset

    add_connection cpu_A.jtag_debug_module_reset inst_mem_A.reset1 reset

    add_connection PLL.c0 inst_mem_B.clk1 clock

    add_connection cpu_B.data_master inst_mem_B.s1 avalon
    set_connection_parameter_value cpu_B.data_master/inst_mem_B.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_B.data_master/inst_mem_B.s1 baseAddress {0x08008000}
    set_connection_parameter_value cpu_B.data_master/inst_mem_B.s1 defaultConnection {0}

    add_connection clock.clk_reset inst_mem_B.reset1 reset

    add_connection cpu_B.jtag_debug_module_reset inst_mem_B.reset1 reset

    add_connection cpu_B.instruction_master inst_mem_B.s1 avalon
    set_connection_parameter_value cpu_B.instruction_master/inst_mem_B.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_B.instruction_master/inst_mem_B.s1 baseAddress {0x08008000}
    set_connection_parameter_value cpu_B.instruction_master/inst_mem_B.s1 defaultConnection {0}

    add_connection cpu_A.instruction_master jtag_A.avalon_jtag_slave avalon
    set_connection_parameter_value cpu_A.instruction_master/jtag_A.avalon_jtag_slave arbitrationPriority {1}
    set_connection_parameter_value cpu_A.instruction_master/jtag_A.avalon_jtag_slave baseAddress {0x08011130}
    set_connection_parameter_value cpu_A.instruction_master/jtag_A.avalon_jtag_slave defaultConnection {0}

    add_connection cpu_A.instruction_master cpu_A.jtag_debug_module avalon
    set_connection_parameter_value cpu_A.instruction_master/cpu_A.jtag_debug_module arbitrationPriority {1}
    set_connection_parameter_value cpu_A.instruction_master/cpu_A.jtag_debug_module baseAddress {0x08010800}
    set_connection_parameter_value cpu_A.instruction_master/cpu_A.jtag_debug_module defaultConnection {0}

    add_connection PLL.c0 inst_mem_C.clk1 clock

    add_connection cpu_C.data_master inst_mem_C.s1 avalon
    set_connection_parameter_value cpu_C.data_master/inst_mem_C.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_C.data_master/inst_mem_C.s1 baseAddress {0x08008000}
    set_connection_parameter_value cpu_C.data_master/inst_mem_C.s1 defaultConnection {0}

    add_connection cpu_C.instruction_master inst_mem_C.s1 avalon
    set_connection_parameter_value cpu_C.instruction_master/inst_mem_C.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_C.instruction_master/inst_mem_C.s1 baseAddress {0x08008000}
    set_connection_parameter_value cpu_C.instruction_master/inst_mem_C.s1 defaultConnection {0}

    add_connection clock.clk_reset inst_mem_C.reset1 reset

    add_connection cpu_C.jtag_debug_module_reset inst_mem_C.reset1 reset

    add_connection PLL.c0 inst_mem_D.clk1 clock

    add_connection cpu_D.data_master inst_mem_D.s1 avalon
    set_connection_parameter_value cpu_D.data_master/inst_mem_D.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_D.data_master/inst_mem_D.s1 baseAddress {0x08008000}
    set_connection_parameter_value cpu_D.data_master/inst_mem_D.s1 defaultConnection {0}

    add_connection cpu_D.instruction_master inst_mem_D.s1 avalon
    set_connection_parameter_value cpu_D.instruction_master/inst_mem_D.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_D.instruction_master/inst_mem_D.s1 baseAddress {0x08008000}
    set_connection_parameter_value cpu_D.instruction_master/inst_mem_D.s1 defaultConnection {0}

    add_connection clock.clk_reset inst_mem_D.reset1 reset

    add_connection cpu_D.jtag_debug_module_reset inst_mem_D.reset1 reset

    add_connection PLL.c0 inst_mem_E.clk1 clock

    add_connection cpu_E.data_master inst_mem_E.s1 avalon
    set_connection_parameter_value cpu_E.data_master/inst_mem_E.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_E.data_master/inst_mem_E.s1 baseAddress {0x08008000}
    set_connection_parameter_value cpu_E.data_master/inst_mem_E.s1 defaultConnection {0}

    add_connection cpu_E.instruction_master inst_mem_E.s1 avalon
    set_connection_parameter_value cpu_E.instruction_master/inst_mem_E.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_E.instruction_master/inst_mem_E.s1 baseAddress {0x08008000}
    set_connection_parameter_value cpu_E.instruction_master/inst_mem_E.s1 defaultConnection {0}

    add_connection clock.clk_reset inst_mem_E.reset1 reset

    add_connection cpu_E.jtag_debug_module_reset inst_mem_E.reset1 reset

    add_connection PLL.c0 inst_mem_F.clk1 clock

    add_connection cpu_F.data_master inst_mem_F.s1 avalon
    set_connection_parameter_value cpu_F.data_master/inst_mem_F.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_F.data_master/inst_mem_F.s1 baseAddress {0x08008000}
    set_connection_parameter_value cpu_F.data_master/inst_mem_F.s1 defaultConnection {0}

    add_connection cpu_F.instruction_master inst_mem_F.s1 avalon
    set_connection_parameter_value cpu_F.instruction_master/inst_mem_F.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_F.instruction_master/inst_mem_F.s1 baseAddress {0x08008000}
    set_connection_parameter_value cpu_F.instruction_master/inst_mem_F.s1 defaultConnection {0}

    add_connection clock.clk_reset inst_mem_F.reset1 reset

    add_connection cpu_F.jtag_debug_module_reset inst_mem_F.reset1 reset

    add_connection cpu_A.instruction_master SDRAM_controller.s1 avalon
    set_connection_parameter_value cpu_A.instruction_master/SDRAM_controller.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_A.instruction_master/SDRAM_controller.s1 baseAddress {0x0000}
    set_connection_parameter_value cpu_A.instruction_master/SDRAM_controller.s1 defaultConnection {0}

    add_connection cpu_B.instruction_master SDRAM_controller.s1 avalon
    set_connection_parameter_value cpu_B.instruction_master/SDRAM_controller.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_B.instruction_master/SDRAM_controller.s1 baseAddress {0x0000}
    set_connection_parameter_value cpu_B.instruction_master/SDRAM_controller.s1 defaultConnection {0}

    add_connection cpu_C.instruction_master SDRAM_controller.s1 avalon
    set_connection_parameter_value cpu_C.instruction_master/SDRAM_controller.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_C.instruction_master/SDRAM_controller.s1 baseAddress {0x0000}
    set_connection_parameter_value cpu_C.instruction_master/SDRAM_controller.s1 defaultConnection {0}

    add_connection cpu_D.instruction_master SDRAM_controller.s1 avalon
    set_connection_parameter_value cpu_D.instruction_master/SDRAM_controller.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_D.instruction_master/SDRAM_controller.s1 baseAddress {0x0000}
    set_connection_parameter_value cpu_D.instruction_master/SDRAM_controller.s1 defaultConnection {0}

    add_connection cpu_E.instruction_master SDRAM_controller.s1 avalon
    set_connection_parameter_value cpu_E.instruction_master/SDRAM_controller.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_E.instruction_master/SDRAM_controller.s1 baseAddress {0x0000}
    set_connection_parameter_value cpu_E.instruction_master/SDRAM_controller.s1 defaultConnection {0}

    add_connection cpu_F.instruction_master SDRAM_controller.s1 avalon
    set_connection_parameter_value cpu_F.instruction_master/SDRAM_controller.s1 arbitrationPriority {1}
    set_connection_parameter_value cpu_F.instruction_master/SDRAM_controller.s1 baseAddress {0x0000}
    set_connection_parameter_value cpu_F.instruction_master/SDRAM_controller.s1 defaultConnection {0}

    add_connection cpu_B.jtag_debug_module_reset fifo_AB_0.reset_in reset

    add_connection cpu_B.data_master fifo_AB_0.out avalon
    set_connection_parameter_value cpu_B.data_master/fifo_AB_0.out arbitrationPriority {1}
    set_connection_parameter_value cpu_B.data_master/fifo_AB_0.out baseAddress {0x08011158}
    set_connection_parameter_value cpu_B.data_master/fifo_AB_0.out defaultConnection {0}

    add_connection cpu_B.data_master fifo_AB_0.in_csr avalon
    set_connection_parameter_value cpu_B.data_master/fifo_AB_0.in_csr arbitrationPriority {1}
    set_connection_parameter_value cpu_B.data_master/fifo_AB_0.in_csr baseAddress {0x080110a0}
    set_connection_parameter_value cpu_B.data_master/fifo_AB_0.in_csr defaultConnection {0}

    add_connection PLL.c0 fifo_AB_1.clk_in clock

    add_connection PLL.c0 fifo_AB_2.clk_in clock

    add_connection clock.clk_reset fifo_AB_1.reset_in reset

    add_connection cpu_A.jtag_debug_module_reset fifo_AB_1.reset_in reset

    add_connection cpu_B.jtag_debug_module_reset fifo_AB_1.reset_in reset

    add_connection clock.clk_reset fifo_AB_2.reset_in reset

    add_connection cpu_A.jtag_debug_module_reset fifo_AB_2.reset_in reset

    add_connection cpu_B.jtag_debug_module_reset fifo_AB_2.reset_in reset

    add_connection cpu_A.data_master fifo_AB_1.in avalon
    set_connection_parameter_value cpu_A.data_master/fifo_AB_1.in arbitrationPriority {1}
    set_connection_parameter_value cpu_A.data_master/fifo_AB_1.in baseAddress {0x08011160}
    set_connection_parameter_value cpu_A.data_master/fifo_AB_1.in defaultConnection {0}

    add_connection cpu_A.data_master fifo_AB_2.in avalon
    set_connection_parameter_value cpu_A.data_master/fifo_AB_2.in arbitrationPriority {1}
    set_connection_parameter_value cpu_A.data_master/fifo_AB_2.in baseAddress {0x0801115c}
    set_connection_parameter_value cpu_A.data_master/fifo_AB_2.in defaultConnection {0}

    add_connection cpu_B.data_master fifo_AB_1.out avalon
    set_connection_parameter_value cpu_B.data_master/fifo_AB_1.out arbitrationPriority {1}
    set_connection_parameter_value cpu_B.data_master/fifo_AB_1.out baseAddress {0x08011154}
    set_connection_parameter_value cpu_B.data_master/fifo_AB_1.out defaultConnection {0}

    add_connection cpu_B.data_master fifo_AB_2.out avalon
    set_connection_parameter_value cpu_B.data_master/fifo_AB_2.out arbitrationPriority {1}
    set_connection_parameter_value cpu_B.data_master/fifo_AB_2.out baseAddress {0x08011150}
    set_connection_parameter_value cpu_B.data_master/fifo_AB_2.out defaultConnection {0}

    add_connection cpu_A.data_master fifo_AB_1.in_csr avalon
    set_connection_parameter_value cpu_A.data_master/fifo_AB_1.in_csr arbitrationPriority {1}
    set_connection_parameter_value cpu_A.data_master/fifo_AB_1.in_csr baseAddress {0x08011080}
    set_connection_parameter_value cpu_A.data_master/fifo_AB_1.in_csr defaultConnection {0}

    add_connection cpu_B.data_master fifo_AB_1.in_csr avalon
    set_connection_parameter_value cpu_B.data_master/fifo_AB_1.in_csr arbitrationPriority {1}
    set_connection_parameter_value cpu_B.data_master/fifo_AB_1.in_csr baseAddress {0x08011080}
    set_connection_parameter_value cpu_B.data_master/fifo_AB_1.in_csr defaultConnection {0}

    add_connection cpu_A.data_master fifo_AB_2.in_csr avalon
    set_connection_parameter_value cpu_A.data_master/fifo_AB_2.in_csr arbitrationPriority {1}
    set_connection_parameter_value cpu_A.data_master/fifo_AB_2.in_csr baseAddress {0x08011060}
    set_connection_parameter_value cpu_A.data_master/fifo_AB_2.in_csr defaultConnection {0}

    add_connection cpu_B.data_master fifo_AB_2.in_csr avalon
    set_connection_parameter_value cpu_B.data_master/fifo_AB_2.in_csr arbitrationPriority {1}
    set_connection_parameter_value cpu_B.data_master/fifo_AB_2.in_csr baseAddress {0x08011060}
    set_connection_parameter_value cpu_B.data_master/fifo_AB_2.in_csr defaultConnection {0}

    add_connection cpu_A.d_irq fifo_AB_2.in_irq interrupt
    set_connection_parameter_value cpu_A.d_irq/fifo_AB_2.in_irq irqNumber {4}

    add_connection cpu_A.d_irq fifo_AB_1.in_irq interrupt
    set_connection_parameter_value cpu_A.d_irq/fifo_AB_1.in_irq irqNumber {5}

    add_connection cpu_A.data_master fifo_AB_0.out avalon
    set_connection_parameter_value cpu_A.data_master/fifo_AB_0.out arbitrationPriority {1}
    set_connection_parameter_value cpu_A.data_master/fifo_AB_0.out baseAddress {0x08011158}
    set_connection_parameter_value cpu_A.data_master/fifo_AB_0.out defaultConnection {0}

    add_connection cpu_B.data_master fifo_AB_0.in avalon
    set_connection_parameter_value cpu_B.data_master/fifo_AB_0.in arbitrationPriority {1}
    set_connection_parameter_value cpu_B.data_master/fifo_AB_0.in baseAddress {0x08011164}
    set_connection_parameter_value cpu_B.data_master/fifo_AB_0.in defaultConnection {0}

    add_connection cpu_B.data_master fifo_AB_1.in avalon
    set_connection_parameter_value cpu_B.data_master/fifo_AB_1.in arbitrationPriority {1}
    set_connection_parameter_value cpu_B.data_master/fifo_AB_1.in baseAddress {0x08011160}
    set_connection_parameter_value cpu_B.data_master/fifo_AB_1.in defaultConnection {0}

    add_connection cpu_A.data_master fifo_AB_1.out avalon
    set_connection_parameter_value cpu_A.data_master/fifo_AB_1.out arbitrationPriority {1}
    set_connection_parameter_value cpu_A.data_master/fifo_AB_1.out baseAddress {0x08011154}
    set_connection_parameter_value cpu_A.data_master/fifo_AB_1.out defaultConnection {0}

    add_connection cpu_B.data_master fifo_AB_2.in avalon
    set_connection_parameter_value cpu_B.data_master/fifo_AB_2.in arbitrationPriority {1}
    set_connection_parameter_value cpu_B.data_master/fifo_AB_2.in baseAddress {0x0801115c}
    set_connection_parameter_value cpu_B.data_master/fifo_AB_2.in defaultConnection {0}

    add_connection cpu_A.data_master fifo_AB_2.out avalon
    set_connection_parameter_value cpu_A.data_master/fifo_AB_2.out arbitrationPriority {1}
    set_connection_parameter_value cpu_A.data_master/fifo_AB_2.out baseAddress {0x08011150}
    set_connection_parameter_value cpu_A.data_master/fifo_AB_2.out defaultConnection {0}

    add_connection PLL.c0 fifo_AD.clk_in clock

    add_connection PLL.c0 fifo_AE.clk_in clock

    add_connection PLL.c0 fifo_AF.clk_in clock

    add_connection clock.clk_reset fifo_AD.reset_in reset

    add_connection cpu_A.jtag_debug_module_reset fifo_AD.reset_in reset

    add_connection cpu_D.jtag_debug_module_reset fifo_AD.reset_in reset

    add_connection cpu_A.data_master fifo_AD.in avalon
    set_connection_parameter_value cpu_A.data_master/fifo_AD.in arbitrationPriority {1}
    set_connection_parameter_value cpu_A.data_master/fifo_AD.in baseAddress {0x0801114c}
    set_connection_parameter_value cpu_A.data_master/fifo_AD.in defaultConnection {0}

    add_connection cpu_D.data_master fifo_AD.in avalon
    set_connection_parameter_value cpu_D.data_master/fifo_AD.in arbitrationPriority {1}
    set_connection_parameter_value cpu_D.data_master/fifo_AD.in baseAddress {0x0801114c}
    set_connection_parameter_value cpu_D.data_master/fifo_AD.in defaultConnection {0}

    add_connection cpu_A.data_master fifo_AD.out avalon
    set_connection_parameter_value cpu_A.data_master/fifo_AD.out arbitrationPriority {1}
    set_connection_parameter_value cpu_A.data_master/fifo_AD.out baseAddress {0x08011148}
    set_connection_parameter_value cpu_A.data_master/fifo_AD.out defaultConnection {0}

    add_connection cpu_D.data_master fifo_AD.out avalon
    set_connection_parameter_value cpu_D.data_master/fifo_AD.out arbitrationPriority {1}
    set_connection_parameter_value cpu_D.data_master/fifo_AD.out baseAddress {0x08011148}
    set_connection_parameter_value cpu_D.data_master/fifo_AD.out defaultConnection {0}

    add_connection cpu_A.data_master fifo_AD.in_csr avalon
    set_connection_parameter_value cpu_A.data_master/fifo_AD.in_csr arbitrationPriority {1}
    set_connection_parameter_value cpu_A.data_master/fifo_AD.in_csr baseAddress {0x08011040}
    set_connection_parameter_value cpu_A.data_master/fifo_AD.in_csr defaultConnection {0}

    add_connection cpu_D.data_master fifo_AD.in_csr avalon
    set_connection_parameter_value cpu_D.data_master/fifo_AD.in_csr arbitrationPriority {1}
    set_connection_parameter_value cpu_D.data_master/fifo_AD.in_csr baseAddress {0x08011040}
    set_connection_parameter_value cpu_D.data_master/fifo_AD.in_csr defaultConnection {0}

    add_connection cpu_A.d_irq fifo_AD.in_irq interrupt
    set_connection_parameter_value cpu_A.d_irq/fifo_AD.in_irq irqNumber {6}

    add_connection clock.clk_reset fifo_AE.reset_in reset

    add_connection cpu_A.jtag_debug_module_reset fifo_AE.reset_in reset

    add_connection cpu_E.jtag_debug_module_reset fifo_AE.reset_in reset

    add_connection cpu_A.data_master fifo_AE.in avalon
    set_connection_parameter_value cpu_A.data_master/fifo_AE.in arbitrationPriority {1}
    set_connection_parameter_value cpu_A.data_master/fifo_AE.in baseAddress {0x08011144}
    set_connection_parameter_value cpu_A.data_master/fifo_AE.in defaultConnection {0}

    add_connection cpu_E.data_master fifo_AE.in avalon
    set_connection_parameter_value cpu_E.data_master/fifo_AE.in arbitrationPriority {1}
    set_connection_parameter_value cpu_E.data_master/fifo_AE.in baseAddress {0x08011144}
    set_connection_parameter_value cpu_E.data_master/fifo_AE.in defaultConnection {0}

    add_connection cpu_A.data_master fifo_AE.out avalon
    set_connection_parameter_value cpu_A.data_master/fifo_AE.out arbitrationPriority {1}
    set_connection_parameter_value cpu_A.data_master/fifo_AE.out baseAddress {0x08011140}
    set_connection_parameter_value cpu_A.data_master/fifo_AE.out defaultConnection {0}

    add_connection cpu_E.data_master fifo_AE.out avalon
    set_connection_parameter_value cpu_E.data_master/fifo_AE.out arbitrationPriority {1}
    set_connection_parameter_value cpu_E.data_master/fifo_AE.out baseAddress {0x08011140}
    set_connection_parameter_value cpu_E.data_master/fifo_AE.out defaultConnection {0}

    add_connection cpu_A.data_master fifo_AE.in_csr avalon
    set_connection_parameter_value cpu_A.data_master/fifo_AE.in_csr arbitrationPriority {1}
    set_connection_parameter_value cpu_A.data_master/fifo_AE.in_csr baseAddress {0x08011020}
    set_connection_parameter_value cpu_A.data_master/fifo_AE.in_csr defaultConnection {0}

    add_connection cpu_E.data_master fifo_AE.in_csr avalon
    set_connection_parameter_value cpu_E.data_master/fifo_AE.in_csr arbitrationPriority {1}
    set_connection_parameter_value cpu_E.data_master/fifo_AE.in_csr baseAddress {0x08011020}
    set_connection_parameter_value cpu_E.data_master/fifo_AE.in_csr defaultConnection {0}

    add_connection clock.clk_reset fifo_AF.reset_in reset

    add_connection cpu_A.jtag_debug_module_reset fifo_AF.reset_in reset

    add_connection cpu_A.data_master fifo_AF.in avalon
    set_connection_parameter_value cpu_A.data_master/fifo_AF.in arbitrationPriority {1}
    set_connection_parameter_value cpu_A.data_master/fifo_AF.in baseAddress {0x0801113c}
    set_connection_parameter_value cpu_A.data_master/fifo_AF.in defaultConnection {0}

    add_connection cpu_A.data_master fifo_AF.out avalon
    set_connection_parameter_value cpu_A.data_master/fifo_AF.out arbitrationPriority {1}
    set_connection_parameter_value cpu_A.data_master/fifo_AF.out baseAddress {0x08011138}
    set_connection_parameter_value cpu_A.data_master/fifo_AF.out defaultConnection {0}

    add_connection cpu_A.data_master fifo_AF.in_csr avalon
    set_connection_parameter_value cpu_A.data_master/fifo_AF.in_csr arbitrationPriority {1}
    set_connection_parameter_value cpu_A.data_master/fifo_AF.in_csr baseAddress {0x08011000}
    set_connection_parameter_value cpu_A.data_master/fifo_AF.in_csr defaultConnection {0}

    add_connection cpu_A.d_irq fifo_AF.in_irq interrupt
    set_connection_parameter_value cpu_A.d_irq/fifo_AF.in_irq irqNumber {7}

    add_connection cpu_A.d_irq fifo_AE.in_irq interrupt
    set_connection_parameter_value cpu_A.d_irq/fifo_AE.in_irq irqNumber {8}

    add_connection PLL.c0 fifo_BC.clk_in clock

    add_connection PLL.c0 fifo_CD.clk_in clock

    add_connection PLL.c0 fifo_DE.clk_in clock

    add_connection PLL.c0 fifo_EF.clk_in clock

    add_connection clock.clk_reset fifo_BC.reset_in reset

    add_connection cpu_B.jtag_debug_module_reset fifo_BC.reset_in reset

    add_connection cpu_C.jtag_debug_module_reset fifo_BC.reset_in reset

    add_connection cpu_B.data_master fifo_BC.in avalon
    set_connection_parameter_value cpu_B.data_master/fifo_BC.in arbitrationPriority {1}
    set_connection_parameter_value cpu_B.data_master/fifo_BC.in baseAddress {0x080110dc}
    set_connection_parameter_value cpu_B.data_master/fifo_BC.in defaultConnection {0}

    add_connection cpu_C.data_master fifo_BC.in avalon
    set_connection_parameter_value cpu_C.data_master/fifo_BC.in arbitrationPriority {1}
    set_connection_parameter_value cpu_C.data_master/fifo_BC.in baseAddress {0x080110dc}
    set_connection_parameter_value cpu_C.data_master/fifo_BC.in defaultConnection {0}

    add_connection cpu_B.data_master fifo_BC.out avalon
    set_connection_parameter_value cpu_B.data_master/fifo_BC.out arbitrationPriority {1}
    set_connection_parameter_value cpu_B.data_master/fifo_BC.out baseAddress {0x080110d8}
    set_connection_parameter_value cpu_B.data_master/fifo_BC.out defaultConnection {0}

    add_connection cpu_C.data_master fifo_BC.out avalon
    set_connection_parameter_value cpu_C.data_master/fifo_BC.out arbitrationPriority {1}
    set_connection_parameter_value cpu_C.data_master/fifo_BC.out baseAddress {0x080110d8}
    set_connection_parameter_value cpu_C.data_master/fifo_BC.out defaultConnection {0}

    add_connection cpu_B.data_master fifo_BC.in_csr avalon
    set_connection_parameter_value cpu_B.data_master/fifo_BC.in_csr arbitrationPriority {1}
    set_connection_parameter_value cpu_B.data_master/fifo_BC.in_csr baseAddress {0x08011000}
    set_connection_parameter_value cpu_B.data_master/fifo_BC.in_csr defaultConnection {0}

    add_connection cpu_C.data_master fifo_BC.in_csr avalon
    set_connection_parameter_value cpu_C.data_master/fifo_BC.in_csr arbitrationPriority {1}
    set_connection_parameter_value cpu_C.data_master/fifo_BC.in_csr baseAddress {0x08011000}
    set_connection_parameter_value cpu_C.data_master/fifo_BC.in_csr defaultConnection {0}

    add_connection cpu_B.d_irq fifo_BC.in_irq interrupt
    set_connection_parameter_value cpu_B.d_irq/fifo_BC.in_irq irqNumber {3}

    add_connection clock.clk_reset fifo_CD.reset_in reset

    add_connection cpu_C.jtag_debug_module_reset fifo_CD.reset_in reset

    add_connection cpu_D.jtag_debug_module_reset fifo_CD.reset_in reset

    add_connection cpu_C.data_master fifo_CD.in avalon
    set_connection_parameter_value cpu_C.data_master/fifo_CD.in arbitrationPriority {1}
    set_connection_parameter_value cpu_C.data_master/fifo_CD.in baseAddress {0x0801109c}
    set_connection_parameter_value cpu_C.data_master/fifo_CD.in defaultConnection {0}

    add_connection cpu_D.data_master fifo_CD.in avalon
    set_connection_parameter_value cpu_D.data_master/fifo_CD.in arbitrationPriority {1}
    set_connection_parameter_value cpu_D.data_master/fifo_CD.in baseAddress {0x0801109c}
    set_connection_parameter_value cpu_D.data_master/fifo_CD.in defaultConnection {0}

    add_connection cpu_C.data_master fifo_CD.out avalon
    set_connection_parameter_value cpu_C.data_master/fifo_CD.out arbitrationPriority {1}
    set_connection_parameter_value cpu_C.data_master/fifo_CD.out baseAddress {0x08011098}
    set_connection_parameter_value cpu_C.data_master/fifo_CD.out defaultConnection {0}

    add_connection cpu_D.data_master fifo_CD.out avalon
    set_connection_parameter_value cpu_D.data_master/fifo_CD.out arbitrationPriority {1}
    set_connection_parameter_value cpu_D.data_master/fifo_CD.out baseAddress {0x08011098}
    set_connection_parameter_value cpu_D.data_master/fifo_CD.out defaultConnection {0}

    add_connection cpu_C.data_master fifo_CD.in_csr avalon
    set_connection_parameter_value cpu_C.data_master/fifo_CD.in_csr arbitrationPriority {1}
    set_connection_parameter_value cpu_C.data_master/fifo_CD.in_csr baseAddress {0x08011020}
    set_connection_parameter_value cpu_C.data_master/fifo_CD.in_csr defaultConnection {0}

    add_connection cpu_D.data_master fifo_CD.in_csr avalon
    set_connection_parameter_value cpu_D.data_master/fifo_CD.in_csr arbitrationPriority {1}
    set_connection_parameter_value cpu_D.data_master/fifo_CD.in_csr baseAddress {0x08011020}
    set_connection_parameter_value cpu_D.data_master/fifo_CD.in_csr defaultConnection {0}

    add_connection cpu_C.d_irq fifo_CD.in_irq interrupt
    set_connection_parameter_value cpu_C.d_irq/fifo_CD.in_irq irqNumber {3}

    add_connection clock.clk_reset fifo_DE.reset_in reset

    add_connection cpu_D.jtag_debug_module_reset fifo_DE.reset_in reset

    add_connection cpu_E.jtag_debug_module_reset fifo_DE.reset_in reset

    add_connection cpu_D.data_master fifo_DE.in avalon
    set_connection_parameter_value cpu_D.data_master/fifo_DE.in arbitrationPriority {1}
    set_connection_parameter_value cpu_D.data_master/fifo_DE.in baseAddress {0x080110c4}
    set_connection_parameter_value cpu_D.data_master/fifo_DE.in defaultConnection {0}

    add_connection cpu_E.data_master fifo_DE.in avalon
    set_connection_parameter_value cpu_E.data_master/fifo_DE.in arbitrationPriority {1}
    set_connection_parameter_value cpu_E.data_master/fifo_DE.in baseAddress {0x080110c4}
    set_connection_parameter_value cpu_E.data_master/fifo_DE.in defaultConnection {0}

    add_connection cpu_D.data_master fifo_DE.out avalon
    set_connection_parameter_value cpu_D.data_master/fifo_DE.out arbitrationPriority {1}
    set_connection_parameter_value cpu_D.data_master/fifo_DE.out baseAddress {0x080110c0}
    set_connection_parameter_value cpu_D.data_master/fifo_DE.out defaultConnection {0}

    add_connection cpu_E.data_master fifo_DE.out avalon
    set_connection_parameter_value cpu_E.data_master/fifo_DE.out arbitrationPriority {1}
    set_connection_parameter_value cpu_E.data_master/fifo_DE.out baseAddress {0x080110c0}
    set_connection_parameter_value cpu_E.data_master/fifo_DE.out defaultConnection {0}

    add_connection cpu_D.data_master fifo_DE.in_csr avalon
    set_connection_parameter_value cpu_D.data_master/fifo_DE.in_csr arbitrationPriority {1}
    set_connection_parameter_value cpu_D.data_master/fifo_DE.in_csr baseAddress {0x08011000}
    set_connection_parameter_value cpu_D.data_master/fifo_DE.in_csr defaultConnection {0}

    add_connection cpu_E.data_master fifo_DE.in_csr avalon
    set_connection_parameter_value cpu_E.data_master/fifo_DE.in_csr arbitrationPriority {1}
    set_connection_parameter_value cpu_E.data_master/fifo_DE.in_csr baseAddress {0x08011000}
    set_connection_parameter_value cpu_E.data_master/fifo_DE.in_csr defaultConnection {0}

    add_connection cpu_D.d_irq fifo_DE.in_irq interrupt
    set_connection_parameter_value cpu_D.d_irq/fifo_DE.in_irq irqNumber {3}

    add_connection cpu_E.jtag_debug_module_reset fifo_EF.reset_in reset

    add_connection clock.clk_reset fifo_EF.reset_in reset

    add_connection cpu_F.jtag_debug_module_reset fifo_EF.reset_in reset

    add_connection cpu_E.data_master fifo_EF.in avalon
    set_connection_parameter_value cpu_E.data_master/fifo_EF.in arbitrationPriority {1}
    set_connection_parameter_value cpu_E.data_master/fifo_EF.in baseAddress {0x080110bc}
    set_connection_parameter_value cpu_E.data_master/fifo_EF.in defaultConnection {0}

    add_connection cpu_F.data_master fifo_EF.in avalon
    set_connection_parameter_value cpu_F.data_master/fifo_EF.in arbitrationPriority {1}
    set_connection_parameter_value cpu_F.data_master/fifo_EF.in baseAddress {0x080110bc}
    set_connection_parameter_value cpu_F.data_master/fifo_EF.in defaultConnection {0}

    add_connection cpu_E.data_master fifo_EF.out avalon
    set_connection_parameter_value cpu_E.data_master/fifo_EF.out arbitrationPriority {1}
    set_connection_parameter_value cpu_E.data_master/fifo_EF.out baseAddress {0x080110b8}
    set_connection_parameter_value cpu_E.data_master/fifo_EF.out defaultConnection {0}

    add_connection cpu_F.data_master fifo_EF.out avalon
    set_connection_parameter_value cpu_F.data_master/fifo_EF.out arbitrationPriority {1}
    set_connection_parameter_value cpu_F.data_master/fifo_EF.out baseAddress {0x080110b8}
    set_connection_parameter_value cpu_F.data_master/fifo_EF.out defaultConnection {0}

    add_connection cpu_E.data_master fifo_EF.in_csr avalon
    set_connection_parameter_value cpu_E.data_master/fifo_EF.in_csr arbitrationPriority {1}
    set_connection_parameter_value cpu_E.data_master/fifo_EF.in_csr baseAddress {0x08011040}
    set_connection_parameter_value cpu_E.data_master/fifo_EF.in_csr defaultConnection {0}

    add_connection cpu_F.data_master fifo_EF.in_csr avalon
    set_connection_parameter_value cpu_F.data_master/fifo_EF.in_csr arbitrationPriority {1}
    set_connection_parameter_value cpu_F.data_master/fifo_EF.in_csr baseAddress {0x08011040}
    set_connection_parameter_value cpu_F.data_master/fifo_EF.in_csr defaultConnection {0}

    add_connection cpu_E.d_irq fifo_EF.in_irq interrupt
    set_connection_parameter_value cpu_E.d_irq/fifo_EF.in_irq irqNumber {3}

    add_connection cpu_F.data_master fifo_AF.out avalon
    set_connection_parameter_value cpu_F.data_master/fifo_AF.out arbitrationPriority {1}
    set_connection_parameter_value cpu_F.data_master/fifo_AF.out baseAddress {0x08011138}
    set_connection_parameter_value cpu_F.data_master/fifo_AF.out defaultConnection {0}

    add_connection cpu_F.data_master fifo_AF.in avalon
    set_connection_parameter_value cpu_F.data_master/fifo_AF.in arbitrationPriority {1}
    set_connection_parameter_value cpu_F.data_master/fifo_AF.in baseAddress {0x0801113c}
    set_connection_parameter_value cpu_F.data_master/fifo_AF.in defaultConnection {0}

    add_connection cpu_F.jtag_debug_module_reset fifo_AF.reset_in reset

    add_connection cpu_F.data_master fifo_AF.in_csr avalon
    set_connection_parameter_value cpu_F.data_master/fifo_AF.in_csr arbitrationPriority {1}
    set_connection_parameter_value cpu_F.data_master/fifo_AF.in_csr baseAddress {0x08011000}
    set_connection_parameter_value cpu_F.data_master/fifo_AF.in_csr defaultConnection {0}

    # exported interfaces
    add_interface clk clock sink
    set_interface_property clk EXPORT_OF clock.clk_in
    add_interface reset reset sink
    set_interface_property reset EXPORT_OF clock.clk_in_reset
    add_interface pll_c2 clock source
    set_interface_property pll_c2 EXPORT_OF PLL.c2
    add_interface led_out conduit end
    set_interface_property led_out EXPORT_OF led_out.external_connection
    add_interface sdram_bus conduit end
    set_interface_property sdram_bus EXPORT_OF SDRAM_controller.wire
    add_interface pll_c1_conduit conduit end
    set_interface_property pll_c1_conduit EXPORT_OF PLL.c1_conduit
    add_interface pll_locked_conduit conduit end
    set_interface_property pll_locked_conduit EXPORT_OF PLL.locked_conduit
    add_interface pll_phasedone_conduit conduit end
    set_interface_property pll_phasedone_conduit EXPORT_OF PLL.phasedone_conduit
    add_interface pll_areset_conduit conduit end
    set_interface_property pll_areset_conduit EXPORT_OF PLL.areset_conduit
}
