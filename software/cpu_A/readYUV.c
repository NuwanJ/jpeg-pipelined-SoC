#include <stdio.h>
#include "jdatatype.h"
#include "config.h"
#include "prototype.h"

#include "src/FIFO.h"
#include "src/IOMap.h"
#include "src/utility.h"

#include <stdint.h>

void SEND1(int data){
	write_AB_0(&data);
}
void SEND2(int data){
	write_AB_1(&data);
}
void SEND3(int data){
	write_AB_2(&data);
}

/*
void read_400_format (JPEG_ENCODER_STRUCTURE *jpeg_encoder_structure, uint8_t *input_ptr)
{
int32_t i, j;
int16_t *Y1_Ptr = Y1;

uint16_t rows = jpeg_encoder_structure->rows;
uint16_t cols = jpeg_encoder_structure->cols;
uint16_t incr = jpeg_encoder_structure->incr;

for (i=rows; i>0; i--)
{
for (j=cols; j>0; j--)
*Y1_Ptr++ = *input_ptr++;

for (j=8-cols; j>0; j--)
*Y1_Ptr++ = *(Y1_Ptr-1);

input_ptr += incr;
}

for (i=8-rows; i>0; i--)
{
for (j=8; j>0; j--)
*Y1_Ptr++ = *(Y1_Ptr - 8);
}
}

void read_420_format (JPEG_ENCODER_STRUCTURE *jpeg_encoder_structure, uint8_t *input_ptr)
{
int32_t i, j;
uint16_t Y1_rows, Y3_rows, Y1_cols, Y2_cols;

int16_t *Y1_Ptr = Y1;
int16_t *Y2_Ptr = Y2;
int16_t *Y3_Ptr = Y3;
int16_t *Y4_Ptr = Y4;
int16_t *CB_Ptr = CB;
int16_t *CR_Ptr = CR;

int16_t *Y1Ptr = Y1 + 8;
int16_t *Y2Ptr = Y2 + 8;
int16_t *Y3Ptr = Y3 + 8;
int16_t *Y4Ptr = Y4 + 8;

uint16_t rows = jpeg_encoder_structure->rows;
uint16_t cols = jpeg_encoder_structure->cols;
uint16_t incr = jpeg_encoder_structure->incr;

if (rows <= 8)
{
Y1_rows = rows;
Y3_rows = 0;
}
else
{
Y1_rows = 8;
Y3_rows = (uint16_t) (rows - 8);
}

if (cols <= 8)
{
Y1_cols = cols;
Y2_cols = 0;
}
else
{
Y1_cols = 8;
Y2_cols = (uint16_t) (cols - 8);
}

for (i=Y1_rows>>1; i>0; i--)
{
for (j=Y1_cols>>1; j>0; j--)
{
*Y1_Ptr++ = *input_ptr++;
*Y1_Ptr++ = *input_ptr++;
*Y1Ptr++ = *input_ptr++;
*Y1Ptr++ = *input_ptr++;
*CB_Ptr++ = *input_ptr++;
*CR_Ptr++ = *input_ptr++;
}

for (j=Y2_cols>>1; j>0; j--)
{
*Y2_Ptr++ = *input_ptr++;
*Y2_Ptr++ = *input_ptr++;
*Y2Ptr++ = *input_ptr++;
*Y2Ptr++ = *input_ptr++;
*CB_Ptr++ = *input_ptr++;
*CR_Ptr++ = *input_ptr++;
}

if (cols <= 8)
{
for (j=8-Y1_cols; j>0; j--)
{
*Y1_Ptr++ = *(Y1_Ptr - 1);
*Y1Ptr++ = *(Y1Ptr - 1);
}

for (j=8; j>0; j--)
{
*Y2_Ptr++ = *(Y1_Ptr - 1);
*Y2Ptr++ = *(Y1Ptr - 1);
}
}
else
{
for (j=8-Y2_cols; j>0; j--)
{
*Y2_Ptr++ = *(Y2_Ptr - 1);
*Y2Ptr++ = *(Y2Ptr - 1);
}
}

for (j=(16-cols)>>1; j>0; j--)
{
*CB_Ptr++ = *(CB_Ptr-1);
*CR_Ptr++ = *(CR_Ptr-1);
}

Y1_Ptr += 8;
Y2_Ptr += 8;
Y1Ptr += 8;
Y2Ptr += 8;

input_ptr += incr;
}

for (i=Y3_rows>>1; i>0; i--)
{
for (j=Y1_cols>>1; j>0; j--)
{
*Y3_Ptr++ = *input_ptr++;
*Y3_Ptr++ = *input_ptr++;
*Y3Ptr++ = *input_ptr++;
*Y3Ptr++ = *input_ptr++;
*CB_Ptr++ = *input_ptr++;
*CR_Ptr++ = *input_ptr++;
}

for (j=Y2_cols>>1; j>0; j--)
{
*Y4_Ptr++ = *input_ptr++;
*Y4_Ptr++ = *input_ptr++;
*Y4Ptr++ = *input_ptr++;
*Y4Ptr++ = *input_ptr++;
*CB_Ptr++ = *input_ptr++;
*CR_Ptr++ = *input_ptr++;
}

if (cols <= 8)
{
for (j=8-Y1_cols; j>0; j--)
{
*Y3_Ptr++ = *(Y3_Ptr - 1);
*Y3Ptr++ = *(Y3Ptr - 1);
}

for (j=8; j>0; j--)
{
*Y4_Ptr++ = *(Y3_Ptr - 1);
*Y4Ptr++ = *(Y3Ptr - 1);
}
}
else
{
for (j=8-Y2_cols; j>0; j--)
{
*Y4_Ptr++ = *(Y4_Ptr - 1);
*Y4Ptr++ = *(Y4Ptr - 1);
}
}

for (j=(16-cols)>>1; j>0; j--)
{
*CB_Ptr++ = *(CB_Ptr-1);
*CR_Ptr++ = *(CR_Ptr-1);
}

Y3_Ptr += 8;
Y4_Ptr += 8;
Y3Ptr += 8;
Y4Ptr += 8;

input_ptr += incr;
}

if (rows <= 8)
{
for (i=8-rows; i>0; i--)
{
for (j=8; j>0; j--)
{
*Y1_Ptr++ = *(Y1_Ptr - 8);
*Y2_Ptr++ = *(Y2_Ptr - 8);
}
}

for (i=8; i>0; i--)
{
Y1_Ptr -= 8;
Y2_Ptr -= 8;

for (j=8; j>0; j--)
{
*Y3_Ptr++ = *Y1_Ptr++;
*Y4_Ptr++ = *Y2_Ptr++;
}
}
}
else
{
for (i=(16-rows); i>0; i--)
{
for (j=8; j>0; j--)
{
*Y3_Ptr++ = *(Y3_Ptr - 8);
*Y4_Ptr++ = *(Y4_Ptr - 8);
}
}
}

for (i=((16-rows)>>1); i>0; i--)
{
for (j=8; j>0; j--)
{
*CB_Ptr++ = *(CB_Ptr-8);
*CR_Ptr++ = *(CR_Ptr-8);
}
}
}

void read_422_format (JPEG_ENCODER_STRUCTURE *jpeg_encoder_structure, uint8_t *input_ptr)
{
int32_t i, j;
uint16_t Y1_cols, Y2_cols;

int16_t *Y1_Ptr = Y1;
int16_t *Y2_Ptr = Y2;
int16_t *CB_Ptr = CB;
int16_t *CR_Ptr = CR;

uint16_t rows = jpeg_encoder_structure->rows;
uint16_t cols = jpeg_encoder_structure->cols;
uint16_t incr = jpeg_encoder_structure->incr;

if (cols <= 8)
{
Y1_cols = cols;
Y2_cols = 0;
}
else
{
Y1_cols = 8;
Y2_cols = (uint16_t) (cols - 8);
}

for (i=rows; i>0; i--)
{
for (j=Y1_cols>>1; j>0; j--)
{
*Y1_Ptr++ = *input_ptr++;
*CB_Ptr++ = *input_ptr++;
*Y1_Ptr++ = *input_ptr++;
*CR_Ptr++ = *input_ptr++;
}

for (j=Y2_cols>>1; j>0; j--)
{
*Y2_Ptr++ = *input_ptr++;
*CB_Ptr++ = *input_ptr++;
*Y2_Ptr++ = *input_ptr++;
*CR_Ptr++ = *input_ptr++;
}

if (cols <= 8)
{
for (j=8-Y1_cols; j>0; j--)
*Y1_Ptr++ = *(Y1_Ptr - 1);

for (j=8-Y2_cols; j>0; j--)
*Y2_Ptr++ = *(Y1_Ptr - 1);
}
else
{
for (j=8-Y2_cols; j>0; j--)
*Y2_Ptr++ = *(Y2_Ptr - 1);
}

for (j=(16-cols)>>1; j>0; j--)
{
*CB_Ptr++ = *(CB_Ptr-1);
*CR_Ptr++ = *(CR_Ptr-1);
}

input_ptr += incr;
}

for (i=8-rows; i>0; i--)
{
for (j=8; j>0; j--)
{
*Y1_Ptr++ = *(Y1_Ptr - 8);
*Y2_Ptr++ = *(Y2_Ptr - 8);
*CB_Ptr++ = *(CB_Ptr - 8);
*CR_Ptr++ = *(CR_Ptr - 8);
}
}
}
*/
void read_444_format(JPEG_ENCODER_STRUCTURE *jpeg_encoder_structure, uint8_t *input_ptr)
{
	int32_t i, j;
	//int16_t *Y1_Ptr = Y1;
	//int16_t *CB_Ptr = CB;
	//int16_t *CR_Ptr = CR;

	uint8_t R, G, B;
	int32_t Y, Cb, Cr;

	uint16_t rows = jpeg_encoder_structure->rows;
	uint16_t cols = jpeg_encoder_structure->cols;
	uint16_t incr = jpeg_encoder_structure->incr;

	//printf("write 444_format: begin\n");

	for (i=rows; i>0; i--){
		for (j=cols; j>0; j--){

			R = *input_ptr++;
			G = *input_ptr++;
			B = *input_ptr++;

			Y = ((77 * R + 150 * G + 29 * B) >> 8);
			Cb = ((-43 * R - 85 * G + 128 * B) >> 8) + 128;
			Cr = ((128 * R - 107 * G - 21 * B) >> 8) + 128;

			if (Y < 0){
				Y = 0;
			} else if (Y > 255){
				Y = 255;
			}

			if (Cb < 0){
				Cb = 0;
			} else if (Cb > 255){
				Cb = 255;
			}

			if (Cr < 0){
				Cr = 0;
			} else if (Cr > 255){
				Cr = 255;
			}

			SEND1(Y);
			SEND2(Cb);
			SEND3(Cr);
			//added by isuru
			//#pragma flush

		}


		if ((j=(8-cols)) >0){

			R = *(input_ptr-3);
			G = *(input_ptr-2);
			B = *(input_ptr-1);

			Y = ((77 * R + 150 * G + 29 * B) >> 8);
			Cb = ((-43 * R - 85 * G + 128 * B) >> 8) + 128;
			Cr = ((128 * R - 107 * G - 21 * B) >> 8) + 128;

			if (Y < 0){
				Y = 0;
			}else if (Y > 255){
				Y = 255;
			}

			if (Cb < 0){
				Cb = 0;
			}else if (Cb > 255){
				Cb = 255;
			}

			if (Cr < 0){
				Cr = 0;
			}else if (Cr > 255){
				Cr = 255;
			}
			for (; j>0; j--){
				SEND1(Y);
				SEND2(Cb);
				SEND3(Cr);
			}
		}

		input_ptr += incr;
	}
	//ledBlink(1);
	//printf("write 444_format: half completed\n");

	input_ptr -= incr;

	for (i=8-rows; i>0; i--){
		for (j=cols*3; j>0; ){
			R = *(input_ptr - (j--));
			G = *(input_ptr - (j--));
			B = *(input_ptr - (j--));

			Y = ((77 * R + 150 * G + 29 * B) >> 8);
			Cb = ((-43 * R - 85 * G + 128 * B) >> 8) + 128;
			Cr = ((128 * R - 107 * G - 21 * B) >> 8) + 128;

			if (Y < 0){
				Y = 0;
			}else if (Y > 255){
				Y = 255;
			}

			if (Cb < 0){
				Cb = 0;
			}else if (Cb > 255){
				Cb = 255;
			}

			if (Cr < 0){
				Cr = 0;
			}else if (Cr > 255){
				Cr = 255;
			}

			SEND1(Y);
			SEND2(Cb);
			SEND3(Cr);
		}

		if ((j=(8-cols)) >0){

			R = *(input_ptr - 3);
			G = *(input_ptr - 2);
			B = *(input_ptr - 1);

			Y = ((77 * R + 150 * G + 29 * B) >> 8);
			Cb = ((-43 * R - 85 * G + 128 * B) >> 8) + 128;
			Cr = ((128 * R - 107 * G - 21 * B) >> 8) + 128;

			if (Y < 0){
				Y = 0;
			}else if (Y > 255){
				Y = 255;
			}

			if (Cb < 0){
				Cb = 0;
			}else if (Cb > 255){
				Cb = 255;
			}

			if (Cr < 0){
				Cr = 0;
			}else if (Cr > 255){
				Cr = 255;
			}

			for(; j>0; j--){
				SEND1(Y);
				SEND2(Cb);
				SEND3(Cr);
			}
		}
	}
	//ledBlink(1);
	//printf("write 444_format: fully completed\n");

	//fprintf(stderr,"Sent Y Cb Cr\n");
	/*
	for (i=rows; i>0; i--)
	{
	for (j=cols; j>0; j--)
	{
	*Y1_Ptr++ = *input_ptr++;
	*CB_Ptr++ = *input_ptr++;
	*CR_Ptr++ = *input_ptr++;
}

for (j=8-cols; j>0; j--)
{
*Y1_Ptr++ = *(Y1_Ptr-1);
*CB_Ptr++ = *(CB_Ptr-1);
*CR_Ptr++ = *(CR_Ptr-1);
}

input_ptr += incr;
}

for (i=8-rows; i>0; i--)
{
for (j=8; j>0; j--)
{
*Y1_Ptr++ = *(Y1_Ptr - 8);
*CB_Ptr++ = *(CB_Ptr - 8);
*CR_Ptr++ = *(CR_Ptr - 8);
}
}
*/
}
/*
void RGB_2_444 (uint8_t *input_ptr, uint8_t *output_ptr, uint32_t image_width, uint32_t image_height)
{
uint32_t i, size;
uint8_t R, G, B;
int32_t Y, Cb, Cr;

output_ptr = input_ptr;

size = image_width * image_height;

for (i=size; i>0; i--)
{

R = *input_ptr++;
G = *input_ptr++;
B = *input_ptr++;

Y = ((77 * R + 150 * G + 29 * B) >> 8);
Cb = ((-43 * R - 85 * G + 128 * B) >> 8) + 128;
Cr = ((128 * R - 107 * G - 21 * B) >> 8) + 128;

if (Y < 0)
Y = 0;
else if (Y > 255)
Y = 255;

if (Cb < 0)
Cb = 0;
else if (Cb > 255)
Cb = 255;

if (Cr < 0)
Cr = 0;
else if (Cr > 255)
Cr = 255;

*output_ptr++ = (uint8_t) Y;
*output_ptr++ = (uint8_t) Cb;
*output_ptr++ = (uint8_t) Cr;
}
}
*/
