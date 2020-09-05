#ifndef PROTOTYPE_H
#define PROTOTYPE_H

#include <stdint.h>

void initialization (JPEG_ENCODER_STRUCTURE *, uint32_t, uint32_t, uint32_t);

uint16_t DSP_Division (uint32_t, uint32_t);
void initialize_quantization_tables (uint32_t);

uint8_t* write_markers (uint8_t *, uint32_t, uint32_t, uint32_t);

uint8_t* encode_image (uint8_t *,uint8_t *, uint32_t, uint32_t, uint32_t, uint32_t);

void read_400_format (JPEG_ENCODER_STRUCTURE *, uint8_t *);
void read_420_format (JPEG_ENCODER_STRUCTURE *, uint8_t *);
void read_422_format (JPEG_ENCODER_STRUCTURE *, uint8_t *);
void read_444_format (JPEG_ENCODER_STRUCTURE *, uint8_t *);
void RGB_2_444 (uint8_t *, uint8_t *, uint32_t, uint32_t);

uint8_t* encodeMCU (JPEG_ENCODER_STRUCTURE *, uint32_t, uint8_t *);

void levelshift (int16_t *);
void DCT (int16_t *);
void quantization (int16_t *, uint16_t *);
uint8_t* huffman (JPEG_ENCODER_STRUCTURE *, uint16_t, uint8_t *);

uint8_t* close_bitstream (uint8_t *);
void* jemalloc(size_t);
//void* jefree(void);
#endif
