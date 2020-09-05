
#include <stdio.h>
#include "jdatatype.h"
#include "config.h"
#include "prototype.h"

#include "src/FIFO.h"
#include "src/IOMap.h"
#include "src/utility.h"

#include <stdint.h>

uint8_t	Lqt [BLOCK_SIZE];
uint8_t	Cqt [BLOCK_SIZE];
uint16_t	ILqt [BLOCK_SIZE];
uint16_t	ICqt [BLOCK_SIZE];

int16_t	Y1 [BLOCK_SIZE];
int16_t	Y2 [BLOCK_SIZE];
int16_t	Y3 [BLOCK_SIZE];
int16_t	Y4 [BLOCK_SIZE];
int16_t	CB [BLOCK_SIZE];
int16_t	CR [BLOCK_SIZE];
int16_t	Temp [BLOCK_SIZE];
uint32_t lcode = 0;
uint16_t bitindex = 0;


void SEND4(int data){
	write_AD(&data);
}
void SEND5(int data){
	write_AE(&data);
}

void (*read_format) (JPEG_ENCODER_STRUCTURE *jpeg_encoder_structure, uint8_t *input_ptr);

void initialization(JPEG_ENCODER_STRUCTURE *jpeg, uint32_t image_format, uint32_t image_width, uint32_t image_height){

	uint16_t mcu_width, mcu_height, bytes_per_pixel;

	/* 	if(image_format == FOUR_ZERO_ZERO || image_format == FOUR_FOUR_FOUR) */
	/* 	{ */
	jpeg->mcu_width = mcu_width = 8;
	jpeg->mcu_height = mcu_height = 8;

	jpeg->horizontal_mcus =(uint16_t)((image_width + mcu_width - 1) >> 3);
	jpeg->vertical_mcus =(uint16_t)((image_height + mcu_height - 1) >> 3);

	/* 		if (image_format == FOUR_ZERO_ZERO) */
	/* 		{ */
	/* 			bytes_per_pixel = 1; */
	/* 			read_format = read_400_format; */
	/* 		} */
	/* 		else */
	/* 		{ */
	bytes_per_pixel = 3;
	read_format = read_444_format;
	/* 		} */
	/* 	} */
	/* 	else */
	/* 	{ */
	/* 		jpeg->mcu_width = mcu_width = 16; */
	/* 		jpeg->horizontal_mcus = (uint16_t) ((image_width + mcu_width - 1) >> 4); */

	/* 		if (image_format == FOUR_TWO_ZERO) */
	/* 		{ */
	/* 			jpeg->mcu_height = mcu_height = 16; */
	/* 			jpeg->vertical_mcus = (uint16_t) ((image_height + mcu_height - 1) >> 4); */

	/* 			bytes_per_pixel = 3; */
	/* 			read_format = read_420_format; */
	/* 		} */
	/* 		else */
	/* 		{ */
	/* 			jpeg->mcu_height = mcu_height = 8; */
	/* 			jpeg->vertical_mcus = (uint16_t) ((image_height + mcu_height - 1) >> 3); */

	/* 			bytes_per_pixel = 2; */
	/* 			read_format = read_422_format; */
	/* 		} */
	/* 	} */

	jpeg->rows_in_bottom_mcus = (uint16_t) (image_height - (jpeg->vertical_mcus - 1) * mcu_height);
	jpeg->cols_in_right_mcus = (uint16_t) (image_width - (jpeg->horizontal_mcus - 1) * mcu_width);

	jpeg->length_minus_mcu_width = (uint16_t) ((image_width - mcu_width) * bytes_per_pixel);
	jpeg->length_minus_width = (uint16_t) ((image_width - jpeg->cols_in_right_mcus) * bytes_per_pixel);

	jpeg->mcu_width_size = (uint16_t) (mcu_width * bytes_per_pixel);

	if (image_format != FOUR_TWO_ZERO){
		jpeg->offset = (uint16_t) ((image_width * (mcu_height - 1) - (mcu_width - jpeg->cols_in_right_mcus)) * bytes_per_pixel);
	}else{
		jpeg->offset = (uint16_t) ((image_width * ((mcu_height >> 1) - 1) - (mcu_width - jpeg->cols_in_right_mcus)) * bytes_per_pixel);
	}
	jpeg->ldc1 = 0;
	jpeg->ldc2 = 0;
	jpeg->ldc3 = 0;
}

uint8_t* encode_image(uint8_t *input_ptr,uint8_t *output_ptr, uint32_t quality_factor, uint32_t image_format, uint32_t image_width, uint32_t image_height){

	uint16_t i, j;

	JPEG_ENCODER_STRUCTURE JpegStruct;
	JPEG_ENCODER_STRUCTURE *jpeg_encoder_structure = &JpegStruct;

	if (image_format == RGB){
		image_format = FOUR_FOUR_FOUR;
		//RGB_2_444 (input_ptr, output_ptr, image_width, image_height);
	}

	/* Initialization of JPEG control structure */
	initialization(jpeg_encoder_structure,image_format,image_width,image_height);

	/* Quantization Table Initialization */
	//initialize_quantization_tables (quality_factor);
	SEND4((jpeg_encoder_structure->vertical_mcus)*(jpeg_encoder_structure->horizontal_mcus));
	SEND4(quality_factor);

	/* Writing Marker Data */
	//output_ptr = write_markers (output_ptr, image_format, image_width, image_height);
	SEND5(image_width);
	SEND5(image_height);
	SEND5((jpeg_encoder_structure->vertical_mcus)*(jpeg_encoder_structure->horizontal_mcus));

	//asm("dummy");
	for (i=1; i<=jpeg_encoder_structure->vertical_mcus; i++){

		if (i < jpeg_encoder_structure->vertical_mcus){
			jpeg_encoder_structure->rows = jpeg_encoder_structure->mcu_height;
		}else{
			jpeg_encoder_structure->rows = jpeg_encoder_structure->rows_in_bottom_mcus;
		}

		for (j=1; j<=jpeg_encoder_structure->horizontal_mcus; j++){

			if (j < jpeg_encoder_structure->horizontal_mcus){
				jpeg_encoder_structure->cols = jpeg_encoder_structure->mcu_width;
				jpeg_encoder_structure->incr = jpeg_encoder_structure->length_minus_mcu_width;

			}else{
				jpeg_encoder_structure->cols = jpeg_encoder_structure->cols_in_right_mcus;
				jpeg_encoder_structure->incr = jpeg_encoder_structure->length_minus_width;
			}

			// Nuwan
			//read_format(jpeg_encoder_structure, input_ptr);
			printf("sending %d -> %d of %d\n", i, j, jpeg_encoder_structure->vertical_mcus);
			read_444_format(jpeg_encoder_structure, input_ptr);
			ledBlink(1);
			//--------

			/* Encode the data in MCU */
			//output_ptr = encodeMCU (jpeg_encoder_structure, image_format, output_ptr);

			input_ptr += jpeg_encoder_structure->mcu_width_size;
		}

		input_ptr += jpeg_encoder_structure->offset;
	}

	/* Close Routine */
	//output_ptr = close_bitstream (output_ptr);
	return output_ptr;
}

uint8_t* encodeMCU(JPEG_ENCODER_STRUCTURE *jpeg_encoder_structure, uint32_t image_format, uint8_t *output_ptr)
{
	//levelshift (Y1);
	//DCT (Y1);
	//quantization (Y1, ILqt);
	//output_ptr = huffman (jpeg_encoder_structure, 1, output_ptr);

	if (image_format == FOUR_TWO_ZERO || image_format == FOUR_TWO_TWO){
		//levelshift (Y2);
		//DCT (Y2);
		//quantization (Y2, ILqt);
		//output_ptr = huffman (jpeg_encoder_structure, 1, output_ptr);

		if (image_format == FOUR_TWO_ZERO){
			//levelshift (Y3);
			//DCT (Y3);
			//quantization (Y3, ILqt);
			//output_ptr = huffman (jpeg_encoder_structure, 1, output_ptr);

			//levelshift (Y4);
			//DCT (Y4);
			//quantization (Y4, ILqt);
			//output_ptr = huffman (jpeg_encoder_structure, 1, output_ptr);
		}
	}

	if (image_format != FOUR_ZERO_ZERO){
		//levelshift (CB);
		//DCT (CB);
		//quantization (CB, ICqt);
		//output_ptr = huffman (jpeg_encoder_structure, 2, output_ptr);

		//levelshift (CR);
		//DCT (CR);
		//quantization (CR, ICqt);
		//output_ptr = huffman (jpeg_encoder_structure, 3, output_ptr);
	}
	return output_ptr;
}
