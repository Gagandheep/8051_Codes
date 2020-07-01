#include <reg51.h>

unsigned char str[] = "MCS - 8051";
unsigned char i = 0;
sfr ldata = 0x90;
sbit rs = P2^0;
sbit rw = P2^1;
sbit en = P2^2;
sbit busy = P1^7;

void delayms() {
	unsigned int j;
	for(j = 0; j < 1; j++);
}

void lcd_ready() {
	busy  = 1;
	rs = 0;
	rw = 1;
	
	while (busy) {
		en = 0;
		delayms();
		en = 1;
	}
}

void lcd_data(unsigned char dat) {
	lcd_ready();
	P0 = dat;
	rs = 1;
	rw = 0;
	en = 1;
	delayms();
	en = 0;
}

void lcd_cmd(unsigned char cmd) {
	lcd_ready();
	P0 = cmd;
	rs = 0;
	rw = 0;
	en = 1;
	delayms();
	en = 0;
}

void serial() interrupt 4 {
	if (TI) {
		TI = 0;
	}
}

void main() {
	TMOD = 0x20;
	TH1 = 0xFD;
	SCON = 0x00;
	IE = 0x90;
	TR1 = 1;
	
	lcd_cmd(0x38);
	lcd_cmd(0x0E);
	lcd_cmd(0x01);
	lcd_cmd(0x06);
	lcd_cmd(0x86);

	for (i = 0; i < 10; i++) {
		SBUF = str[i];
	}
	REN = 1;
	IE = 0x00;
	
	while (1) {
		while(!RI);
		P2 = SBUF;
		i = SBUF;
		lcd_data(i);
		RI = 0;
	}
}




