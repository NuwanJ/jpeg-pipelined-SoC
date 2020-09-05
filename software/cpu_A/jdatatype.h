#ifndef JDATATYPE_H
#define JDATATYPE_H

#include <stdint.h>

typedef struct JPEG_ENCODER_STRUCTURE
{
	uint16_t	mcu_width;
	uint16_t	mcu_height;
	uint16_t	horizontal_mcus;
	uint16_t	vertical_mcus;
	uint16_t	cols_in_right_mcus;
	uint16_t	rows_in_bottom_mcus;

	uint16_t	rows;
	uint16_t	cols;

	uint16_t	length_minus_mcu_width;
	uint16_t	length_minus_width;
	uint16_t	incr;
	uint16_t	mcu_width_size;
	uint16_t	offset;

	int16_t ldc1;
	int16_t ldc2;
	int16_t ldc3;

} JPEG_ENCODER_STRUCTURE;

#endif
