void window(uint16_t x, uint16_t y, uint16_t w, uint16_t h);
void drawHLine(uint16_t x0, uint16_t x1, uint16_t y, uint16_t color);
void drawVLine(uint16_t x, uint16_t y0, uint16_t y1, uint16_t color);
void drawRect(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1, uint16_t color);

// TOOD Implement WindowMAX()

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

    //WindowMAX()
}

// TODO Rewrite as above
void drawVLine(uint16_t x, uint16_t y0, uint16_t y1, uint16_t color) {
	uint16_t h;
    h = y1 - y0 + 1;
    uint16_t j;
    for (j = 0; j < h; j++) {
        pixel(x, y0 + j, color);
    } 
}

void drawRect(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1, uint16_t color) {
	if (x1 > x0) hline(x0,x1,y0,color);
    else  hline(x1,x0,y0,color);

    if (y1 > y0) vline(x0,y0,y1,color);
    else vline(x0,y1,y0,color);

    if (x1 > x0) hline(x0,x1,y1,color);
    else  hline(x1,x0,y1,color);

    if (y1 > y0) vline(x1,y0,y1,color);
    else vline(x1,y1,y0,color);
}