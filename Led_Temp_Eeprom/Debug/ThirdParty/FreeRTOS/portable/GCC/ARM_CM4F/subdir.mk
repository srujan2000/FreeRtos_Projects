################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F/port.c 

OBJS += \
./ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F/port.o 

C_DEPS += \
./ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F/port.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F/%.o ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F/%.su ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F/%.cyclo: ../ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F/%.c ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F407VETx -c -I../Inc -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/ThirdParty/FreeRTOS/include" -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/ThirdParty/FreeRTOS/portable/MemMang" -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/ThirdParty/SEGGER/Config" -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/ThirdParty/SEGGER/OS" -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/ThirdParty/SEGGER/Rec" -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/ThirdParty/SEGGER/SEGGER" -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/I2C" -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/GPIO" -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/ThirdParty/FreeRTOS" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ThirdParty-2f-FreeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F

clean-ThirdParty-2f-FreeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F:
	-$(RM) ./ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F/port.cyclo ./ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F/port.d ./ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F/port.o ./ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F/port.su

.PHONY: clean-ThirdParty-2f-FreeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F

