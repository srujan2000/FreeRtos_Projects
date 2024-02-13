/*
 * i2c.c
 *
 *  Created on: Feb 7, 2024
 *      Author: sruja
 */


#include "i2c.h"
#include "GPIO.h"
#include <stdint.h>

void I2c_Init(void)
{
	RCC_AHB1ENR |= (1<<1);				/* Enable clock for GPIOB */
	RCC_APB1ENR |= (1<<21);				/* Enable clock for I2C */
	GPIOB_MODER |= (2<<12)|(2<<14);		/* Alternate Mode for Port 6 and 7 */
	GPIOB_OTYPER |= (1<<6)|(1<<7);	    /* Output drain for Port 6 and 7 */
	GPIOB_OTYPER |= (3<<6)|(3<<7);		/* High Speed output */
	GPIOB_PUPDR  |= (1<<12)|(1<<14);    /* Pull-Up Resistor for Port 6 and 7 */
	GPIOB_AFRL	|= (4<<24)|(4<<28);		/* I2C as alternate function for port 6 and 7 */


	I2C1_CR1 |= (1<<15);		/* Setting 	SWRST Bit */
	I2C1_CR1 &= ~(1<<15);		/* Clearing SWRST Bit */
	I2C1_CR1 &= ~(1<<1);		/* SMBUS is I2C Mode */
	I2C1_CR2 |= (16<<0);		/* 16MHZ */
	I2C1_CCR =  40;            /* FScl is 200KHz */
	/* CCR Calculation
	CCR = (fclk/2)*SCL
	CCR = (16Mhz/2*100khz)=80 */
	I2C1_TRISE = 17;
	/* If, in the I2C_CR2 register, the value of FREQ[5:0] bits is equal to 0x08 and TPCLK1 = 125 ns
	therefore the TRISE[5:0] bits must be programmed with 09h.
	(1000 ns / 125 ns = 8 + 1) */
	I2C1_CR1 |= (1<<0);			/* Peripheral enable */
}

void I2c_Start(void){
	I2C1_CR1 |= (1<<8); /*  Start Condition */
	while (!(I2C1_SR1 & (1<<0))); /* wait till start bit cleared */
}

void I2c_Stop(void){
	I2C1_CR1 |= (1<<10); /* Stop Condition */
}

void I2c_Address(unsigned char Addr){
	I2C1_DR = Addr;
	while (!(I2C1_SR1 & (1<<1))); /* wait till Addr bit cleared */
	uint8_t temp = 	I2C1_SR1 | I2C1_SR2; /* Reading I2C_SR2 after reading I2C_SR1 clears the ADDR flag */
}

void I2c_Write(unsigned char Data){
	while (!(I2C1_SR1 & (1<<7))); /* wait till Tx Buffer is empty */
	I2C1_DR = Data;
	while (!(I2C1_SR1 & (1<<2))); /* wait till Byte transfer is complete */
}
