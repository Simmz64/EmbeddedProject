/*
ATmega8, 48, 88, 168, 328

/Reset PC6|1   28|PC5
 RxD   PD0|2   27|PC4
 TxD   PD1|3   26|PC3       
       PD2|4   25|PC2       
       PD3|5   24|PC1       
       PD4|6   23|PC0
       Vcc|7   22|Gnd
       Gnd|8   21|Aref
       PB6|9   20|AVcc
       PB7|10  19|PB5 SCK   
       PD5|11  18|PB4 MISO  
       PD6|12  17|PB3 MOSI  
 RST   PD7|13  16|PB2       DC
       PB0|14  15|PB1       CS
*/

#define  F_CPU 8000000UL
#include <avr/io.h>
#include <util/delay.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <avr/interrupt.h>

#define XMAX 320
#define YMAX 240

/***** Function prototypes ******/
void init(void);
unsigned char spi_transceive(unsigned char data);
void cs_high(void);
void cs_low(void);
void dc_high(void);
void dc_low(void);
void rst_high(void);
void rst_low(void);
void wr_cmd(unsigned char cmd);
void tft_reset(void);
void pixel(uint16_t x, uint16_t y, uint16_t color);
void blinkLED(void);
/********************************/

// Flash LED
void blinkLED(void) {
	PORTB |= 0b00000001;
	_delay_ms(250);
	PORTB &= 0b11111110;
	_delay_ms(250);
}


void init(void) {

	// Set MOSI, SCK, PB1, PB2 as output
	DDRB = (1<<PB5)|(1<<PB3) | (1<<PB1)|(1<<PB2)|(1<<PB0);
	DDRD = (1<<PD7);
	// Initialize SPI command register
	SPCR = (0<<SPIE)|(1<<SPE)|(1<<MSTR)|(1<<CPHA)|(1<<CPOL)|(0<<SPR1)|(0<<SPR0);
	SPSR = (0<<SPI2X);

	// Enable global interrupts
	sei();

}

unsigned char spi_transceive (unsigned char data) {
	// Put data in data register
	SPDR = data;

	// Wait until transmission is complete
	while(!(SPSR & (1<<SPIF)));

	// Return received data
	return(SPDR);
}

void cs_high(void) {
	PORTB |= (1<<PB1);
}

void cs_low(void) {
	PORTB &= (0xFF ^ (1<<PB1));
}

void dc_high(void) {
	PORTB |= (1<<PB2);
}

void dc_low(void) {
	PORTB &= (0xFF ^ (1<<PB2));
}

void rst_high(void) {
	PORTD |= (1<<PD7);
}

void rst_low(void) {
	PORTD &= (0xFF ^ (1<<PD7));
}

void wr_cmd(unsigned char cmd) {
	cs_low();
	dc_low();
	spi_transceive(cmd); //spi_transceive(cmd)
	dc_low();
}


void tft_reset(void) {

	cs_high();
	dc_high();
    rst_low();                        // display reset

    _delay_ms(1);
    rst_high();                       // end hardware reset
    _delay_ms(5);
     
    wr_cmd(0x01);                     // SW reset  
    _delay_ms(5);
    wr_cmd(0x28);                     // display off  
	
    /* Start Initial Sequence ----------------------------------------------------*/
     wr_cmd(0xCF);                     
     spi_transceive(0x00);
     spi_transceive(0x83);
     spi_transceive(0x30);
     cs_high();
     
     wr_cmd(0xED);                     
     spi_transceive(0x64);
     spi_transceive(0x03);
     spi_transceive(0x12);
     spi_transceive(0x81);
     cs_high();
     
     wr_cmd(0xE8);                     
     spi_transceive(0x85);
     spi_transceive(0x01);
     spi_transceive(0x79);
     cs_high();
     
     wr_cmd(0xCB);                     
     spi_transceive(0x39);
     spi_transceive(0x2C);
     spi_transceive(0x00);
     spi_transceive(0x34);
     spi_transceive(0x02);
     cs_high();
           
     wr_cmd(0xF7);                     
     spi_transceive(0x20);
     cs_high();
           
     wr_cmd(0xEA);                     
     spi_transceive(0x00);
     spi_transceive(0x00);
     cs_high();
     
     wr_cmd(0xC0);                     // POWER_CONTROL_1
     spi_transceive(0x26);
     cs_high();
 
     wr_cmd(0xC1);                     // POWER_CONTROL_2
     spi_transceive(0x11);
     cs_high();
     
     wr_cmd(0xC5);                     // VCOM_CONTROL_1
     spi_transceive(0x35);
     spi_transceive(0x3E);
     cs_high();
     
     wr_cmd(0xC7);                     // VCOM_CONTROL_2
     spi_transceive(0xBE);
     cs_high(); 
     
     wr_cmd(0x36);                     // MEMORY_ACCESS_CONTROL
     spi_transceive(0x28);			   // Default: 0x48
     cs_high(); 
     
     wr_cmd(0x3A);                     // COLMOD_PIXEL_FORMAT_SET
     spi_transceive(0x55);                 // 16 bit pixel 
     cs_high();
     
     wr_cmd(0xB1);                     // Frame Rate
     spi_transceive(0x00);
     spi_transceive(0x1B);               
     cs_high();
     
     wr_cmd(0xF2);                     // Gamma Function Disable
     spi_transceive(0x08);
     cs_high(); 
     
     wr_cmd(0x26);                     
     spi_transceive(0x01);                 // gamma set for curve 01/2/04/08
     cs_high(); 
     
     wr_cmd(0xE0);                     // positive gamma correction
     spi_transceive(0x1F); 
     spi_transceive(0x1A); 
     spi_transceive(0x18); 
     spi_transceive(0x0A); 
     spi_transceive(0x0F); 
     spi_transceive(0x06); 
     spi_transceive(0x45); 
     spi_transceive(0x87); 
     spi_transceive(0x32); 
     spi_transceive(0x0A); 
     spi_transceive(0x07); 
     spi_transceive(0x02); 
     spi_transceive(0x07);
     spi_transceive(0x05); 
     spi_transceive(0x00);
     cs_high();
     
     wr_cmd(0xE1);                     // negativ gamma correction
     spi_transceive(0x00); 
     spi_transceive(0x25); 
     spi_transceive(0x27); 
     spi_transceive(0x05); 
     spi_transceive(0x10); 
     spi_transceive(0x09); 
     spi_transceive(0x3A); 
     spi_transceive(0x78); 
     spi_transceive(0x4D); 
     spi_transceive(0x05); 
     spi_transceive(0x18); 
     spi_transceive(0x0D); 
     spi_transceive(0x38);
     spi_transceive(0x3A); 
     spi_transceive(0x1F);
     cs_high();
     
     //WindowMax () : window (0, 0, width(), height())
	 // This following code mimicks what window(...) does, but less modularly
	 // Should probably be moved to a function with inputs x, y, width, height.
	 wr_cmd(0x2A);
	 spi_transceive(0>>8);
	 spi_transceive(0);
	 spi_transceive((XMAX-1) >> 8);
	 spi_transceive((uint8_t)(XMAX-1));
	 cs_high();
	 
	 wr_cmd(0x2B);
	 spi_transceive(0 >> 8);
	 spi_transceive(0);
	 spi_transceive((YMAX-1) >> 8);
	 spi_transceive((YMAX-1));
	 cs_high();
	 
	 
     
     wr_cmd(0x34);                     // tearing effect off
     cs_high();
     
     //wr_cmd(0x35);                     // tearing effect on
     //cs_high();
      
     wr_cmd(0xB7);                       // entry mode
     spi_transceive(0x07);
     cs_high();
     
     wr_cmd(0xB6);                       // display function control
     spi_transceive(0x0A);
     spi_transceive(0x82);
     spi_transceive(0x27);
     spi_transceive(0x00);
     cs_high();
     
     wr_cmd(0x11);                     // sleep out
     cs_high();

     _delay_ms(100);
     
     wr_cmd(0x29);                     // display on
     cs_high();
     
     _delay_ms(100);
     
}

void pixel(uint16_t x, uint16_t y, uint16_t color) {
	wr_cmd(0x2A);
    spi_transceive(x >> 8);
    spi_transceive(x);
    cs_high();
	
    wr_cmd(0x2B);
    spi_transceive(y >> 8);
    spi_transceive(y);
    cs_high();
    
	wr_cmd(0x2C);  // send pixel
    spi_transceive(color >> 8);
    spi_transceive(color & 0xFF);
    cs_high();
}

int main(void) {

	init();
	tft_reset();
	uint16_t xc;
	uint16_t yc;

	for(xc = 0; xc < XMAX; xc++) {
		for(yc = 0; yc < YMAX; yc++) {
			pixel(xc, yc, 0xF000);
		}
	}
	while(1) {
		blinkLED();
	}
	// Some loop changing some pixels?
	
}