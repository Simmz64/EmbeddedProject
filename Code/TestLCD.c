/*
ATmega8, 48, 88, 168, 328

/Reset   PC6|1   28|PC5
RxD      PD0|2   27|PC4
TxD      PD1|3   26|PC3       Y-
         PD2|4   25|PC2       X-
         PD3|5   24|PC1       Y+
         PD4|6   23|PC0       X+
         Vcc|7   22|Gnd
         Gnd|8   21|Aref
         PB6|9   20|AVcc
         PB7|10  19|PB5       SCK
         PD5|11  18|PB4       MISO
         PD6|12  17|PB3       MOSI
   RST   PD7|13  16|PB2       DC
         PB0|14  15|PB1       CS
*/

#define  F_CPU 12000000UL
#include <avr/io.h>
#include <util/delay.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <avr/interrupt.h>

#define XMAX 320
#define YMAX 240
#define FONT_SX 8
#define FONT_SY 8

#define rxplate 180

#define NUMSAMPLES 2

//#define rxplate

// X+ - PC0
// Y+ - PC1
// X- - PC2
// Y- - PC3

#define XP PC0
#define YP PC1
#define XM PC2
#define YM PC3

/***** Function prototypes ******/
//void init(void);
//unsigned char spi_transceive(unsigned char data);
//void cs_high(void);
//void cs_low(void);
//void dc_high(void);
//void dc_low(void);
//void rst_high(void);
//void rst_low(void);
//void wr_cmd(unsigned char cmd);
//void tft_reset(void);
//void pixel(uint16_t x, uint16_t y, uint16_t color);
//void blinkLED(void);
//void window(uint16_t x, uint16_t y, uint16_t w, uint16_t h);
//void windowMax(void);
//void drawHLine(uint16_t x0, uint16_t x1, uint16_t y, uint16_t color);
//void drawVLine(uint16_t x, uint16_t y0, uint16_t y1, uint16_t color);
//void drawRect(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1, uint16_t color);
//void fillRect(uint16_t x, uint16_t y, uint16_t w, uint16_t h, uint16_t color);
//void cls(uint16_t color);
//void testPutChar(uint16_t color);
//void helpChar(uint8_t in, uint16_t color);
//void putChar(uint16_t x, uint16_t y, uint8_t ch, uint16_t color);
//void drawCross(uint16_t x, uint16_t y, uint16_t color);
//uint16_t readX(void);
//uint16_t readY(void);
//uint16_t readZ(void);
//void printNum(uint16_t x, uint16_t y, uint16_t num, uint16_t color);
//void drawTestUI(void);
//uint8_t isInXSpan(uint16_t xp, uint16_t xspan, uint16_t wspan);
//uint8_t isInYSpan(uint16_t yp, uint16_t yspan, uint16_t hspan);
//uint8_t isInBox(uint16_t xp, uint16_t yp, uint16_t xbox, uint16_t ybox, uint16_t wbox, uint16_t hbox);
//void checkBoxBounds(void);
//void printToBox(uint16_t xbox, uint16_t ybox, uint16_t num);
//void printToBoxes(void);
void xBufPut(uint16_t xp);
void yBufPut(uint16_t yp);
//void testTouch(void);
/********************************/

const uint16_t cross[15] = {0x4001, 0x2002, 0x1004, 0x808, 0x410, 0x220, 0x140, 0x80, 0x140, 0x220, 0x410, 0x808, 0x1004, 0x2002, 0x4001};

const uint8_t FONT8x8[97][8] = {
	{0x08,0x08,0x08,0x00,0x00,0x00,0x00,0x00}, // columns, rows, num_bytes_per_char
	{0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00}, // space 0x20
	{0x30,0x78,0x78,0x30,0x30,0x00,0x30,0x00}, // !
	{0x6C,0x6C,0x6C,0x00,0x00,0x00,0x00,0x00}, // "
	{0x6C,0x6C,0xFE,0x6C,0xFE,0x6C,0x6C,0x00}, // #
	{0x18,0x3E,0x60,0x3C,0x06,0x7C,0x18,0x00}, // $
	{0x00,0x63,0x66,0x0C,0x18,0x33,0x63,0x00}, // %
	{0x1C,0x36,0x1C,0x3B,0x6E,0x66,0x3B,0x00}, // &
	{0x30,0x30,0x60,0x00,0x00,0x00,0x00,0x00}, // '
	{0x0C,0x18,0x30,0x30,0x30,0x18,0x0C,0x00}, // (
	{0x30,0x18,0x0C,0x0C,0x0C,0x18,0x30,0x00}, // )
	{0x00,0x66,0x3C,0xFF,0x3C,0x66,0x00,0x00}, // *
	{0x00,0x30,0x30,0xFC,0x30,0x30,0x00,0x00}, // +
	{0x00,0x00,0x00,0x00,0x00,0x18,0x18,0x30}, // ,
	{0x00,0x00,0x00,0x7E,0x00,0x00,0x00,0x00}, // -
	{0x00,0x00,0x00,0x00,0x00,0x18,0x18,0x00}, // .
	{0x03,0x06,0x0C,0x18,0x30,0x60,0x40,0x00}, // / (forward slash)
	{0x3E,0x63,0x63,0x6B,0x63,0x63,0x3E,0x00}, // 0 0x30
	{0x18,0x38,0x58,0x18,0x18,0x18,0x7E,0x00}, // 1
	{0x3C,0x66,0x06,0x1C,0x30,0x66,0x7E,0x00}, // 2
	{0x3C,0x66,0x06,0x1C,0x06,0x66,0x3C,0x00}, // 3
	{0x0E,0x1E,0x36,0x66,0x7F,0x06,0x0F,0x00}, // 4
	{0x7E,0x60,0x7C,0x06,0x06,0x66,0x3C,0x00}, // 5
	{0x1C,0x30,0x60,0x7C,0x66,0x66,0x3C,0x00}, // 6
	{0x7E,0x66,0x06,0x0C,0x18,0x18,0x18,0x00}, // 7
	{0x3C,0x66,0x66,0x3C,0x66,0x66,0x3C,0x00}, // 8
	{0x3C,0x66,0x66,0x3E,0x06,0x0C,0x38,0x00}, // 9
	{0x00,0x18,0x18,0x00,0x00,0x18,0x18,0x00}, // :
	{0x00,0x18,0x18,0x00,0x00,0x18,0x18,0x30}, // ;
	{0x0C,0x18,0x30,0x60,0x30,0x18,0x0C,0x00}, // <
	{0x00,0x00,0x7E,0x00,0x00,0x7E,0x00,0x00}, // =
	{0x30,0x18,0x0C,0x06,0x0C,0x18,0x30,0x00}, // >
	{0x3C,0x66,0x06,0x0C,0x18,0x00,0x18,0x00}, // ?
	{0x3E,0x63,0x6F,0x69,0x6F,0x60,0x3E,0x00}, // @ 0x40
	{0x18,0x3C,0x66,0x66,0x7E,0x66,0x66,0x00}, // A
	{0x7E,0x33,0x33,0x3E,0x33,0x33,0x7E,0x00}, // B
	{0x1E,0x33,0x60,0x60,0x60,0x33,0x1E,0x00}, // C
	{0x7C,0x36,0x33,0x33,0x33,0x36,0x7C,0x00}, // D
	{0x7F,0x31,0x34,0x3C,0x34,0x31,0x7F,0x00}, // E
	{0x7F,0x31,0x34,0x3C,0x34,0x30,0x78,0x00}, // F
	{0x1E,0x33,0x60,0x60,0x67,0x33,0x1F,0x00}, // G
	{0x66,0x66,0x66,0x7E,0x66,0x66,0x66,0x00}, // H
	{0x3C,0x18,0x18,0x18,0x18,0x18,0x3C,0x00}, // I
	{0x0F,0x06,0x06,0x06,0x66,0x66,0x3C,0x00}, // J
	{0x73,0x33,0x36,0x3C,0x36,0x33,0x73,0x00}, // K
	{0x78,0x30,0x30,0x30,0x31,0x33,0x7F,0x00}, // L
	{0x63,0x77,0x7F,0x7F,0x6B,0x63,0x63,0x00}, // M
	{0x63,0x73,0x7B,0x6F,0x67,0x63,0x63,0x00}, // N
	{0x3E,0x63,0x63,0x63,0x63,0x63,0x3E,0x00}, // O
	{0x7E,0x33,0x33,0x3E,0x30,0x30,0x78,0x00}, // P 0x50
	{0x3C,0x66,0x66,0x66,0x6E,0x3C,0x0E,0x00}, // Q
	{0x7E,0x33,0x33,0x3E,0x36,0x33,0x73,0x00}, // R
	{0x3C,0x66,0x30,0x18,0x0C,0x66,0x3C,0x00}, // S
	{0x7E,0x5A,0x18,0x18,0x18,0x18,0x3C,0x00}, // T
	{0x66,0x66,0x66,0x66,0x66,0x66,0x7E,0x00}, // U
	{0x66,0x66,0x66,0x66,0x66,0x3C,0x18,0x00}, // V
	{0x63,0x63,0x63,0x6B,0x7F,0x77,0x63,0x00}, // W
	{0x63,0x63,0x36,0x1C,0x1C,0x36,0x63,0x00}, // X
	{0x66,0x66,0x66,0x3C,0x18,0x18,0x3C,0x00}, // Y
	{0x7F,0x63,0x46,0x0C,0x19,0x33,0x7F,0x00}, // Z
	{0x3C,0x30,0x30,0x30,0x30,0x30,0x3C,0x00}, // [
	{0x60,0x30,0x18,0x0C,0x06,0x03,0x01,0x00}, // \ (back slash)
	{0x3C,0x0C,0x0C,0x0C,0x0C,0x0C,0x3C,0x00}, // ]
	{0x08,0x1C,0x36,0x63,0x00,0x00,0x00,0x00}, // ^
	{0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF}, // _
	{0x18,0x18,0x0C,0x00,0x00,0x00,0x00,0x00}, // ` 0x60
	{0x00,0x00,0x3C,0x06,0x3E,0x66,0x3B,0x00}, // a
	{0x70,0x30,0x3E,0x33,0x33,0x33,0x6E,0x00}, // b
	{0x00,0x00,0x3C,0x66,0x60,0x66,0x3C,0x00}, // c
	{0x0E,0x06,0x3E,0x66,0x66,0x66,0x3B,0x00}, // d
	{0x00,0x00,0x3C,0x66,0x7E,0x60,0x3C,0x00}, // e
	{0x1C,0x36,0x30,0x78,0x30,0x30,0x78,0x00}, // f
	{0x00,0x00,0x3B,0x66,0x66,0x3E,0x06,0x7C}, // g
	{0x70,0x30,0x36,0x3B,0x33,0x33,0x73,0x00}, // h
	{0x18,0x00,0x38,0x18,0x18,0x18,0x3C,0x00}, // i
	{0x06,0x00,0x06,0x06,0x06,0x66,0x66,0x3C}, // j
	{0x70,0x30,0x33,0x36,0x3C,0x36,0x73,0x00}, // k
	{0x38,0x18,0x18,0x18,0x18,0x18,0x3C,0x00}, // l
	{0x00,0x00,0x66,0x7F,0x7F,0x6B,0x63,0x00}, // m
	{0x00,0x00,0x7C,0x66,0x66,0x66,0x66,0x00}, // n
	{0x00,0x00,0x3C,0x66,0x66,0x66,0x3C,0x00}, // o
	{0x00,0x00,0x6E,0x33,0x33,0x3E,0x30,0x78}, // p
	{0x00,0x00,0x3B,0x66,0x66,0x3E,0x06,0x0F}, // q
	{0x00,0x00,0x6E,0x3B,0x33,0x30,0x78,0x00}, // r
	{0x00,0x00,0x3E,0x60,0x3C,0x06,0x7C,0x00}, // s
	{0x08,0x18,0x3E,0x18,0x18,0x1A,0x0C,0x00}, // t
	{0x00,0x00,0x66,0x66,0x66,0x66,0x3B,0x00}, // u
	{0x00,0x00,0x66,0x66,0x66,0x3C,0x18,0x00}, // v
	{0x00,0x00,0x63,0x6B,0x7F,0x7F,0x36,0x00}, // w
	{0x00,0x00,0x63,0x36,0x1C,0x36,0x63,0x00}, // x
	{0x00,0x00,0x66,0x66,0x66,0x3E,0x06,0x7C}, // y
	{0x00,0x00,0x7E,0x4C,0x18,0x32,0x7E,0x00}, // z
	{0x0E,0x18,0x18,0x70,0x18,0x18,0x0E,0x00}, // {
	{0x0C,0x0C,0x0C,0x00,0x0C,0x0C,0x0C,0x00}, // |
	{0x70,0x18,0x18,0x0E,0x18,0x18,0x70,0x00}, // }
	{0x3B,0x6E,0x00,0x00,0x00,0x00,0x00,0x00}, // ~
	{0x1C,0x36,0x36,0x1C,0x00,0x00,0x00,0x00}
}; // DEL



volatile uint16_t boxCount[8] = {0, 0, 0, 0, 0, 0, 0, 0};
volatile uint16_t xbuf[5] = {0, 0, 0, 0, 0};
volatile uint16_t ybuf[5] = {0, 0, 0, 0, 0};
volatile uint16_t xptr = 0, yptr = 0;



// Flash LED
void blinkLED(void) {
	PORTB |= 0b00000001;
	_delay_ms(100);
	PORTB &= 0b11111110;
	_delay_ms(100);
}


void init(void) {

	// Set MOSI, SCK, PB1, PB2 as output
	DDRB = (1<<PB5)|(1<<PB3) | (1<<PB1)|(1<<PB2)|(1<<PB0);
	DDRD = (1<<PD7);
	// Initialize SPI command register
	SPCR = (0<<SPIE)|(1<<SPE)|(1<<MSTR)|(1<<CPHA)|(1<<CPOL)|(0<<SPR1)|(0<<SPR0);
	SPSR = (1<<SPI2X);

	// Initialize ADC
	ADCSRA = (1 << ADEN)|(0 << ADPS2)|(1 << ADPS1)|(1 << ADPS0);
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
	dc_high();
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
	
	/*
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
	*/

	windowMax();
	
	
	
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

void window(uint16_t x, uint16_t y, uint16_t w, uint16_t h) {
	wr_cmd(0x2A);
	spi_transceive(x >> 8);
	spi_transceive(x);
	spi_transceive((x+w-1) >> 8);
	spi_transceive(x+w-1);
	cs_high();

	wr_cmd(0x2B);
	spi_transceive(y >> 8);
	spi_transceive(y);
	spi_transceive((y+h-1) >> 8);
	spi_transceive(y+h-1);
	cs_high();
}

void windowMax(void) {
	window(0, 0, XMAX-1, YMAX-1);
}

void drawHLine(uint16_t x0, uint16_t x1, uint16_t y, uint16_t color) {
	uint16_t w;
	w = x1 - x0 + 1;
	uint16_t j;
	window(x0, y, w, 1);
	wr_cmd(0x2C);
	for (j=0; j<w; j++) {
		spi_transceive(color >> 8);
		spi_transceive(color & 0xFF);
	}
	cs_high();

	windowMax();
}

void drawVLine(uint16_t x, uint16_t y0, uint16_t y1, uint16_t color) {
	uint16_t h;
	h = y1 - y0 + 1;
	uint16_t j;
	window(x, y0, 1, h);
	wr_cmd(0x2C);
	for (j = 0; j < h; j++) {
		spi_transceive(color >> 8);
		spi_transceive(color & 0xFF);
	}
	cs_high();

	windowMax();
}

void drawRect(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1, uint16_t color) {
	if (x1 > x0) drawHLine(x0,x1,y0,color);
	else  drawHLine(x1,x0,y0,color);

	if (y1 > y0) drawVLine(x0,y0,y1,color);
	else drawVLine(x0,y1,y0,color);

	if (x1 > x0) drawHLine(x0,x1,y1,color);
	else  drawHLine(x1,x0,y1,color);

	if (y1 > y0) drawVLine(x1,y0,y1,color);
	else drawVLine(x1,y1,y0,color);
}


void fillRect(uint16_t x, uint16_t y, uint16_t w, uint16_t h, uint16_t color) {
	uint16_t j;
	window(x, y, w, h);
	wr_cmd(0x2C);
	for(j = 0; j < w*h; j++) {
		spi_transceive(color >> 8);
		spi_transceive(color & 0xFF);
	}
	cs_high();

	windowMax();
}

void cls(uint16_t color) {
	// Divide screen into 8 strips, 320 wide by 30 high
	// Use a fillRect for each strip

	uint8_t j;

	for(j = 0; j < 8; j++) {

		fillRect(0, j*30, XMAX-1, 30, color);

	}

}

void testPutChar(uint16_t color) {
	window(40, 40, 8, 8);
	wr_cmd(0x2C);
	helpChar(0x18, color);
	helpChar(0x3C, color);
	helpChar(0x66, color);
	helpChar(0x66, color);
	helpChar(0x7E, color);
	helpChar(0x66, color);
	helpChar(0x66, color);
	helpChar(0x00, color);
	cs_high();
	windowMax();
}

void helpChar(uint8_t in, uint16_t color) {
	uint8_t j;
	for(j = FONT_SX; j > 0; j--) {
		if((in >> (j-1)) & 0x01) {
			spi_transceive(color >> 8);
			spi_transceive(color & 0xFF);
			} else {
			spi_transceive(0xFF);
			spi_transceive(0xFF);
		}
	}
}

void putChar(uint16_t x, uint16_t y, uint8_t ch, uint16_t color) {
	window(x, y, FONT_SX, FONT_SX); // Font is 8x8
	uint8_t ind = ch - 31; // Convert char to corresponding index in font
	uint8_t j;
	wr_cmd(0x2C);
	for(j = 0; j < FONT_SY; j++) {
		helpChar(FONT8x8[ind][j], color);
	}
	cs_high();
	windowMax();
}

void drawCross(uint16_t x, uint16_t y, uint16_t color) {
	// Draws a 15x15 cross with the center at the provided x, y coordinates
	/*
	window(x-7, y-7, 15, 15);
	uint16_t j,i;

	wr_cmd(0x2C);
	
	for(i = 0; i < 15; i++) {
        for(j = 15; j > 0; j--) {
	        if((cross[i] >> (j-1)) & 0x01) {
				spi_transceive(color >> 8);
				spi_transceive(color & 0xFF);
				} else {
				spi_transceive(0xFF);
				spi_transceive(0xFF);
			}
		}
	}

	cs_high();
	windowMax();
	*/

	drawVLine(x, y-7, y+7, color);
	drawHLine(x-7, x+7, y, color);
	
}

// TODO readX, readY, initialize ports on MCU, poll?

uint16_t readX(void) {
	uint32_t xs;
	uint16_t samples[NUMSAMPLES];
	uint8_t i;

	DDRC = (0 << XP)|(1 << YP)|(0 << XM)|(1 << YM);
	PORTC &= ~(1 << XP);
	PORTC &= ~(1 << XM);

	PORTC |= (1 << YP);
	PORTC &= ~(1 << YM);

	ADMUX = (0 << REFS1)|(0 << REFS0)|(0 << ADLAR)|(0 << MUX1)|(0 << MUX0);

	_delay_us(20);


	for(i = 0; i < NUMSAMPLES; i++) {
		ADCSRA |= (1 << ADSC);
		while(ADCSRA & (1 << ADSC));
		samples[i] = ADC;
	}

	int16_t diff = samples[1] - samples[0];

	if(diff < 8 && diff > -8) {
		xs = (samples[0] + samples[1]) >> 1; // Average 2 samples
		xs += 1195;
		xs *= 323;
		xs /= 820;

		return (uint16_t) xs;
	} else {
		return 0;
	}

	

}

uint16_t readY(void) {
	uint32_t ys;
	uint16_t samples[NUMSAMPLES];
	uint8_t i;

	DDRC = (1 << XP)|(0 << YP)|(1 << XM)|(0 << YM);
	PORTC &= ~(1 << YP);
	PORTC &= ~(1 << YM);

	PORTC |= (1 << XP);
	PORTC &= ~(1 << XM);

	ADMUX = (0 << REFS1)|(0 << REFS0)|(0 << ADLAR)|(0 << MUX1)|(1 << MUX0);

	_delay_us(20);


	for(i = 0; i < NUMSAMPLES; i++) {
		ADCSRA |= (1 << ADSC);
		while(ADCSRA & (1 << ADSC));
		samples[i] = ADC;
	}

	int16_t diff = samples[1] - samples[0];

	if(diff < 10 && diff > -10) {
		samples[1] = (samples[0] + samples[1]) >> 1; // Average 2 samples
		ys = (1023 - samples[1]);
		ys += 1331;
		ys *= 243;
		ys /= 710;

		return (uint16_t) ys;
	} else {
		return 0;
	}

	

}

uint16_t readZ(void) {
	int32_t z1, z2, z;

	DDRC = (1 << XP)|(0 << YP)|(0 << XM)|(1 << YM);
	PORTC &= ~(1 << XP);
	PORTC |= (1 << YM);
	PORTC &= ~(1 << YP);

	ADMUX = (0 << REFS1)|(0 << REFS0)|(0 << ADLAR)|(1 << MUX1)|(0 << MUX0);
	_delay_us(20);


	ADCSRA |= (1 << ADSC);
	while(ADCSRA & (1 << ADSC));
	z1 = ADC;


	ADMUX = (0 << REFS1)|(0 << REFS0)|(0 << ADLAR)|(0 << MUX1)|(1 << MUX0);
	_delay_us(20);


	ADCSRA |= (1 << ADSC);
	while(ADCSRA & (1 << ADSC));
	z2 = ADC;
	

	z = (1023 - (z2-z1));
	return (uint16_t) z;

}

// Prints a number between 9999 and 0000
void printNum(uint16_t x, uint16_t y, uint16_t num, uint16_t color) {
	uint16_t xpos = x;
	//uint16_t j;
	//fillRect(x,y, 3*FONT_SX, FONT_SY, 0xFFFF);

	putChar(xpos, y, ((uint8_t) (num/1000))+48, color);
	num = num % 1000;
	xpos = xpos + 8;
	putChar(xpos, y, ((uint8_t) (num/100))+48, color);
	num = num % 100;
	xpos = xpos + 8;
	putChar(xpos, y, ((uint8_t) (num/10))+48, color);
	num = num % 10;
	xpos = xpos + 8;
	putChar(xpos, y, ((uint8_t) num)+48, color);



}

void drawTestUI(void) {

	uint8_t j, i;
	
	drawRect(20, 20, 300, 220, 0x0000);
	drawRect(220, 20, 300, 36, 0x0000);

	for(i = 0; i < 2; i++) {
		for(j = 0; j < 4; j++) {
			drawRect(20+j*70, 36+i*92, 90+j*70, 128+i*92, 0x0000);
		}
	}

}

uint8_t isInXSpan(uint16_t xp, uint16_t xspan, uint16_t wspan) {
	if(xp > xspan && xp < (xspan + wspan)) {
		return 1;
	} else {
		return 0;
	}
}

uint8_t isInYSpan(uint16_t yp, uint16_t yspan, uint16_t hspan) {
	if(yp > yspan && yp < (yspan + hspan)) {
		return 1;
	} else {
		return 0;
	}
}

uint8_t isInBox(uint16_t xp, uint16_t yp, uint16_t xbox, uint16_t ybox, uint16_t wbox, uint16_t hbox) {

	uint8_t xbool = isInXSpan(xp, xbox, wbox);
	uint8_t ybool = isInYSpan(yp, ybox, hbox);

	return (xbool & ybool);

}

void checkBoxBounds(void) {

	uint8_t i, j, k, tmp, count;


	for(i = 0; i < 2; i++) {
		
		for(j = 0; j < 4; j++) {

			count = 0;

			for(k = 0; k < 5; k++) {
				tmp = isInBox(xbuf[k], ybuf[k], 20+j*70, 36+i*92, 70, 92);
				
				if(tmp) {
					count++;
				}
			}

			if(count == 3) {
				boxCount[(i*4)+j]++;
			}
		}
	}

}

void printToBox(uint16_t xbox, uint16_t ybox, uint16_t num) {
	printNum(xbox+19, ybox+42, num, 0x0000);
}

void printToBoxes(void) {
	uint8_t i, j;

	for(i = 0; i < 2; i++) {
		for(j = 0; j < 4; j++) {
			printToBox(20+j*70, 36+i*92, boxCount[(i*4) + j]);
		}
	}
}

void xBufPut(uint16_t xp) {
	xbuf[xptr] = xp-512;
	xptr++;
	xptr = xptr % 5;
}

void yBufPut(uint16_t yp) {
	ybuf[yptr] = yp-512;
	yptr++;
	yptr = yptr % 5;
}

// Testing the touch characteristics as well as some drawing on the screen
void testTouch(void) {
	uint16_t xpos = 0, ypos = 0, z = 0;


	while(1) {
		// Flashes LED and induces delay in loop
		blinkLED();

		drawCross(xpos,ypos,0xFFFF);

		z = readZ();
		
		if(z > 500) {
			xpos = readX();
			ypos = readY();
		} else {
			xpos = 0;
			ypos = 0;
		}
		


		xBufPut(xpos);
		yBufPut(ypos);
		
		//xpos = tpoint.x;
		//ypos = tpoint.y;


		drawCross(xpos, ypos, 0x0000);
		drawTestUI();
		checkBoxBounds();
		printToBoxes();
		if(xpos > 0) {
			printNum(224, 24, xpos-512, 0x0000);
		}

		if(ypos > 0) {
			printNum(264, 24, ypos-512, 0x0000);	
		}
		
		printNum(24, 24, z, 0x0000);
	}
}

int main(void) {

	init();
	tft_reset();

	cls(0xFFFF);

	
	//fillRect(140, 100, 40, 40, 0xF000);
	//testPutChar(0x001F);
	//putChar(60, 60, '@', 0x0000);
	
	testTouch();
	
}



