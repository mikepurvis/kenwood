
#include <stdint.h>

#include <avr/interrupt.h>
#include <avr/io.h>


// Extern writeables
uint8_t volatile ss_display[2] = { 0x0, 0x0 };
uint8_t volatile ss_pulse = 0;

// Extern constants
const uint8_t ss_digits[] = {
  0x3f, 0x06, 0x5b, 0x4f, 0x66,
  0x6d, 0x7d, 0x07, 0x7f, 0x6f 
};

// Internal
static volatile uint8_t* ss_ocrs[2] = { &OCR0A, &OCR0B };


void ss_init() {
    // Set segment pulse pins as outputs.
    DDRD |= _BV(PD5) | _BV(PD6);

    // Set all of port B as outputs.
    PORTB = 0xff;
    DDRB |= 0xff;

    // Set OCR0A and OCR0B on compare match (pins are active low).
    //TCCR0A = _BV(COM0A1) | _BV(COM0A0) | _BV(COM0B1) | _BV(COM0B0);
    // Select non-inverting mode, high until output compare and then 
    // low. Pins are active low, so this is a pulse at the end of the 
    // cycle.
    TCCR0A = _BV(COM0A1) | _BV(COM0B1) | _BV(WGM01) | _BV(WGM00);
 
    // Select 64 as prescaler.
    // 8 MHz / 256 * 64 = ~488Hz
    TCCR0B = _BV(CS01) | _BV(CS00);

    // Zero-length pulse.
    OCR0A = 255;
    OCR0B = 255;

    // Enable interrupt on timer overflow.
    TIFR0 = _BV(TOV0);
    TIMSK0 = _BV(TOIE0);
}


ISR(TIMER0_OVF_vect) {
    static volatile uint8_t digit = 0;

    // Clear previous digit.
    *ss_ocrs[digit] = UINT8_MAX;

    // Set up next digit.
    digit ^= 1;
    PORTB = ~ss_display[digit];
    *ss_ocrs[digit] = UINT8_MAX - ss_pulse;
}

