#include "RCC.h"

void RCC_Enable(uint32_t pin) {
  RCC->AHB1ENR |= BIT(PINBANK(pin));     // Enable GPIO clock for LED
}
