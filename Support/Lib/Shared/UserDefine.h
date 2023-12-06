#define E_OK        0
#define E_NOT_OK    1

#define BIT(x) (1UL << (x))
#define PIN(bank, num) ((((bank) - 'A') << 8) | (num))
#define PINNO(pin) (pin & 255)
#define PINBANK(pin) (pin >> 8)

#define PINOUTHIGH      1
#define PINOUTLOW       0

#define PERIOD_500MS    500

extern void SysTick_Handler(void);
extern volatile uint32_t gs_ticks; // volatile is important!!
