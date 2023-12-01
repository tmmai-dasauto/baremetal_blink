#include "Blink.h"
#include "GlobalVariable.h"

static inline void spin(volatile uint32_t count) {
  while (count--) /*asm("nop")*/;
}

void BlinkLed(uint16_t pin)
{
  spin(999999);
  gpio_write(pin,PINOUTHIGH);
  spin(999999);
  gpio_write(pin,PINOUTLOW);
}

void SetupPin(uint16_t pin, uint8_t mode)
{
  RCC_Enable(pin); 
  gpio_set_mode(pin,mode);
}