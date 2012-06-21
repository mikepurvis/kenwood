/*
    5-10-07
    Copyright Spark Fun Electronics© 2007
    Nathan Seidle
    nathan at sparkfun.com
    
    Example basic printf input/output

1224212411
1224212411

[0x12, 0x24, 0x21, 0x24, 0x11]
*/

#include <stdio.h>
#include <util/delay.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include "ir.h"

#define BAUD 38400
  //9600
#define MYUBRR (F_CPU/16/BAUD-1)

#define sbi(var, mask)   (var |= (uint8_t)(1 << (mask)))
#define cbi(var, mask)   (var &= (uint8_t)~(1 << (mask)))

#define STATUS_LED 0
 

//Define functions
//======================
void ioinit(void);      // initializes IO
static int uart_putchar(char c, FILE *stream);
uint8_t uart_getchar(void);

static FILE mystdout = FDEV_SETUP_STREAM(uart_putchar, NULL, _FDEV_SETUP_WRITE);

void delay_ms(uint16_t x); // general purpose delay
//======================

int main (void) {
	  uint16_t x = 0;
    uint8_t channel = 0;
	
    uart_init(); //Setup IO pins and defaults
    adc_init();
    ir_init();
    
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

void uart_init (void) {
    //1 = output, 0 = input
    DDRB = 0b11101111; //PB4 = MISO 
    DDRC = 0b11111111; //
    DDRD = 0b11111010; //PORTD (RX on PD0)

    //USART Baud rate: 9600
    UBRR0H = MYUBRR >> 8;
    UBRR0L = MYUBRR;
    UCSR0B = (1<<RXEN0)|(1<<TXEN0);
    
    stdout = &mystdout; //Required for printf init
}

static int uart_putchar(char c, FILE *stream) {
    if (c == '\n') uart_putchar('\r', stream);
  
    loop_until_bit_is_set(UCSR0A, UDRE0);
    UDR0 = c;
    
    return 0;
}

uint8_t uart_getchar(void) {
    while( !(UCSR0A & (1<<RXC0)) );
    return(UDR0);
}


void adc_init() {
    PORTC = 0x00;  // Pull-up resistors off, just in case.
    DDRC = 0x00;  // Set Port A to input

    ADMUX = 0;
    sbi(ADMUX, REFS0);
    cbi(ADMUX, REFS1);
    //ADMUX |= (1 << REFS0);  // Set ADC reference voltage (to vcc)
    //ADMUX |= (1 << ADLAR);  // Select 8-bit mode (over 10-bit)

    ADCSRA = 0;
    ADCSRB = 0;
    ADCSRA |= 7;  // Set prescaler to 128
    ADCSRA |= (1 << ADEN);  // Enable ADC
} 
