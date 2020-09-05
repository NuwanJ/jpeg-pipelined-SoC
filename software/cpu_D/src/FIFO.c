/*
* 	FIFO queue for shared memory communication between Nios II processors
*
*  DATE	: 11-04-2020
*  AUTHOR	: Nuwan Jaliyagoda
*
*/

#include "altera_avalon_fifo_regs.h"
#include "altera_avalon_fifo_util.h"
#include "system.h"
#include "sys/alt_irq.h"

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

//#include "sys/alt_timestamp.h"
#include "FIFO.h"

void INIT_B(uint32_t csrAddr, uint8_t id, uint8_t size){

	//int resp = altera_avalon_fifo_init(csrAddr, 0, ALMOST_EMPTY, ALMOST_FULL);
	int resp = altera_avalon_fifo_init(csrAddr, 0, 2, size-5);

	printf("FIFO %d Init\n", id);
/*
	if(resp == ALTERA_AVALON_FIFO_OK)  printf("ALTERA_AVALON_FIFO_OK\n\n");
	else if(resp == ALTERA_AVALON_FIFO_EVENT_CLEAR_ERROR)  printf("ALTERA_AVALON_FIFO_EVENT_CLEAR_ERROR\n\n");
	else if(resp == ALTERA_AVALON_FIFO_IENABLE_WRITE_ERROR)  printf("ALTERA_AVALON_FIFO_IENABLE_WRITE_ERROR\n\n");
	else if(resp == ALTERA_AVALON_FIFO_THRESHOLD_WRITE_ERROR)  printf("ALTERA_AVALON_FIFO_THRESHOLD_WRITE_ERROR\n\n");
	else printf("Unknown\n\n");
*/
	//print_status(csrAddr);
}

void WRITE_B(int *buffer, uint32_t writeAddr, uint32_t csrAddr, uint8_t size, uint8_t id){

	while(altera_avalon_fifo_read_level(csrAddr)>=size){
		continue;
	}
	int resp = altera_avalon_fifo_write_fifo(writeAddr, csrAddr , *buffer);

	#ifdef DEBUG
	if (resp == ALTERA_AVALON_FIFO_OK) printf("resp: ALTERA_AVALON_FIFO_OK\n");
	else if(resp== ALTERA_AVALON_FIFO_FULL) printf("resp: ALTERA_AVALON_FIFO_FULL\n");
	int level = altera_avalon_fifo_read_level(csrAddr);
	printf("%d > write %d to FIFO, resp=%d level=%d\n\n", id, (int)*buffer, resp, level);
	#endif

}

void READ_B(int *buffer, uint32_t readAddr, uint32_t csrAddr, uint8_t id){

	while(altera_avalon_fifo_read_level(csrAddr)==0){
		continue;
	}

	int resp = altera_avalon_fifo_read_fifo(readAddr, csrAddr);
	*buffer = resp;

	#ifdef DEBUG
	if (resp == ALTERA_AVALON_FIFO_OK) printf("ALTERA_AVALON_FIFO_OK\n\n");
	else if(resp== ALTERA_AVALON_FIFO_FULL) printf("ALTERA_AVALON_FIFO_FULL\n\n");
	int level = altera_avalon_fifo_read_level(csrAddr);
	printf("reading from FIFO, resp=%d level=%d\n", resp, level);
	#endif

}






//------------------------------------------------------------------------------

void WRITE_FIFO(int *buffer){
	/*
	//alt_u32 sw_timeA, sw_timeB;

	while(altera_avalon_fifo_read_level(INPUT_FIFO_IN_CSR_BASE)>=ALMOST_FULL){
	continue;
}
//sw_timeA = alt_timestamp();

int resp = altera_avalon_fifo_write_fifo(WRITE_ADDRESS, INPUT_FIFO_IN_CSR_BASE , *buffer);

//sw_timeB = alt_timestamp();

#ifdef DEBUG
// Print the response message
if (resp == ALTERA_AVALON_FIFO_OK) printf("resp: ALTERA_AVALON_FIFO_OK\n");
else if(resp== ALTERA_AVALON_FIFO_FULL) printf("resp: ALTERA_AVALON_FIFO_FULL\n");

// Print the summary
int level = altera_avalon_fifo_read_level(INPUT_FIFO_IN_CSR_BASE);
printf("write %d to FIFO, resp=%d level=%d\n\n", (int)*buffer, resp, level);
#endif

//printf("%lu \n",(unsigned long)((sw_timeB - sw_timeA)));
//t= t+(sw_timeB - sw_timeA);
*/
}

void READ_FIFO(int *buffer){
	/*
	//alt_u32 sw_timeA, sw_timeB;

	while(altera_avalon_fifo_read_level(INPUT_FIFO_IN_CSR_BASE)==0){
	continue;
}

//sw_timeA = alt_timestamp();

// Read the value from FIFO out register
int resp = altera_avalon_fifo_read_fifo(READ_ADDRESS, INPUT_FIFO_IN_CSR_BASE);
*buffer = resp;

//sw_timeB = alt_timestamp();

#ifdef DEBUG
// Print the response message
if (resp == ALTERA_AVALON_FIFO_OK) printf("ALTERA_AVALON_FIFO_OK\n\n");
else if(resp== ALTERA_AVALON_FIFO_FULL) printf("ALTERA_AVALON_FIFO_FULL\n\n");

// Print the  summary
int level = altera_avalon_fifo_read_level(INPUT_FIFO_IN_CSR_BASE);
printf("reading from FIFO, resp=%d level=%d\n", resp, level);
#endif

//printf("%lu \n",(unsigned long)((sw_timeB - sw_timeA)));
//t= t+(sw_timeB - sw_timeA);
*/
}

//Initialization
void FIFO_INIT(){

	/*int resp = altera_avalon_fifo_init(INPUT_FIFO_IN_CSR_BASE, 0, ALMOST_EMPTY, ALMOST_FULL);

	printf("FIFO Init\n");

	if(resp == ALTERA_AVALON_FIFO_OK)  printf("ALTERA_AVALON_FIFO_OK\n\n");
	else if(resp == ALTERA_AVALON_FIFO_EVENT_CLEAR_ERROR)  printf("ALTERA_AVALON_FIFO_EVENT_CLEAR_ERROR\n\n");
	else if(resp == ALTERA_AVALON_FIFO_IENABLE_WRITE_ERROR)  printf("ALTERA_AVALON_FIFO_IENABLE_WRITE_ERROR\n\n");
	else if(resp == ALTERA_AVALON_FIFO_THRESHOLD_WRITE_ERROR)  printf("ALTERA_AVALON_FIFO_THRESHOLD_WRITE_ERROR\n\n");
	else printf("Unknown\n\n");

	print_status(INPUT_FIFO_IN_CSR_BASE);
	*/
}


volatile int input_fifo_wrclk_irq_event;

void print_status(alt_u32 control_base_address){
	printf("--------------------------------------\n");
	printf("LEVEL = %u\n", altera_avalon_fifo_read_level(control_base_address) );
	printf("STATUS = %u\n", altera_avalon_fifo_read_status(control_base_address, ALTERA_AVALON_FIFO_STATUS_ALL) );
	printf("EVENT = %u\n", altera_avalon_fifo_read_event(control_base_address, ALTERA_AVALON_FIFO_EVENT_ALL) );
	//printf("IENABLE = %u\n", altera_avalon_fifo_read_ienable(control_base_address, ALTERA_AVALON_FIFO_IENABLE_ALL) );
	printf("ALMOSTEMPTY = %u\n", altera_avalon_fifo_read_almostempty(control_base_address) );
	printf("ALMOSTFULL = %u\n\n", 	altera_avalon_fifo_read_almostfull(control_base_address));
}

/*
static void handle_input_fifo_wrclk_interrupts(void* context, alt_u32 id){

volatile int* input_fifo_wrclk_irq_event_ptr = (volatile int*) context;
*input_fifo_wrclk_irq_event_ptr = altera_avalon_fifo_read_event(INPUT_FIFO_IN_CSR_BASE, ALTERA_AVALON_FIFO_EVENT_ALL);
printf("Interrupt Occurs for %#x\n", INPUT_FIFO_IN_CSR_BASE);
print_status(INPUT_FIFO_IN_CSR_BASE);
altera_avalon_fifo_clear_event(INPUT_FIFO_IN_CSR_BASE, ALTERA_AVALON_FIFO_EVENT_ALL);
}
*/
/*
static int init_input_fifo_wrclk_control(){
int return_code = ALTERA_AVALON_FIFO_OK;
void* input_fifo_wrclk_irq_event_ptr = (void*) &input_fifo_wrclk_irq_event;
return_code = altera_avalon_fifo_init(INPUT_FIFO_IN_CSR_BASE,0,ALMOST_EMPTY,ALMOST_FULL);
alt_irq_register( INPUT_FIFO_IN_CSR_IRQ, input_fifo_wrclk_irq_event_ptr, handle_input_fifo_wrclk_interrupts );
return return_code;
}
*/
