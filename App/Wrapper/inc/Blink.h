#include "GPIO_Func.h"
#include "RCC.h"
#include <inttypes.h>
#include <stdbool.h>

extern void BlinkLed(uint16_t pin);
extern void SetupPin(uint16_t pin, uint8_t mode);