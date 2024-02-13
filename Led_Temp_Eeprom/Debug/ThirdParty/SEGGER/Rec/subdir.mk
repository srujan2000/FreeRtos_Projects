################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/SEGGER/Rec/segger_uart.c 

OBJS += \
./ThirdParty/SEGGER/Rec/segger_uart.o 

C_DEPS += \
./ThirdParty/SEGGER/Rec/segger_uart.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/SEGGER/Rec/%.o ThirdParty/SEGGER/Rec/%.su ThirdParty/SEGGER/Rec/%.cyclo: ../ThirdParty/SEGGER/Rec/%.c ThirdParty/SEGGER/Rec/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F407VETx -c -I../Inc -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/ThirdParty/FreeRTOS/include" -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/ThirdParty/FreeRTOS/portable/MemMang" -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/ThirdParty/SEGGER/Config" -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/ThirdParty/SEGGER/OS" -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/ThirdParty/SEGGER/Rec" -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/ThirdParty/SEGGER/SEGGER" -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/I2C" -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/GPIO" -I"C:/FreeRtos_Projects/Led_Temp_Eeprom/ThirdParty/FreeRTOS" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ThirdParty-2f-SEGGER-2f-Rec

clean-ThirdParty-2f-SEGGER-2f-Rec:
	-$(RM) ./ThirdParty/SEGGER/Rec/segger_uart.cyclo ./ThirdParty/SEGGER/Rec/segger_uart.d ./ThirdParty/SEGGER/Rec/segger_uart.o ./ThirdParty/SEGGER/Rec/segger_uart.su

.PHONY: clean-ThirdParty-2f-SEGGER-2f-Rec

