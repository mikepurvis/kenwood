
#include <stdio.h>
#include <util/delay.h>
#include <avr/io.h>
#include <avr/interrupt.h>

#include "ir.h"
#include "adc.h"
#include "uart.h"

#define sbi(var, mask)   (var |= (uint8_t)(1 << (mask)))
#define cbi(var, mask)   (var &= (uint8_t)~(1 << (mask)))

#define STATUS_LED 0


void btn_power(void) { printf("PWR\n"); }
void btn_vol_up(void) { printf("V_UP\n"); }
void btn_vol_dn(void) { printf("V_DN\n"); }

const struct ir_callback_s ir_cbs[] = {
  { "\x1\x2\x2\x4\x2\x1\x2\x4\x1\x1", btn_power },
  { "\x2\x3\x3", btn_vol_up },
  { "\x1\x1\x3\x3", btn_vol_dn },
  { 0, 0 }
};


int main (void) {
	  uint16_t x = 0;
    uint8_t channel = 0;
	
    uart_init(); //Setup IO pins and defaults
    adc_init();
    ir_init(ir_cbs);
    
    PORTD=0x00;
    DDRD=0b00000010;
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
    }
   
    return(0);
}

