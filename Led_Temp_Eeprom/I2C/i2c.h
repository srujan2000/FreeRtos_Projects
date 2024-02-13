/*
 * i2c.h
 *
 *  Created on: Feb 7, 2024
 *      Author: sruja
 */

#ifndef I2C_H_
#define I2C_H_

#define GPIOB_BASE 0x40020400
#define I2C1_BASE   0x40005400

#define GPIOB_MODER		*(volatile uint32_t*)(GPIOB_BASE + 0x00)
#define GPIOB_OTYPER	*(volatile uint32_t*)(GPIOB_BASE + 0x04)
#define GPIOB_OSPEED	*(volatile uint32_t*)(GPIOB_BASE + 0x08)
#define GPIOB_PUPDR		*(volatile uint32_t*)(GPIOB_BASE + 0x0C)
#define GPIOB_ODR		*(volatile uint32_t*)(GPIOB_BASE + 0x14)
#define GPIOB_AFRL		*(volatile uint32_t*)(GPIOB_BASE + 0x20)

#define I2C1_CR1 		*(volatile uint32_t*)(I2C1_BASE + 0x00)
#define I2C1_CR2 		*(volatile uint32_t*)(I2C1_BASE + 0x04)
#define I2C1_DR 		*(volatile uint32_t*)(I2C1_BASE + 0x10)
#define I2C1_SR1 		*(volatile uint32_t*)(I2C1_BASE + 0x14)
#define I2C1_SR2 		*(volatile uint32_t*)(I2C1_BASE + 0x18)
#define I2C1_CCR 		*(volatile uint32_t*)(I2C1_BASE + 0x1C)
#define I2C1_TRISE		*(volatile uint32_t*)(I2C1_BASE + 0x20)

void I2c_Init(void);
void I2c_Start(void);
void I2c_Stop(void);
void I2c_Address(unsigned char);
void I2c_Write(unsigned char);

#endif /* I2C_H_ */
