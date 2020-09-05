
#include <stdio.h>
#include <stdint.h>
#include <io.h>
#include <unistd.h>

#include "./utility.h"
#include "./IOMap.h"


void delay(int ms){
	usleep(ms*1000);
}

void ledUpdate(uint8_t digit, uint8_t status){
	uint8_t value =  (uint8_t)IORD_32DIRECT(LED_BASE, OFFSET);

	if(status==1){
		value = value | (1<<digit);
	}else{
		value = value & (~(1<<digit));
	}
	IOWR_8DIRECT(LED_BASE,OFFSET,value);
}

void ledBlink(uint8_t id){
	ledUpdate(id,1);
	delay(200);
	ledUpdate(id,0);
	delay(50);
}
