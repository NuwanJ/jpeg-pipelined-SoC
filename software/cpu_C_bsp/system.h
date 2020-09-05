/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'cpu_C' in SOPC Builder design 'HwJSoC'
 * SOPC Builder design path: C:/altera/projects/CO503/lab4/HwJSoC.sopcinfo
 *
 * Generated: Fri Jun 26 19:59:50 IST 2020
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_qsys"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x08010820
#define ALT_CPU_CPU_FREQ 100000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "small"
#define ALT_CPU_DATA_ADDR_WIDTH 0x1c
#define ALT_CPU_DCACHE_LINE_SIZE 0
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_DCACHE_SIZE 0
#define ALT_CPU_EXCEPTION_ADDR 0x00040020
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 100000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 0
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 32
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_ICACHE_SIZE 4096
#define ALT_CPU_INST_ADDR_WIDTH 0x1c
#define ALT_CPU_NAME "cpu_C"
#define ALT_CPU_RESET_ADDR 0x00040000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x08010820
#define NIOS2_CPU_FREQ 100000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "small"
#define NIOS2_DATA_ADDR_WIDTH 0x1c
#define NIOS2_DCACHE_LINE_SIZE 0
#define NIOS2_DCACHE_LINE_SIZE_LOG2 0
#define NIOS2_DCACHE_SIZE 0
#define NIOS2_EXCEPTION_ADDR 0x00040020
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 0
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 32
#define NIOS2_ICACHE_LINE_SIZE_LOG2 5
#define NIOS2_ICACHE_SIZE 4096
#define NIOS2_INST_ADDR_WIDTH 0x1c
#define NIOS2_RESET_ADDR 0x00040000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_FIFO
#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_NEW_SDRAM_CONTROLLER
#define __ALTERA_AVALON_PIO
#define __ALTERA_AVALON_SYSID_QSYS
#define __ALTERA_AVALON_TIMER
#define __ALTERA_NIOS2_QSYS
#define __ALTPLL


/*
 * PLL configuration
 *
 */

#define ALT_MODULE_CLASS_PLL altpll
#define PLL_BASE 0x8011110
#define PLL_IRQ -1
#define PLL_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PLL_NAME "/dev/PLL"
#define PLL_SPAN 16
#define PLL_TYPE "altpll"


/*
 * SDRAM_controller configuration
 *
 */

#define ALT_MODULE_CLASS_SDRAM_controller altera_avalon_new_sdram_controller
#define SDRAM_CONTROLLER_BASE 0x0
#define SDRAM_CONTROLLER_CAS_LATENCY 3
#define SDRAM_CONTROLLER_CONTENTS_INFO
#define SDRAM_CONTROLLER_INIT_NOP_DELAY 0.0
#define SDRAM_CONTROLLER_INIT_REFRESH_COMMANDS 2
#define SDRAM_CONTROLLER_IRQ -1
#define SDRAM_CONTROLLER_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SDRAM_CONTROLLER_IS_INITIALIZED 1
#define SDRAM_CONTROLLER_NAME "/dev/SDRAM_controller"
#define SDRAM_CONTROLLER_POWERUP_DELAY 100.0
#define SDRAM_CONTROLLER_REFRESH_PERIOD 15.625
#define SDRAM_CONTROLLER_REGISTER_DATA_IN 1
#define SDRAM_CONTROLLER_SDRAM_ADDR_WIDTH 0x19
#define SDRAM_CONTROLLER_SDRAM_BANK_WIDTH 2
#define SDRAM_CONTROLLER_SDRAM_COL_WIDTH 10
#define SDRAM_CONTROLLER_SDRAM_DATA_WIDTH 32
#define SDRAM_CONTROLLER_SDRAM_NUM_BANKS 4
#define SDRAM_CONTROLLER_SDRAM_NUM_CHIPSELECTS 1
#define SDRAM_CONTROLLER_SDRAM_ROW_WIDTH 13
#define SDRAM_CONTROLLER_SHARED_DATA 0
#define SDRAM_CONTROLLER_SIM_MODEL_BASE 0
#define SDRAM_CONTROLLER_SPAN 134217728
#define SDRAM_CONTROLLER_STARVATION_INDICATOR 0
#define SDRAM_CONTROLLER_TRISTATE_BRIDGE_SLAVE ""
#define SDRAM_CONTROLLER_TYPE "altera_avalon_new_sdram_controller"
#define SDRAM_CONTROLLER_T_AC 6.0
#define SDRAM_CONTROLLER_T_MRD 3
#define SDRAM_CONTROLLER_T_RCD 20.0
#define SDRAM_CONTROLLER_T_RFC 70.0
#define SDRAM_CONTROLLER_T_RP 20.0
#define SDRAM_CONTROLLER_T_WR 14.0


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone IV E"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag_C"
#define ALT_STDERR_BASE 0x8011090
#define ALT_STDERR_DEV jtag_C
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag_C"
#define ALT_STDIN_BASE 0x8011090
#define ALT_STDIN_DEV jtag_C
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag_C"
#define ALT_STDOUT_BASE 0x8011090
#define ALT_STDOUT_DEV jtag_C
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "HwJSoC"


/*
 * fifo_BC_in configuration
 *
 */

#define ALT_MODULE_CLASS_fifo_BC_in altera_avalon_fifo
#define FIFO_BC_IN_AVALONMM_AVALONMM_DATA_WIDTH 32
#define FIFO_BC_IN_AVALONMM_AVALONST_DATA_WIDTH 32
#define FIFO_BC_IN_BASE 0x80110dc
#define FIFO_BC_IN_BITS_PER_SYMBOL 16
#define FIFO_BC_IN_CHANNEL_WIDTH 8
#define FIFO_BC_IN_ERROR_WIDTH 8
#define FIFO_BC_IN_FIFO_DEPTH 256
#define FIFO_BC_IN_IRQ -1
#define FIFO_BC_IN_IRQ_INTERRUPT_CONTROLLER_ID -1
#define FIFO_BC_IN_NAME "/dev/fifo_BC_in"
#define FIFO_BC_IN_SINGLE_CLOCK_MODE 1
#define FIFO_BC_IN_SPAN 4
#define FIFO_BC_IN_SYMBOLS_PER_BEAT 2
#define FIFO_BC_IN_TYPE "altera_avalon_fifo"
#define FIFO_BC_IN_USE_AVALONMM_READ_SLAVE 1
#define FIFO_BC_IN_USE_AVALONMM_WRITE_SLAVE 1
#define FIFO_BC_IN_USE_AVALONST_SINK 0
#define FIFO_BC_IN_USE_AVALONST_SOURCE 0
#define FIFO_BC_IN_USE_BACKPRESSURE 1
#define FIFO_BC_IN_USE_IRQ 1
#define FIFO_BC_IN_USE_PACKET 1
#define FIFO_BC_IN_USE_READ_CONTROL 0
#define FIFO_BC_IN_USE_REGISTER 0
#define FIFO_BC_IN_USE_WRITE_CONTROL 1


/*
 * fifo_BC_in_csr configuration
 *
 */

#define ALT_MODULE_CLASS_fifo_BC_in_csr altera_avalon_fifo
#define FIFO_BC_IN_CSR_AVALONMM_AVALONMM_DATA_WIDTH 32
#define FIFO_BC_IN_CSR_AVALONMM_AVALONST_DATA_WIDTH 32
#define FIFO_BC_IN_CSR_BASE 0x8011000
#define FIFO_BC_IN_CSR_BITS_PER_SYMBOL 16
#define FIFO_BC_IN_CSR_CHANNEL_WIDTH 8
#define FIFO_BC_IN_CSR_ERROR_WIDTH 8
#define FIFO_BC_IN_CSR_FIFO_DEPTH 256
#define FIFO_BC_IN_CSR_IRQ -1
#define FIFO_BC_IN_CSR_IRQ_INTERRUPT_CONTROLLER_ID -1
#define FIFO_BC_IN_CSR_NAME "/dev/fifo_BC_in_csr"
#define FIFO_BC_IN_CSR_SINGLE_CLOCK_MODE 1
#define FIFO_BC_IN_CSR_SPAN 32
#define FIFO_BC_IN_CSR_SYMBOLS_PER_BEAT 2
#define FIFO_BC_IN_CSR_TYPE "altera_avalon_fifo"
#define FIFO_BC_IN_CSR_USE_AVALONMM_READ_SLAVE 1
#define FIFO_BC_IN_CSR_USE_AVALONMM_WRITE_SLAVE 1
#define FIFO_BC_IN_CSR_USE_AVALONST_SINK 0
#define FIFO_BC_IN_CSR_USE_AVALONST_SOURCE 0
#define FIFO_BC_IN_CSR_USE_BACKPRESSURE 1
#define FIFO_BC_IN_CSR_USE_IRQ 1
#define FIFO_BC_IN_CSR_USE_PACKET 1
#define FIFO_BC_IN_CSR_USE_READ_CONTROL 0
#define FIFO_BC_IN_CSR_USE_REGISTER 0
#define FIFO_BC_IN_CSR_USE_WRITE_CONTROL 1


/*
 * fifo_BC_out configuration
 *
 */

#define ALT_MODULE_CLASS_fifo_BC_out altera_avalon_fifo
#define FIFO_BC_OUT_AVALONMM_AVALONMM_DATA_WIDTH 32
#define FIFO_BC_OUT_AVALONMM_AVALONST_DATA_WIDTH 32
#define FIFO_BC_OUT_BASE 0x80110d8
#define FIFO_BC_OUT_BITS_PER_SYMBOL 16
#define FIFO_BC_OUT_CHANNEL_WIDTH 8
#define FIFO_BC_OUT_ERROR_WIDTH 8
#define FIFO_BC_OUT_FIFO_DEPTH 256
#define FIFO_BC_OUT_IRQ -1
#define FIFO_BC_OUT_IRQ_INTERRUPT_CONTROLLER_ID -1
#define FIFO_BC_OUT_NAME "/dev/fifo_BC_out"
#define FIFO_BC_OUT_SINGLE_CLOCK_MODE 1
#define FIFO_BC_OUT_SPAN 4
#define FIFO_BC_OUT_SYMBOLS_PER_BEAT 2
#define FIFO_BC_OUT_TYPE "altera_avalon_fifo"
#define FIFO_BC_OUT_USE_AVALONMM_READ_SLAVE 1
#define FIFO_BC_OUT_USE_AVALONMM_WRITE_SLAVE 1
#define FIFO_BC_OUT_USE_AVALONST_SINK 0
#define FIFO_BC_OUT_USE_AVALONST_SOURCE 0
#define FIFO_BC_OUT_USE_BACKPRESSURE 1
#define FIFO_BC_OUT_USE_IRQ 1
#define FIFO_BC_OUT_USE_PACKET 1
#define FIFO_BC_OUT_USE_READ_CONTROL 0
#define FIFO_BC_OUT_USE_REGISTER 0
#define FIFO_BC_OUT_USE_WRITE_CONTROL 1


/*
 * fifo_CD_in configuration
 *
 */

#define ALT_MODULE_CLASS_fifo_CD_in altera_avalon_fifo
#define FIFO_CD_IN_AVALONMM_AVALONMM_DATA_WIDTH 32
#define FIFO_CD_IN_AVALONMM_AVALONST_DATA_WIDTH 32
#define FIFO_CD_IN_BASE 0x801109c
#define FIFO_CD_IN_BITS_PER_SYMBOL 16
#define FIFO_CD_IN_CHANNEL_WIDTH 8
#define FIFO_CD_IN_ERROR_WIDTH 8
#define FIFO_CD_IN_FIFO_DEPTH 256
#define FIFO_CD_IN_IRQ -1
#define FIFO_CD_IN_IRQ_INTERRUPT_CONTROLLER_ID -1
#define FIFO_CD_IN_NAME "/dev/fifo_CD_in"
#define FIFO_CD_IN_SINGLE_CLOCK_MODE 1
#define FIFO_CD_IN_SPAN 4
#define FIFO_CD_IN_SYMBOLS_PER_BEAT 2
#define FIFO_CD_IN_TYPE "altera_avalon_fifo"
#define FIFO_CD_IN_USE_AVALONMM_READ_SLAVE 1
#define FIFO_CD_IN_USE_AVALONMM_WRITE_SLAVE 1
#define FIFO_CD_IN_USE_AVALONST_SINK 0
#define FIFO_CD_IN_USE_AVALONST_SOURCE 0
#define FIFO_CD_IN_USE_BACKPRESSURE 1
#define FIFO_CD_IN_USE_IRQ 1
#define FIFO_CD_IN_USE_PACKET 1
#define FIFO_CD_IN_USE_READ_CONTROL 0
#define FIFO_CD_IN_USE_REGISTER 0
#define FIFO_CD_IN_USE_WRITE_CONTROL 1


/*
 * fifo_CD_in_csr configuration
 *
 */

#define ALT_MODULE_CLASS_fifo_CD_in_csr altera_avalon_fifo
#define FIFO_CD_IN_CSR_AVALONMM_AVALONMM_DATA_WIDTH 32
#define FIFO_CD_IN_CSR_AVALONMM_AVALONST_DATA_WIDTH 32
#define FIFO_CD_IN_CSR_BASE 0x8011020
#define FIFO_CD_IN_CSR_BITS_PER_SYMBOL 16
#define FIFO_CD_IN_CSR_CHANNEL_WIDTH 8
#define FIFO_CD_IN_CSR_ERROR_WIDTH 8
#define FIFO_CD_IN_CSR_FIFO_DEPTH 256
#define FIFO_CD_IN_CSR_IRQ 3
#define FIFO_CD_IN_CSR_IRQ_INTERRUPT_CONTROLLER_ID 0
#define FIFO_CD_IN_CSR_NAME "/dev/fifo_CD_in_csr"
#define FIFO_CD_IN_CSR_SINGLE_CLOCK_MODE 1
#define FIFO_CD_IN_CSR_SPAN 32
#define FIFO_CD_IN_CSR_SYMBOLS_PER_BEAT 2
#define FIFO_CD_IN_CSR_TYPE "altera_avalon_fifo"
#define FIFO_CD_IN_CSR_USE_AVALONMM_READ_SLAVE 1
#define FIFO_CD_IN_CSR_USE_AVALONMM_WRITE_SLAVE 1
#define FIFO_CD_IN_CSR_USE_AVALONST_SINK 0
#define FIFO_CD_IN_CSR_USE_AVALONST_SOURCE 0
#define FIFO_CD_IN_CSR_USE_BACKPRESSURE 1
#define FIFO_CD_IN_CSR_USE_IRQ 1
#define FIFO_CD_IN_CSR_USE_PACKET 1
#define FIFO_CD_IN_CSR_USE_READ_CONTROL 0
#define FIFO_CD_IN_CSR_USE_REGISTER 0
#define FIFO_CD_IN_CSR_USE_WRITE_CONTROL 1


/*
 * fifo_CD_out configuration
 *
 */

#define ALT_MODULE_CLASS_fifo_CD_out altera_avalon_fifo
#define FIFO_CD_OUT_AVALONMM_AVALONMM_DATA_WIDTH 32
#define FIFO_CD_OUT_AVALONMM_AVALONST_DATA_WIDTH 32
#define FIFO_CD_OUT_BASE 0x8011098
#define FIFO_CD_OUT_BITS_PER_SYMBOL 16
#define FIFO_CD_OUT_CHANNEL_WIDTH 8
#define FIFO_CD_OUT_ERROR_WIDTH 8
#define FIFO_CD_OUT_FIFO_DEPTH 256
#define FIFO_CD_OUT_IRQ -1
#define FIFO_CD_OUT_IRQ_INTERRUPT_CONTROLLER_ID -1
#define FIFO_CD_OUT_NAME "/dev/fifo_CD_out"
#define FIFO_CD_OUT_SINGLE_CLOCK_MODE 1
#define FIFO_CD_OUT_SPAN 4
#define FIFO_CD_OUT_SYMBOLS_PER_BEAT 2
#define FIFO_CD_OUT_TYPE "altera_avalon_fifo"
#define FIFO_CD_OUT_USE_AVALONMM_READ_SLAVE 1
#define FIFO_CD_OUT_USE_AVALONMM_WRITE_SLAVE 1
#define FIFO_CD_OUT_USE_AVALONST_SINK 0
#define FIFO_CD_OUT_USE_AVALONST_SOURCE 0
#define FIFO_CD_OUT_USE_BACKPRESSURE 1
#define FIFO_CD_OUT_USE_IRQ 1
#define FIFO_CD_OUT_USE_PACKET 1
#define FIFO_CD_OUT_USE_READ_CONTROL 0
#define FIFO_CD_OUT_USE_REGISTER 0
#define FIFO_CD_OUT_USE_WRITE_CONTROL 1


/*
 * hal configuration
 *
 */

#define ALT_MAX_FD 32
#define ALT_SYS_CLK TIMER_C
#define ALT_TIMESTAMP_CLK HIGHTIMER_C


/*
 * highTimer_C configuration
 *
 */

#define ALT_MODULE_CLASS_highTimer_C altera_avalon_timer
#define HIGHTIMER_C_ALWAYS_RUN 0
#define HIGHTIMER_C_BASE 0x8011060
#define HIGHTIMER_C_COUNTER_SIZE 32
#define HIGHTIMER_C_FIXED_PERIOD 0
#define HIGHTIMER_C_FREQ 100000000
#define HIGHTIMER_C_IRQ 1
#define HIGHTIMER_C_IRQ_INTERRUPT_CONTROLLER_ID 0
#define HIGHTIMER_C_LOAD_VALUE 99
#define HIGHTIMER_C_MULT 1.0E-6
#define HIGHTIMER_C_NAME "/dev/highTimer_C"
#define HIGHTIMER_C_PERIOD 1
#define HIGHTIMER_C_PERIOD_UNITS "us"
#define HIGHTIMER_C_RESET_OUTPUT 0
#define HIGHTIMER_C_SNAPSHOT 1
#define HIGHTIMER_C_SPAN 32
#define HIGHTIMER_C_TICKS_PER_SEC 1000000.0
#define HIGHTIMER_C_TIMEOUT_PULSE_OUTPUT 0
#define HIGHTIMER_C_TYPE "altera_avalon_timer"


/*
 * jtag_C configuration
 *
 */

#define ALT_MODULE_CLASS_jtag_C altera_avalon_jtag_uart
#define JTAG_C_BASE 0x8011090
#define JTAG_C_IRQ 2
#define JTAG_C_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_C_NAME "/dev/jtag_C"
#define JTAG_C_READ_DEPTH 64
#define JTAG_C_READ_THRESHOLD 8
#define JTAG_C_SPAN 8
#define JTAG_C_TYPE "altera_avalon_jtag_uart"
#define JTAG_C_WRITE_DEPTH 64
#define JTAG_C_WRITE_THRESHOLD 8


/*
 * led_out configuration
 *
 */

#define ALT_MODULE_CLASS_led_out altera_avalon_pio
#define LED_OUT_BASE 0x8011100
#define LED_OUT_BIT_CLEARING_EDGE_REGISTER 0
#define LED_OUT_BIT_MODIFYING_OUTPUT_REGISTER 0
#define LED_OUT_CAPTURE 0
#define LED_OUT_DATA_WIDTH 8
#define LED_OUT_DO_TEST_BENCH_WIRING 0
#define LED_OUT_DRIVEN_SIM_VALUE 0
#define LED_OUT_EDGE_TYPE "NONE"
#define LED_OUT_FREQ 100000000
#define LED_OUT_HAS_IN 0
#define LED_OUT_HAS_OUT 1
#define LED_OUT_HAS_TRI 0
#define LED_OUT_IRQ -1
#define LED_OUT_IRQ_INTERRUPT_CONTROLLER_ID -1
#define LED_OUT_IRQ_TYPE "NONE"
#define LED_OUT_NAME "/dev/led_out"
#define LED_OUT_RESET_VALUE 0
#define LED_OUT_SPAN 16
#define LED_OUT_TYPE "altera_avalon_pio"


/*
 * sysid_C configuration
 *
 */

#define ALT_MODULE_CLASS_sysid_C altera_avalon_sysid_qsys
#define SYSID_C_BASE 0x8011088
#define SYSID_C_ID 16
#define SYSID_C_IRQ -1
#define SYSID_C_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SYSID_C_NAME "/dev/sysid_C"
#define SYSID_C_SPAN 8
#define SYSID_C_TIMESTAMP 1593179949
#define SYSID_C_TYPE "altera_avalon_sysid_qsys"


/*
 * timer_C configuration
 *
 */

#define ALT_MODULE_CLASS_timer_C altera_avalon_timer
#define TIMER_C_ALWAYS_RUN 0
#define TIMER_C_BASE 0x8011040
#define TIMER_C_COUNTER_SIZE 32
#define TIMER_C_FIXED_PERIOD 0
#define TIMER_C_FREQ 100000000
#define TIMER_C_IRQ 0
#define TIMER_C_IRQ_INTERRUPT_CONTROLLER_ID 0
#define TIMER_C_LOAD_VALUE 99999
#define TIMER_C_MULT 0.0010
#define TIMER_C_NAME "/dev/timer_C"
#define TIMER_C_PERIOD 1
#define TIMER_C_PERIOD_UNITS "ms"
#define TIMER_C_RESET_OUTPUT 0
#define TIMER_C_SNAPSHOT 1
#define TIMER_C_SPAN 32
#define TIMER_C_TICKS_PER_SEC 1000.0
#define TIMER_C_TIMEOUT_PULSE_OUTPUT 0
#define TIMER_C_TYPE "altera_avalon_timer"

#endif /* __SYSTEM_H_ */