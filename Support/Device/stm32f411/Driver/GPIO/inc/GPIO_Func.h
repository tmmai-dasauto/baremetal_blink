#include <inttypes.h>
#include <stdbool.h>
#include "UserDefine.h"

#define GPIO(bank) ((struct gpio *) (0x40020000 + 0x400 * (bank)))

struct gpio {
  volatile uint32_t MODER, OTYPER, OSPEEDR, PUPDR, IDR, ODR, BSRR, LCKR, AFR[2];
};

// Enum values are per datasheet: 0, 1, 2, 3
enum { GPIO_MODE_INPUT, GPIO_MODE_OUTPUT, GPIO_MODE_AF, GPIO_MODE_ANALOG };

extern void gpio_set_mode(uint16_t pin, uint8_t mode);
extern void gpio_write(uint16_t pin, uint8_t val);






