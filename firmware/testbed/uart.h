#ifndef UART_H
#define UART_H

#define BAUD 38400
#define MYUBRR (F_CPU / 16 / BAUD - 1)

void uart_init(void);
static int uart_putchar(char c, FILE *stream);
uint8_t uart_getchar(void);

#endif
