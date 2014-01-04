
#define PULSE_BRIGHT 80
#define PULSE_DIM 10
#define PULSE_NONE 0

#define TICKS_BRIGHT 500

#define SS_LETTER_C 0x39

extern const uint8_t ss_digits[];

void ss_init(void);
void ss_show(uint8_t l, uint8_t r);
