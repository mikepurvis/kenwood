
#include <stdint.h>

#include <avr/interrupt.h>
#include <avr/io.h>

#include "ticks.h"
#include "ss.h"

// Extern constants
const uint8_t ss_digits[] = {
  0x3f, 0x06, 0x5b, 0x4f, 0x66,
  0x6d, 0x7d, 0x07, 0x7f, 0x6f 
};

// Internal
static uint8_t volatile _display[2] = { 0x0, 0x0 };
static uint16_t volatile _ticks_bright = 0; 
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


void ss_show(uint8_t l, uint8_t r) {
    _display[0] = l;
    _display[1] = r;
    _ticks_bright = TICKS_BRIGHT; 
}


ISR(TIMER0_OVF_vect) {
    static volatile uint8_t digit = 0;

    // Clear previous digit.
    *ss_ocrs[digit] = UINT8_MAX;

    // Figure out brightness of next digit.
    uint8_t pulse = PULSE_DIM;
    if (_ticks_bright > 0) {
        _ticks_bright--;
        pulse = PULSE_BRIGHT;
        if (_ticks_bright < (PULSE_BRIGHT - PULSE_DIM)) {
          pulse = PULSE_DIM + _ticks_bright;
        }
    }

    // Set up next digit.
    digit ^= 1;
    PORTB = ~_display[digit];
    *ss_ocrs[digit] = UINT8_MAX - pulse;

    // Increment system-wide tick value
    ticks++;
}

