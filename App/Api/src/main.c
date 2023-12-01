#include "main.h"

uint8_t g_InitStatus = 0;

static inline void spin(volatile uint32_t count) {
  while (count--) /*asm("nop")*/;
}

int main(void) {
  uint16_t led = PIN('C', 13);            // Blue LED  

  SetupPin(led,GPIO_MODE_OUTPUT);
  for (;;)
  {
    BlinkLed(led);
  }
  
  return 0;
}

// Startup code
__attribute__((naked, noreturn)) void _reset(void) {
  // memset .bss to zero, and copy .data section to RAM region
  extern long _sbss, _ebss, _sdata, _edata, _sidata;
  for (long *dst = &_sbss; dst < &_ebss; dst++) *dst = 0;
  for (long *dst = &_sdata, *src = &_sidata; dst < &_edata;) *dst++ = *src++;

  main();             // Call main()
  for (;;) (void) 0;  // Infinite loop in the case if main() returns
}

extern void _estack(void);  // Defined in link.ld

// 16 standard and 86 STM32-specific handlers
__attribute__((section(".vectors"))) void (*const tab[16 + 86])(void) = {
    _estack, _reset};