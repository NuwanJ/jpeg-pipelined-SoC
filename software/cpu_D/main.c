
#include <stdio.h>
#include <stdint.h>
#include <io.h>
#include <unistd.h>

#include "src/FIFO.h"
#include "src/IOMap.h"
#include "src/utility.h"

#include "config.h"
#include "quantdata.h"

uint8_t	Lqt [BLOCK_SIZE];
uint8_t	Cqt [BLOCK_SIZE];
uint16_t	ILqt [BLOCK_SIZE];
uint16_t	ICqt [BLOCK_SIZE];
int16_t	Temp [BLOCK_SIZE];

void processLoop();
uint16_t DSP_Division(uint32_t numer, uint32_t denom);
void initialize_quantization_tables (void);
void quantization(uint16_t* const quant_table_ptr);

void SEND(uint8_t val){
	write_DE(&val);
}

int main(void){

	printf("Hardware JSoC_D begins\n\n");

	init_AD();
	init_CD();
	init_DE();

	ledBlink(4);

	while(1){
		processLoop();
	}
	return 0;
}

void processLoop(){
	uint32_t count  = (uint32_t)read_AD(); // RECV1();
	ledBlink(4);
	printf("Count: %d\n", count);

	initialize_quantization_tables();

	for(;count>0;count--){
		quantization(ILqt);
		quantization(ICqt);
		quantization(ICqt);
		ledBlink(4);
	}

	ledBlink(4);
}



/*	This function implements 16 Step division for Q.15 format data */
uint16_t DSP_Division(uint32_t numer, uint32_t denom){
	uint16_t i;
	denom <<= 15;

	for (i=16; i>0; i--){
		if (numer > denom){
			numer -= denom;
			numer <<= 1;
			numer++;
		}else{
			numer <<= 1;
		}
	}
	return (uint16_t) numer;
}

/* Multiply Quantization table with quality factor to get LQT and CQT */
void initialize_quantization_tables(void){

	uint16_t i, index;
	uint32_t value;

	uint8_t luminance_quant_table [] ={
		16, 11, 10, 16,  24,  40,  51,  61,
		12, 12, 14, 19,  26,  58,  60,  55,
		14, 13, 16, 24,  40,  57,  69,  56,
		14, 17, 22, 29,  51,  87,  80,  62,
		18, 22, 37, 56,  68, 109, 103,  77,
		24, 35, 55, 64,  81, 104, 113,  92,
		49, 64, 78, 87, 103, 121, 120, 101,
		72, 92, 95, 98, 112, 100, 103,  99
	};

	uint8_t chrominance_quant_table [] =
	{
		17, 18, 24, 47, 99, 99, 99, 99,
		18, 21, 26, 66, 99, 99, 99, 99,
		24, 26, 56, 99, 99, 99, 99, 99,
		47, 66, 99, 99, 99, 99, 99, 99,
		99, 99, 99, 99, 99, 99, 99, 99,
		99, 99, 99, 99, 99, 99, 99, 99,
		99, 99, 99, 99, 99, 99, 99, 99,
		99, 99, 99, 99, 99, 99, 99, 99
	};

	uint32_t quality_factor = (uint32_t)read_CD();
	printf("Quality Factor: %d\n", quality_factor);

	for (i=0; i<64; i++){
		index = zigzag_table [i];

		/* luminance quantization table * quality factor */
		value = luminance_quant_table [i] * quality_factor;
		value = (value + 0x200) >> 10;

		if (value == 0)
		value = 1;
		else if (value > 255)
		value = 255;

		Lqt [index] = (uint8_t) value;
		ILqt [i] = DSP_Division(0x8000, value);

		/* chrominance quantization table * quality factor */
		value = chrominance_quant_table [i] * quality_factor;
		value = (value + 0x200) >> 10;

		if (value == 0)
		value = 1;
		else if (value > 255)
		value = 255;

		Cqt [index] = (uint8_t) value;
		ICqt [i] = DSP_Division(0x8000, value);
	}
	for (i=0; i<64; i++){
		SEND(Lqt[i]);	//SEND(Lqt[i]);
		printf("Lqt[%d] > %d\n", i, Lqt[i]);
	}
	//ledBlink(4);

	for (i=0; i<64; i++){
		SEND(Cqt[i]);	//SEND(Cqt[i]);
		printf("Cqt[%d] > %d\n", i, Lqt[i]);
	}
	ledBlink(4);

	printf("initialize_quantization_tables is completed\n\n");
	//readStatus_DE();
}


void quantization(uint16_t* const quant_table_ptr){
	int16_t i;
	int32_t value;

	for (i=0; i<=63; i++){
		value = (int16_t)read_CD() * quant_table_ptr[i];		// RECV2()
		value = (value + 0x4000) >> 15;
		Temp[zigzag_table[i]] = (int16_t) value;

		//printf("quant %d -> %d\n", i, value);
	}
	//readStatus_CD();
	//printf("----------------\n");

	for (i=0; i<=63; i++){
		SEND(Temp[i]); //SEND(Temp [i]);
	}
	//ledBlink(4);
}
