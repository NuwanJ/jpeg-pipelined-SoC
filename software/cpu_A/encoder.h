//#include <xtensa/tie/portqueue6o.h>

#include <stdio.h>
#include "jdatatype.h"
#include "config.h"
#include "prototype.h"
#include "readYUV.h"
/*
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
*/

void SEND4(int data);
void SEND5(int data);

void (*read_format) (JPEG_ENCODER_STRUCTURE *jpeg_encoder_structure, uint8_t *input_ptr);

void initialization (JPEG_ENCODER_STRUCTURE *jpeg, uint32_t image_format, uint32_t image_width, uint32_t image_height);

uint8_t* encode_image (uint8_t *input_ptr,uint8_t *output_ptr, uint32_t quality_factor, uint32_t image_format, uint32_t image_width, uint32_t image_height);


uint8_t* encodeMCU (JPEG_ENCODER_STRUCTURE *jpeg_encoder_structure, uint32_t image_format, uint8_t *output_ptr);
