#include <stdio.h>
#include <stdint.h>
#include <io.h>
#include <unistd.h>

#include "src/FIFO.h"
#include "src/IOMap.h"
#include "src/utility.h"

void processLoop();

void SEND(int16_t data){
	write_BC(&data);
}

int main(void) {
	printf("Hardware JSoC_B begins\n\n");

	init_AB_0();
	init_AB_1();
	init_AB_2();
	init_BC();

	ledBlink(2);
	while(1){
		processLoop();
	}

	return 0;
}

/* Level shifting to get 8 bit SIGNED values for the data  */
void processLoop(){
	int16_t i;
	int j;

// Updated by Nuwan
	for(j=0;j<64;j++){
		i = (uint16_t)read_AB_0();
		i -= 128;
		printf("%d -> %d\n", j, i);
		SEND(i);

		i = (uint16_t)read_AB_1();
		i -= 128;
		printf("%d -> %d\n", j, i);
		SEND(i);

		i = (uint16_t)read_AB_2();
		i -= 128;
		printf("%d -> %d\n", j, i);
		SEND(i);

	}
/*
	for(j=0;j<64;j++){
		i = (uint16_t)read_AB_0();
		i -= 128;
		printf("%d -> %d\n", j, i);
		SEND(i);
	}
	//ledBlink(2);
	//readStatus_AB_0();
	//readStatus_BC();
	//printf("\n\n");

	for(j=0;j<64;j++){
		i = (uint16_t)read_AB_1();
		i -= 128;
		printf("%d -> %d\n", j, i);
		SEND(i);
	}
	//ledBlink(2);
	//readStatus_AB_1();
	//readStatus_BC();
	//printf("\n\n");


*/

	ledBlink(2);
	//readStatus_AB_2();
	//readStatus_BC();
	printf("\n\n");
}
