
#include <stdio.h>
#include <stdint.h>
#include <io.h>
#include <unistd.h>

#include "src/FIFO.h"
#include "src/IOMap.h"
#include "src/utility.h"

#include <malloc.h>
#include <time.h>

#include "jdatatype.h"
#include "config.h"
#include "prototype.h"
#include "encoder.h"

void processLoop();
void* jemalloc(size_t size);

void SEND6(int data){
	write_AF(&data);
}

int main(int argc, char *argv[]){
	delay(3000);
	printf("Hardware JSoC_A begins\n\n");

	init_AB_0();	// SEND
	init_AB_1();	// SEND
	init_AB_2();	// SEND
	init_AD();		// SEND
	init_AE();		// SEND
	init_AF();		// SEND6

	ledBlink(1);
	processLoop();

	return 0;
}

void processLoop(){

	int8_t input_file_name[150], output_file_name[150];
	int8_t *input_file_name_ptr, *output_file_name_ptr;
	uint32_t image_size;
	uint8_t *input , *output ;
	FILE *fp, *fpt;

	uint8_t *output_ptr;
	//uint32_t quality_factor, image_format, image_width, image_height;
	int quality_factor, image_format, image_width, image_height; 	// Nuwan

	fp = fopen("/mnt/host/files/param.txt", "r");

	printf("File Open:\n");

	while (fscanf(fp, "%s", input_file_name) != EOF){
		input_file_name_ptr = input_file_name;
		output_file_name_ptr = output_file_name;

		ledBlink(1);
		printf("FileName: %s\n", input_file_name);

		while(*input_file_name_ptr != '.'){
			SEND6(*input_file_name_ptr);
			input_file_name_ptr++;
		}
		ledBlink(1);
		SEND6('\0');

		fscanf(fp, "%d", &quality_factor);	// 90
		fscanf(fp, "%d", &image_format);		// 0
		fscanf(fp, "%d", &image_width);		// 128
		fscanf(fp, "%d", &image_height);		// 128

		if (image_format == FOUR_ZERO_ZERO){
			image_size = image_width * image_height;
		} else if (image_format == FOUR_TWO_ZERO){
			image_size = (image_width * image_height * 3) >> 1;
		}else if (image_format == FOUR_TWO_TWO){
			image_size = image_width * image_height * 2;
		}else{
			image_size = image_width * image_height * 3;
		}

		printf("Quality: %d, width: %d, height: %d\n\n", quality_factor, image_width, image_height);

		/*
		#define		FOUR_ZERO_ZERO			0
		#define		FOUR_TWO_ZERO			1
		#define		FOUR_TWO_TWO			2
		#define		FOUR_FOUR_FOUR			3
		#define		RGB						4
		*/

		input=(uint8_t *)jemalloc(2500000*sizeof(uint8_t));
		fpt = fopen(input_file_name, "rb");
		fread(input, 1, image_size, fpt);
		fclose(fpt);

		//output=(uint8_t *)jemalloc(250000*sizeof(uint8_t*));
		//output_ptr = output;

		output_ptr = encode_image(input, output_ptr, quality_factor, image_format, image_width, image_height);

		//fpt = fopen (output_file_name, "wb");
		//fwrite (output, 1, output_ptr - output, fpt);
		//fclose (fpt);
		free (input);
		//free (output);
		//fprintf(stderr,"Waiting now\n");
		//xt_iss_profile_disable();
		//while(!ISDONE());
		//xt_iss_profile_enable();
	}

	SEND6(0);
	fclose (fp);

	//while(1);
	printf("\n Done ! \n");
}

void* jemalloc(size_t size){
	return (malloc(size));
}
