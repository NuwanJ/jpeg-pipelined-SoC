/*
 * 	FIFO header for shared memory communication between Nios II processors
 *
 *  DATE	: 11-04-2020
 *  AUTHOR	: Nuwan Jaliyagoda
 *
 */


#ifndef FIFO_H_
#define FIFO_H_

#include <io.h>
#include "system.h"
#include <stdio.h>
#include <stdint.h>

// Uncomment this to see debug messages
//#define DEBUG

//#define WRITE_ADDRESS 0x0801109c
//#define READ_ADDRESS 0x08011098

//#define INPUT_FIFO_IN_CSR_BASE 0x08011000
//#define INPUT_FIFO_IN_CSR_IRQ 3

#define OUTPUT_FIFO_OUT_FIFO_DEPTH 16
#define ALMOST_EMPTY 2
#define ALMOST_FULL OUTPUT_FIFO_OUT_FIFO_DEPTH-5

volatile int input_fifo_wrclk_irq_event;

// CALL THIS FUNCTION AT THE BEGINING OF BOTH PROGRAMS USING THIS FIFO. CHANGE THE NAME FOR DIFFERENT FIFOS
void FIFO_INIT();

void WRITE_FIFO(int *buffer);
void READ_FIFO(int *buffer);

void print_status(alt_u32 control_base_address);

//static void handle_input_fifo_wrclk_interrupts(void* context, alt_u32 id);
//static int init_input_fifo_wrclk_control();
long unsigned int t;

// -----------------------------------------------------------------------------

void INIT_B(uint32_t csrAddr, uint8_t id, uint8_t size);
void WRITE_B(int *buffer, uint32_t writeAddr, uint32_t csrAddr, uint8_t size, uint8_t id);
void READ_B(int *buffer, uint32_t readAddr, uint32_t csrAddr, uint8_t id);


#endif
