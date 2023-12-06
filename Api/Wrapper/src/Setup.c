#include "Setup.h"

void SetupGPIOPin(uint16_t pin, uint8_t mode)
{
    RCC_AHB1_Enable(pin);
    gpio_set_mode(pin, mode);
}

void SetupTimer(uint32_t ticks)
{
    systick_init(ticks);
    RCC_AHB2_Enable(14);
}
 