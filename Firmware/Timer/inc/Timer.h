#include <inttypes.h>
#include <stdbool.h>
#include "UserDefine.h"

struct systick {
  volatile uint32_t CTRL, LOAD, VAL, CALIB;
};

#define SYSTICK ((struct systick *) 0xe000e010)

extern void systick_init(uint32_t ticks);
extern uint8_t timer_expired(uint32_t *t, uint32_t now);