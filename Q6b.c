#include<reg51.h>

unsigned char dat[] = "MICROCONTROLLERS";
unsigned char i = 0;

void serial() interrupt 4 {
	
	if (TI == 1) {
		TI = 0;
	}
	else {
		P0 = SBUF;
		RI = 0;
	}
}

void main(void) {
	TMOD = 0x20;
	TH1 = 0xFD;
	SCON = 0x10;
	IE = 0x90;
	
	while(1) {
		for (i = 0; i < 16; i++) {
			SBUF = dat[i];
		}
	}
}