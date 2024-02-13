################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../GPIO/GPIO.c 

OBJS += \
./GPIO/GPIO.o 

C_DEPS += \
./GPIO/GPIO.d 


# Each subdirectory must supply rules for building sources it contributes
GPIO/%.o GPIO/%.su GPIO/%.cyclo: ../GPIO/%.c GPIO/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F407VETx -c -I../Inc -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/ThirdParty/FreeRTOS" -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/ThirdParty/FreeRTOS" -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/ThirdParty/FreeRTOS/include" -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/ThirdParty/FreeRTOS" -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/ThirdParty/FreeRTOS/portable/MemMang" -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/ThirdParty/SEGGER/Config" -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/ThirdParty/SEGGER/OS" -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/ThirdParty/SEGGER/Rec" -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/ThirdParty/SEGGER/SEGGER" -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/I2C" -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/GPIO" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-GPIO

clean-GPIO:
	-$(RM) ./GPIO/GPIO.cyclo ./GPIO/GPIO.d ./GPIO/GPIO.o ./GPIO/GPIO.su

.PHONY: clean-GPIO

