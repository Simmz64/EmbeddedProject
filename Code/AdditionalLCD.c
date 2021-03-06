void window(uint16_t x, uint16_t y, uint16_t w, uint16_t h);
void windowMax(void);
void drawHLine(uint16_t x0, uint16_t x1, uint16_t y, uint16_t color);
void drawVLine(uint16_t x, uint16_t y0, uint16_t y1, uint16_t color);
void drawRect(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1, uint16_t color);
void fillRect(uint16_t x, uint16_t y, uint16_t w, uint16_t h, uint16_t color);
void cls(uint16_t color);
void testPutChar(uint16_t color);
void helpChar(uint8_t in, uint16_t color);
void putChar(uint16_t x, uint16_t y, uint8_t ch, uint16_t color);
void drawCross(uint16_t x, uint16_t y, uint16_t color);


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
    for(j = 0; j < 8; j++) {
        if((in >> j) & 0x01) {
            spi_transceive(color >> 8);
            spi_transceive(color & 0xFF);
        } else {
            spi_transceive(0xFF);
            spi_transceive(0xFF);
        }
    }
}


void putChar(uint16_t x, uint16_t y, uint8_t ch, uint16_t color) {
    window(x, y, 8, 8); // Font is 8x8
    uint8_t ind = ch - 31; // Convert char to corresponding index in font
    uint8_t j;
    wr_cmd(0x2C);
    for(j = 0; j < 8; j++) {
        helpChar(FONT8x8[ind][j], color);
    }
    cs_high();
    windowMax();
}

void drawCross(uint16_t x, uint16_t y, uint16_t color) {
    // Draws a 15x15 cross with the center at the provided x, y coordinates
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

    
}

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
{0x1C,0x36,0x36,0x1C,0x00,0x00,0x00,0x00}}; // DEL