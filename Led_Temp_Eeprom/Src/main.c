/**
 ******************************************************************************
 * @file           : main.c
 * @author         : Auto-generated by STM32CubeIDE
 * @brief          : Main program body
 ******************************************************************************
 * @attention
 *
 * Copyright (c) 2024 STMicroelectronics.
 * All rights reserved.
 *
 * This software is licensed under terms that can be found in the LICENSE file
 * in the root directory of this software component.
 * If no LICENSE file comes with this software, it is provided AS-IS.
 *
 ******************************************************************************
 */

#include "GPIO.h"
#include "i2c.h"
#include "FreeRTOS.h"
#include "task.h"

void delay(void);
static void LED_Blink(void* Paramter);
static void EEPROM_Write(void* Paramter);

int Addr = 0;
int Data = 0;

int main(void)
{

	GPIO_Init();
	I2c_Init();

	BaseType_t status;
	TaskHandle_t Task_Handle1;
	TaskHandle_t Task_Handle2;

	status =  xTaskCreate(LED_Blink, "LED", 200, "LED Blink", 2, &Task_Handle1);
	configASSERT(status == pdPASS);

	status =  xTaskCreate(EEPROM_Write, "EEPROM", 200, "EEPROM", 2, &Task_Handle2);
	configASSERT(status == pdPASS);

//for(int i=0;i<10;i++)
//	I2c_Start();
//	I2c_Address(0xA0); /* Address of Slave */
//	I2c_Write(0x00);
//	I2c_Write(0x00);
//	I2c_Write(0x01);
//	I2c_Stop();
//
//	I2c_Start();
//	I2c_Address(0xA1); /* Address of Slave */
//	I2c_Write(0x00);
//	I2c_Write(0x00);
//	I2C1_CR1 |= (1<<10); /* Ack enable */
//	while(!(I2C1_SR1)&&(1<<6)); /* Wait till rx register is not empty */
//	unsigned char temp = I2C1_DR;
//
//	Addr +=1;
//	I2c_Stop();
//}

	vTaskStartScheduler();
	while(1){


	}
}

static void LED_Blink(void* Paramters){
	while(1){
			GPIOA_ODR ^= 0x01;
			vTaskDelay(1000);
//			delay();
	}
}

static void EEPROM_Write(void* Parameters){
	while(1){
		I2c_Start();
		I2c_Address(0xA0); /* Address of Slave */
		I2c_Write((int)(Addr>>8));
		I2c_Write((int)(Addr & 0xFF));
		I2c_Write((unsigned char)Data & 0x0F);
		I2c_Stop();

//		I2c_Start();
//		I2c_Address(0xA1); /* Address of Slave */
//		I2c_Write(0x00);
//		I2c_Write(0x00);
//		I2C1_CR1 |= (1<<10); /* Ack enable */
//		while(!(I2C1_SR1)&&(1<<6)); /* Wait till rx register is not empty */
//		unsigned char temp = I2C1_DR;

		Addr +=1;
		Data +=1;
		I2c_Stop();
		vTaskDelay(2000);

	}
}

void delay(void)
{
	volatile long i;
	for(i=0;i<1000000;i++);
}
