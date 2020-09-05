
#include <stdio.h>
#include <time.h>
#include <stdint.h>
#include <io.h>
#include <unistd.h>

#include "src/FIFO.h"
#include "src/IOMap.h"
#include "src/utility.h"

//typedef char			INT8;
//typedef unsigned char	uint8_t;

// RECV1 -> read_AF
// RECV2 -> read_EF


void processLoop();

int main(void){

	printf("Hardware JSoC_F begins\n\n");

	init_AF();
	init_EF();

	ledBlink(6);

	while(1){
		processLoop();
	}
	return 0;
}


void processLoop(){
	FILE *fptr;
	uint8_t out;
	int8_t filename[50];

	while(1){
		out = 0;
		filename[out] = (int8_t)read_AF();
		ledBlink(6);

		if (filename[out]=='\0'){
			exit(0);
		}

		while(filename[out]!='\0'){
			out++;
			filename[out] = (int8_t)read_AF();
		}

		filename[out++] = '.';
		filename[out++] = 'j';
		filename[out++] = 'p';
		filename[out++] = 'g';
		filename[out]   = '\0';

		ledBlink(6);

		//fptr = fopen(filename, "wb");	*Nuwan*
		fptr = fopen("/mnt/host/files/result.jpg", "wb");

		//
		fprintf(stderr,"\nOutput file: %s\n",filename); //Output file added by haris


		while(1){

			out = (uint8_t)read_EF();
			fputc(out, fptr);
			//printf("%d ",out);

			if (out == 0xFF){
				out = (uint8_t)read_EF();
				fputc(out, fptr);
				//printf("%d ",out);

				//printf("\nWriting: %d\n",out);
			}
			if(out == 0xD9){
				break;
			}
			

		}

		fclose(fptr);
		printf("\n Done ! %d\n", clock());
		ledBlink(7);ledBlink(7);ledBlink(7);

		break;
	}
}
