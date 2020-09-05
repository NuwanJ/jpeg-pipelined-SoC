
#include <stdio.h>
#include <stdint.h>
#include <io.h>
#include <unistd.h>

#include <stdio.h>
#include <stdlib.h>

#include "src/FIFO.h"
#include "src/IOMap.h"
#include "src/utility.h"

int *data;

void processLoop();
void DCT(uint8_t round);

void SEND(int16_t val){
	write_CD(&val);
}

int main(void){

	printf("Hardware JSoC_C begins\n\n");

	init_BC();
	init_CD();

	ledBlink(3);

	while(1){
		processLoop();
	}

	return 0;
}

void processLoop(){

	data = (int16_t*)malloc(sizeof(int16_t)*64);

	while(1){
		DCT(0);
		DCT(1);
		DCT(2);
		ledBlink(3);
	}
}

/* DCT for One block(8x8) */
void DCT(uint8_t round){
	uint16_t i;
	int32_t x0, x1, x2, x3, x4, x5, x6, x7, x8;

	/*	All values are shifted left by 10
	and rounded off to nearest integer */

	static const uint16_t c1=1420;	/* cos PI/16 * root(2)	*/
	static const uint16_t c2=1338;	/* cos PI/8 * root(2)	*/
	static const uint16_t c3=1204;	/* cos 3PI/16 * root(2)	*/
	static const uint16_t c5=805;		/* cos 5PI/16 * root(2)	*/
	static const uint16_t c6=554;		/* cos 3PI/8 * root(2)	*/
	static const uint16_t c7=283;		/* cos 7PI/16 * root(2)	*/

	static const uint16_t s1=3;
	static const uint16_t s2=10;
	static const uint16_t s3=13;

	/* read back from queue */
	for (i=0; i<64; i++){
		data[i] = (int16_t)read_BC();
		printf("%d | %d -> %d\n", round, i, data[i]);
	}
	//ledBlink(3);

	for (i=8; i>0; i--){
		x8 = data[0] + data[7];
		x0 = data[0] - data[7];

		x7 = data[1] + data[6];
		x1 = data[1] - data[6];

		x6 = data[2] + data[5];
		x2 = data[2] - data[5];

		x5 = data[3] + data[4];
		x3 = data[3] - data[4];

		x4 = x8 + x5;
		x8 -= x5;

		x5 = x7 + x6;
		x7 -= x6;

		data[0] = (int16_t) (x4 + x5);
		data[4] = (int16_t) (x4 - x5);

		data[2] = (int16_t) ((x8*c2 + x7*c6) >> s2);
		data[6] = (int16_t) ((x8*c6 - x7*c2) >> s2);

		data[7] = (int16_t) ((x0*c7 - x1*c5 + x2*c3 - x3*c1) >> s2);
		data[5] = (int16_t) ((x0*c5 - x1*c1 + x2*c7 + x3*c3) >> s2);
		data[3] = (int16_t) ((x0*c3 - x1*c7 - x2*c1 - x3*c5) >> s2);
		data[1] = (int16_t) ((x0*c1 + x1*c3 + x2*c5 + x3*c7) >> s2);

		data += 8;
	}
	data -= 64;

	for (i=8; i>0; i--){
		x8 = data[0] + data[56];
		x0 = data[0] - data[56];

		x7 = data[8] + data[48];
		x1 = data[8] - data[48];

		x6 = data[16] + data[40];
		x2 = data[16] - data[40];

		x5 = data[24] + data[32];
		x3 = data[24] - data[32];

		x4 = x8 + x5;
		x8 -= x5;

		x5 = x7 + x6;
		x7 -= x6;

		data[0] = (int16_t) ((x4 + x5) >> s1);
		data[32] = (int16_t) ((x4 - x5) >> s1);

		data[16] = (int16_t) ((x8*c2 + x7*c6) >> s3);
		data[48] = (int16_t) ((x8*c6 - x7*c2) >> s3);

		data[56] = (int16_t) ((x0*c7 - x1*c5 + x2*c3 - x3*c1) >> s3);
		data[40] = (int16_t) ((x0*c5 - x1*c1 + x2*c7 + x3*c3) >> s3);
		data[24] = (int16_t) ((x0*c3 - x1*c7 - x2*c1 - x3*c5) >> s3);
		data[8] = (int16_t) ((x0*c1 + x1*c3 + x2*c5 + x3*c7) >> s3);
		data++;
	}

	data -= 8;

	/* write out to queue */
	for (i=0; i<64; i++){
		SEND(data[i]);
	}
	printf("round %d\n\n", round);
	//readStatus_CD();
	ledBlink(3);
}
