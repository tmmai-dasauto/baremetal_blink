#include "GPIO_Func.h"
#include <inttypes.h>
#include <stdbool.h>

void gpio_set_mode(uint16_t pin, uint8_t mode) {
  struct gpio *l_GPIO = GPIO(PINBANK(pin));  // GPIO bank
  int n = PINNO(pin);                      // Pin number
  l_GPIO->MODER &= ~(3U << (n * 2));         // Clear existing setting
  l_GPIO->MODER |= (mode & 3U) << (n * 2);   // Set new mode
}

void gpio_write(uint16_t pin, uint8_t val) {
  struct gpio *l_GPIO = GPIO(PINBANK(pin));  // GPIO bank
  l_GPIO->BSRR = (1U << PINNO(pin)) << (val ? 0 : 16);
}
