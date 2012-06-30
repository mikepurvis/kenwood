#ifndef IR_H
#define IR_H

#define IR_STREAM_MAX_LENGTH 16
#define IR_PRINT

struct ir_callback_s {
  const char *seq;
  void (*fn)(void);
};

void ir_init (struct ir_callback_s*);

#endif
