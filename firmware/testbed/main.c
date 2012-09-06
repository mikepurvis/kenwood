
#include <stdio.h>
#include <util/delay.h>
#include <avr/io.h>
#include <avr/interrupt.h>

#include "ir.h"
#include "adc.h"
#include "uart.h"
#include "ss.h"
#include "ticks.h"

// Global clock, 2ms resolution
volatile uint32_t ticks;

void btn_power(void) { printf("PWR\n"); }
void btn_vol_up(void) { printf("V_UP\n"); }
void btn_vol_dn(void) { printf("V_DN\n"); }

const struct ir_callback_s ir_cbs[] = {
  { "\x1\x2\x2\x4\x2\x1\x2\x4\x1\x1", btn_power },
  { "\x2\x3\x3", btn_vol_up },
  { "\x1\x1\x3\x3", btn_vol_dn },
  { 0, 0 }
};

volatile uint8_t counter = 0;

void btn_init() {
// Button is connected to PD2, which is also hardware interrupt INT0
	
    // Pin is an input by default. Enable the weak internal pull-up.
    PORTD |= _BV(PD2);

    // Enable INT0 on falling edge.
    EICRA |= _BV(ISC01);
    EIMSK |= _BV(INT0);
}

ISR(INT0_vect) {
    counter = 0;
}

volatile uint8_t prev_pc2 = 0;
volatile uint8_t prev = 0;
volatile uint32_t enc_ticks = 0;

const uint8_t enc_mask = _BV(PC2) | _BV(PC3);

void enc_init() {
// Encoder channels are connected to PC2 and PC3, which are part of
// pin-change interrupt 1, as PCINT10 and PCINT11.

    // Enable internal pull-ups on the input pins.
    PORTC |= _BV(PC2) | _BV(PC3);

    // Set up pin change interrupt on these pins.
    PCICR |= _BV(PCIE1);
    PCMSK1 |= _BV(PCINT10) | _BV(PCINT11);

    prev_pc2 = (PINC & _BV(PC2)); 
    prev = PINC & enc_mask;
}


ISR(PCINT1_vect) {
    uint8_t state = PINC & enc_mask;
    if (state != prev) {
        //counter = state / 4 + (10 * (prev / 4));
        //counter = ((prev & _BV(PC2)) != 0) + 10 * ((state & _BV(PC3)) != 0);
        if (((prev & _BV(PC2)) != 0) == ((state & _BV(PC3)) != 0)) {
            counter--;
        } else {
            counter++;
        }
    }

    ss_show(ss_digits[counter/4 / 10], ss_digits[counter/4 % 10]);

    //prev_pc2 = (PINC & _BV(PC2)); 
    prev = state;
}


int main (void) {
    uint16_t x = 0;
    uint8_t channel = 0;

    // Set heartbeat pin as an output.
    DDRD |= _BV(PD4);

    //uart_init(); //Setup IO pins and defaults
    //adc_init();
    //ir_init(ir_cbs);
    ss_init();
    btn_init();
    enc_init();
    
    sei();
    

    while(1) {
        // Select channel for conversion
        /*ADMUX &= 0xE0;  // 1110 0000
        ADMUX |= channel;
  
        // Perform conversion
	      sbi(ADCSRA, ADSC);
        loop_until_bit_is_set(ADCSRA, ADSC);
        x = ADCL + (ADCH << 8);*/
        //x = PIND & 4;// & 128;
        //printf("%d %d %d\n", x, timer_volatile, change_volatile);

		    /*PORTB = 0xFF;
		    _delay_ms(25);
		    PORTB = 0x00;*/
		    //_delay_ms(25);
        /*if (pulses_done) {
            for (uint8_t n = 0; n < pulse_index; n++) {
                printf("%d ", pulse_widths[n]);
            }
            printf("\n");
            pulses_done = 0;
        }*/
        PORTD |= _BV(PD4);
        _delay_ms(500);
        PORTD &= ~_BV(PD4);
        _delay_ms(500);
        //counter = (PINC & (_BV(PC2) | _BV(PC3)));
        
        //if (counter >= 100) counter = 0; 
        //if ((PIND & _BV(PD2)) == 0) counter = 50;
        //counter = PIND;
    }
   
    return(0);
}




