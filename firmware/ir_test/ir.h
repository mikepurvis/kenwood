

struct ir_callback_s {
  const char *seq;
  void (*fn)(void);
};

void ir_init (void);
void ir_set_callbacks (struct ir_callback_s callbacks[]);
