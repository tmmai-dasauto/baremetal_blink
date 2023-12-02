#include "Timer.h"


void systick_init(uint32_t ticks) {
  if ((ticks - 1) > 0xffffff) return;  // Systick timer is 24 bit
  SYSTICK->LOAD = ticks - 1;
  SYSTICK->VAL = 0;
  SYSTICK->CTRL = BIT(0) | BIT(1) | BIT(2);  // Enable systick
  
}

void SysTick_Handler(void) {
  gs_ticks++;
}

uint8_t timer_expired(uint32_t *t, uint32_t now) {
  if (now + PERIOD_500MS < *t) *t = 0;                    // Time wrapped? Reset timer
  if (*t == 0) *t = now + PERIOD_500MS;                   // First poll? Set expiration
  if (*t > now) return E_NOT_OK;                    // Not expired yet, return
  *t = (now - *t) > PERIOD_500MS ? now + PERIOD_500MS : *t + PERIOD_500MS;  // Next expiration time
  return E_OK;                                  // Expired, return true
}