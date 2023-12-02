#include "RCC.h"

void RCC_AHB1_Enable(uint32_t pin) {
  RCC->AHB1ENR |= BIT(PINBANK(pin));     // Enable GPIO clock for LED
}

void RCC_AHB2_Enable(uint32_t pin) {
  RCC->AHB2ENR |= BIT(pin);     // Enable GPIO clock for LED
}
