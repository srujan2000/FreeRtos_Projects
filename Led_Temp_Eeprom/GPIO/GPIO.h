#ifndef GPIO_H_
#define GPIO_H_

#include <stdint.h>

/* MACROS */

#define RCC_BASE   0x40023800
#define GPIOA_BASE 0x40020000
#define GPIOB_BASE 0x40020400

#define RCC_AHB1ENR 	*(volatile uint32_t*)(RCC_BASE + 0x30)
#define RCC_APB1ENR 	*(volatile uint32_t*)(RCC_BASE + 0x40)
#define GPIOA_MODER		*(volatile uint32_t*)(GPIOA_BASE + 0x00)
#define GPIOA_OSPEED	*(volatile uint32_t*)(GPIOA_BASE + 0x08)
#define GPIOA_ODR		*(volatile uint32_t*)(GPIOA_BASE + 0x14)
#define GPIOA_AFRL		*(volatile uint32_t*)(GPIOA_BASE + 0x20)

void GPIO_Init();

#endif
