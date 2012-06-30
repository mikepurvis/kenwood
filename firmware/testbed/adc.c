
#include <avr/io.h>

#define sbi(var, mask)   (var |= (uint8_t)(1 << (mask)))
#define cbi(var, mask)   (var &= (uint8_t)~(1 << (mask)))


void adc_init() {
    PORTC = 0x00;  // Pull-up resistors off, just in case.
    DDRC = 0x00;  // Set Port A to input

    ADMUX = 0;
    sbi(ADMUX, REFS0);
    cbi(ADMUX, REFS1);

    ADCSRA = 0;
    ADCSRB = 0;
    ADCSRA |= 7;  // Set prescaler to 128
    ADCSRA |= (1 << ADEN);  // Enable ADC
} 
