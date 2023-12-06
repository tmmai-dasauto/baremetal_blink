#include "App_LED.h"
volatile uint32_t gs_ticks = 0; 
static inline void spin(volatile uint32_t count) {
  while (count--) /*asm("nop")*/;
}

void App_LED(uint16_t pin)
{
  static uint8_t l_AppLED_Init = 0;
  if (l_AppLED_Init == 0)
  {
    SetupGPIOPin(pin, GPIO_MODE_OUTPUT);
    SetupTimer(16000000 / 1000);
    l_AppLED_Init = 1;
  }
  else
  {
    BlinkLed(pin);
  }
}

void BlinkLed(uint16_t pin)
{
  uint32_t timer; 
  static uint8_t state = PINOUTHIGH;
  if (timer_expired(&timer, gs_ticks) == E_OK) 
  {
    gpio_write(pin, state);  // Every `period` milliseconds
    state = !state;             // Toggle LED state
  }
}