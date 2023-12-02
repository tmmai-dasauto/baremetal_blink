#include <inttypes.h>
#include <stdbool.h>
#include "UserDefine.h"
#include "GPIO_Func.h"
#include "RCC.h"
#include "Timer.h"
extern void SetupGPIOPin(uint16_t pin, uint8_t mode);
extern void SetupTimer(uint32_t ticks);