
#include <stdio.h>
#include <stdint.h>
#include <io.h>
#include <unistd.h>

#include "src/FIFO.h"
#include "src/IOMap.h"
#include "src/utility.h"

#include "huffdata.h"
#include "markdata.h"

// SEND1 -> write_EF
// SEND2 ->

// RECV1 -> read_AE
// RECV2 -> read_DE

uint32_t lcode = 0;
uint16_t bitindex = 0;
int16_t ldc1 = 0, ldc2 = 0, ldc3 = 0;


void SEND1(int val){
	write_EF(&val);
}

void SEND2(int d){
	int val = d;
	// REM: What to to ?
}

#define PUTBITS	\
{	\
	bits_in_next_word = (int16_t) (bitindex + numbits - 32);	\
	if (bits_in_next_word < 0)	\
	{	\
		lcode = (lcode << numbits) | data;	\
		bitindex += numbits;	\
	}	\
	else	\
	{	\
		lcode = (lcode << (32 - bitindex)) | (data >> bits_in_next_word);	\
		out = (uint8_t)(lcode >> 24); \
		SEND1(out); \
		if (out == 0xff)	\
		SEND1(0);	\
		out = (uint8_t)(lcode >> 16); \
		SEND1(out); \
		if (out == 0xff)	\
		SEND1(0);	\
		out = (uint8_t)(lcode >> 8); \
		SEND1(out); \
		if (out == 0xff)	\
		SEND1(0);	\
		out = (uint8_t) lcode; \
		SEND1(out); \
		if (out == 0xff)	\
		SEND1(0);	\
		lcode = data;	\
		bitindex = bits_in_next_word;	\
	}	\
}

void processLoop();
void write_markers (uint32_t image_width, uint32_t image_height);
void huffman (uint16_t component);
void close_bitstream (void);


int main(void){

	printf("Hardware JSoC_E begins\n\n");

	init_AE();
	init_DE();
	init_EF();

	ledBlink(5);

	while(1){
		processLoop();
	}

	return 0;
}

void processLoop(){
	while(1){
		lcode = 0;
		bitindex = 0;
		ldc1 = 0; ldc2 = 0; ldc3 = 0;

		uint32_t width  = (uint32_t)read_AE();
		uint32_t height = (uint32_t)read_AE();
		uint32_t count  = (uint32_t)read_AE();

		ledBlink(5);
		printf("width: %d, height: %d, count: %d\n", width, height, count);

		//fprintf(stderr,"total macroblocks: %d\n",count);
		write_markers(width,height);
		printf("write_markers: Completed\n");


		for(; count>0; count--){
			huffman(1);
			//printf("huffman %d - %d completed\n", count, 1);
			huffman(2);
			//printf("huffman %d - %d completed\n", count, 2);
			huffman(3);
			//printf("huffman %d - %d completed\n", count, 3);

			printf("huffman cycle %d completed\n", count);

		}
		//fprintf(stderr,"Closing bitstream\n");
		close_bitstream();
		//#pragma flush
		//SET_DONE();
		SEND2(1);
		ledBlink(5);
		break;

	}

	printf("\n Finished !\n");
}

// Header for JPEG Encoder
void write_markers(uint32_t image_width, uint32_t image_height){
	uint16_t i, header_length;
	uint8_t number_of_components;

	// Start of image marker
	SEND1(0xFF);
	SEND1(0xD8);

	// Quantization table marker
	SEND1(0xFF);
	SEND1(0xDB);

	// Quantization table length
	SEND1(0x00);
	SEND1(0x84);

	// Pq, Tq
	SEND1(0x00);

	// Lqt table
	for (i=0; i<64; i++){
		SEND1((uint8_t)read_DE()); //Lqt [i];
	}
	// Pq, Tq
	SEND1(0x01);

	// Cqt table
	for (i=0; i<64; i++){
		SEND1((uint8_t)read_DE()); //Cqt [i];
	}

	// huffman table(DHT)
	for (i=0; i<210; i++){
		SEND1((uint8_t) (markerdata [i] >> 8));
		SEND1((uint8_t) markerdata [i]);
	}

	//if (image_format == FOUR_ZERO_ZERO)
	//	number_of_components = 1;
	//else
	number_of_components = 3;

	// Frame header(SOF)

	// Start of frame marker
	SEND1(0xFF);
	SEND1(0xC0);

	header_length = (uint16_t) (8 + 3 * number_of_components);

	// Frame header length
	SEND1((uint8_t) (header_length >> 8));
	SEND1((uint8_t) header_length);

	// Precision (P)
	SEND1(0x08);

	// image height
	SEND1((uint8_t) (image_height >> 8));
	SEND1((uint8_t) image_height);

	// image width
	SEND1((uint8_t) (image_width >> 8));
	SEND1((uint8_t) image_width);

	// Nf
	SEND1(number_of_components);

	//if (image_format == FOUR_ZERO_ZERO)
	//{
	//	*output_ptr++ = 0x01;
	//	*output_ptr++ = 0x11;
	//	*output_ptr++ = 0x00;
	//}
	//else
	//{
	SEND1(0x01);

	//if (image_format == FOUR_TWO_ZERO)
	//	*output_ptr++ = 0x22;
	//else if (image_format == FOUR_TWO_TWO)
	//	*output_ptr++ = 0x21;
	//else
	SEND1(0x11);

	SEND1(0x00);

	SEND1(0x02);
	SEND1(0x11);
	SEND1(0x01);

	SEND1(0x03);
	SEND1(0x11);
	SEND1(0x01);
	//}

	// Scan header(SOF)

	// Start of scan marker
	SEND1(0xFF);
	SEND1(0xDA);

	header_length = (uint16_t) (6 + (number_of_components << 1));

	// Scan header length
	SEND1((uint8_t) (header_length >> 8));
	SEND1((uint8_t) header_length);

	// Ns
	SEND1(number_of_components);

	//if (image_format == FOUR_ZERO_ZERO)
	//{
	//	*output_ptr++ = 0x01;
	//	*output_ptr++ = 0x00;
	//}
	//else
	//{
	SEND1(0x01);
	SEND1(0x00);

	SEND1(0x02);
	SEND1(0x11);

	SEND1(0x03);
	SEND1(0x11);
	//}

	SEND1(0x00);
	SEND1(0x3F);
	SEND1(0x00);

}

void huffman(uint16_t component){

	uint16_t i;
	uint16_t *DcCodeTable, *DcSizeTable, *AcCodeTable, *AcSizeTable;

	//static int16_tldc1 = 0, ldc2 = 0, ldc3 = 0;

	int16_t *Temp_Ptr, Coeff, LastDc;
	uint16_t AbsCoeff, HuffCode, HuffSize, RunLength=0, DataSize=0, index;

	int16_t bits_in_next_word;
	uint16_t numbits;
	uint32_t data;

	uint8_t out;

	//Temp_Ptr = Temp;
	//Coeff = *Temp_Ptr++;

	Coeff = (int16_t)read_DE();
	//printf("Coeff: %d\n", Coeff);

	if (component == 1){
		DcCodeTable = luminance_dc_code_table;
		DcSizeTable = luminance_dc_size_table;
		AcCodeTable = luminance_ac_code_table;
		AcSizeTable = luminance_ac_size_table;

		LastDc = ldc1;
		ldc1 = Coeff;

	} else {
		DcCodeTable = chrominance_dc_code_table;
		DcSizeTable = chrominance_dc_size_table;
		AcCodeTable = chrominance_ac_code_table;
		AcSizeTable = chrominance_ac_size_table;

		if (component == 2)	{
			LastDc = ldc2;
			ldc2 = Coeff;

		}else {
			LastDc = ldc3;
			ldc3 = Coeff;
		}
	}

	Coeff -= LastDc;

	AbsCoeff = (Coeff < 0) ? -Coeff-- : Coeff;

	while (AbsCoeff != 0){
		AbsCoeff >>= 1;
		DataSize++;
	}

	HuffCode = DcCodeTable [DataSize];
	HuffSize = DcSizeTable [DataSize];

	Coeff &= (1 << DataSize) - 1;
	data = (HuffCode << DataSize) | Coeff;
	numbits = HuffSize + DataSize;

	PUTBITS

	for (i=63; i>0; i--){//xt_iss_profile_disable();
		//if ((Coeff = *Temp_Ptr++) != 0)

		if ((Coeff = (int16_t)read_DE()) != 0){//xt_iss_profile_enable();
			while (RunLength > 15)	{
				RunLength -= 16;
				data = AcCodeTable [161];
				numbits = AcSizeTable [161];
				PUTBITS
			}

			AbsCoeff = (Coeff < 0) ? -Coeff-- : Coeff;

			if (AbsCoeff >> 8 == 0){
				DataSize = bitsize [AbsCoeff];
			} else{
				DataSize = bitsize [AbsCoeff >> 8] + 8;
			}

			index = RunLength * 10 + DataSize;
			HuffCode = AcCodeTable [index];
			HuffSize = AcSizeTable [index];

			Coeff &= (1 << DataSize) - 1;
			data = (HuffCode << DataSize) | Coeff;
			numbits = HuffSize + DataSize;

			PUTBITS
			RunLength = 0;

		}else{
			RunLength++;
		}
	}

	if (RunLength != 0){
		data = AcCodeTable [0];
		numbits = AcSizeTable [0];
		PUTBITS
	}

}

/* For bit Stuffing and EOI marker */
void close_bitstream (void){
	uint16_t i, count;
	uint8_t *ptr;

	uint8_t out;

	if (bitindex > 0){
		lcode <<= (32 - bitindex);
		count = (bitindex + 7) >> 3;

		ptr = (uint8_t *) &lcode + 3;

		for (i=count; i>0; i--){
			out = *ptr--;
			SEND1(out);
			if (out == 0xff)
			SEND1(0);
		}
	}

	// End of image marker
	SEND1(0xFF);
	SEND1(0xD9);

}
