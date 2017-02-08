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

struct TSPoint {
	uint16_t x, y, z;
}

void getPoint(struct TSPoint tp) {

	uint16_t xs, ys, zs;
	uint16_t samples[NUMSAMPLES];

	// Start by getting X-coord
	DDRC = (1 << XP)|(0 << YP)|(1 << XM)|(0 << YM);
	PORTC &= ~(1 << YP);
	PORTC &= ~(1 << YM);

	PORTC |= (1 << XP);
	PORTC &= ~(1 << XM);

	ADMUX = (0 << REFS1)|(0 << REFS0)|(0 << ADLAR)|(0 << MUX1)|(1 << MUX0);

	_delay_us(20);



	uint8_t i;
	for(i = 0; i < NUMSAMPLES; i++) {
		ADCSRA |= (1 << ADSC);
		while(ADCSRA & (1 << ADSC));
		samples[i] = ADC;
	}

	samples[1] = (samples[0] + samples[1]) >> 1; // Average 2 samples

	xs = (1023 - samples[1]);


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

	samples[1] = (samples[0] + samples[1]) >> 1; // Average 2 samples
	ys = (1023 - samples[1]);

	tp.x = xs;
	tp.y = ys;
	
}