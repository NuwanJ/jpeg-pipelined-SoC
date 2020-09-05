
#ifndef IOMAP_H_
#define IOMAP_H_

#define LED_BASE 0x08011100
#define OFFSET 0x00000000

void delay(int ms);
void ledUpdate(uint8_t digit, uint8_t status);
void ledBlink(uint8_t id);


#endif
