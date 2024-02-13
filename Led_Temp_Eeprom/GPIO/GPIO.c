#include "GPIO.h"


void GPIO_Init()
{
	RCC_AHB1ENR |= (1<<0);
	GPIOA_MODER |= (1<<0);
}




