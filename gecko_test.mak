####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 14                                              #
####################################################################

BASE_SDK_PATH = ./gecko_sdk
UNAME:=$(shell $(POSIX_TOOL_PATH)uname -s | $(POSIX_TOOL_PATH)sed -e 's/^\(CYGWIN\).*/\1/' | $(POSIX_TOOL_PATH)sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_SDK_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
COPIED_SDK_PATH ?= gecko_sdk

# This uses the explicit build rules below
PROJECT_SOURCE_FILES =

C_SOURCE_FILES   += $(filter %.c, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cpp, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cc, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.s, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.S, $(PROJECT_SOURCE_FILES))
LIB_FILES        += $(filter %.a, $(PROJECT_SOURCE_FILES))

C_DEFS += \
 '-DDEBUG_EFM=1' \
 '-DEFR32BG12P332F1024GL125=1' \
 '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' \
 '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' \
 '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' \
 '-DSL_BOARD_NAME="BRD4103A"' \
 '-DSL_BOARD_REV="A03"' \
 '-DconfigNUM_SDK_THREAD_LOCAL_STORAGE_POINTERS=2' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1'

ASM_DEFS += \
 '-DDEBUG_EFM=1' \
 '-DEFR32BG12P332F1024GL125=1' \
 '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' \
 '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' \
 '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' \
 '-DSL_BOARD_NAME="BRD4103A"' \
 '-DSL_BOARD_REV="A03"' \
 '-DconfigNUM_SDK_THREAD_LOCAL_STORAGE_POINTERS=2' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1'

INCLUDES += \
 -Iconfig \
 -Iautogen \
 -I. \
 -I$(COPIED_SDK_PATH)/platform/Device/SiliconLabs/EFR32BG12P/Include \
 -I$(COPIED_SDK_PATH)/platform/common/inc \
 -I$(COPIED_SDK_PATH)/hardware/board/inc \
 -I$(COPIED_SDK_PATH)/platform/service/cli/inc \
 -I$(COPIED_SDK_PATH)/platform/service/cli/src \
 -I$(COPIED_SDK_PATH)/platform/CMSIS/Core/Include \
 -I$(COPIED_SDK_PATH)/platform/CMSIS/RTOS2/Include \
 -I$(COPIED_SDK_PATH)/hardware/driver/configuration_over_swo/inc \
 -I$(COPIED_SDK_PATH)/platform/driver/debug/inc \
 -I$(COPIED_SDK_PATH)/platform/service/device_init/inc \
 -I$(COPIED_SDK_PATH)/platform/emdrv/dmadrv/inc \
 -I$(COPIED_SDK_PATH)/platform/emdrv/common/inc \
 -I$(COPIED_SDK_PATH)/platform/emlib/inc \
 -I$(COPIED_SDK_PATH)/util/third_party/freertos/cmsis/Include \
 -I$(COPIED_SDK_PATH)/util/third_party/freertos/kernel/include \
 -I$(COPIED_SDK_PATH)/util/third_party/freertos/kernel/portable/GCC/ARM_CM4F \
 -I$(COPIED_SDK_PATH)/platform/service/iostream/inc \
 -I$(COPIED_SDK_PATH)/platform/driver/leddrv/inc \
 -I$(COPIED_SDK_PATH)/hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart \
 -I$(COPIED_SDK_PATH)/platform/common/toolchain/inc \
 -I$(COPIED_SDK_PATH)/platform/service/system/inc \
 -I$(COPIED_SDK_PATH)/platform/service/sleeptimer/inc \
 -I$(COPIED_SDK_PATH)/platform/service/udelay/inc

GROUP_START =-Wl,--start-group
GROUP_END =-Wl,--end-group

PROJECT_LIBS = \
 -lgcc \
 -lc \
 -lm \
 -lnosys

LIBS += $(GROUP_START) $(PROJECT_LIBS) $(GROUP_END)

LIB_FILES += $(filter %.a, $(PROJECT_LIBS))

C_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -std=c99 \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -imacros sl_gcc_preinclude.h \
 --specs=nano.specs \
 -g

CXX_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -std=c++11 \
 -fno-rtti \
 -fno-exceptions \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -imacros sl_gcc_preinclude.h \
 --specs=nano.specs \
 -g

ASM_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -imacros sl_gcc_preinclude.h \
 -x assembler-with-cpp

LD_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -T"autogen/linkerfile.ld" \
 --specs=nano.specs \
 -Xlinker -Map=$(OUTPUT_DIR)/$(PROJECTNAME).map \
 -Wl,--gc-sections


####################################################################
# Pre/Post Build Rules                                             #
####################################################################
pre-build:
	# No pre-build defined

post-build: $(OUTPUT_DIR)/$(PROJECTNAME).out
	# No post-build defined

####################################################################
# SDK Build Rules                                                  #
####################################################################
$(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.o: $(COPIED_SDK_PATH)/hardware/board/src/sl_board_control_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/hardware/board/src/sl_board_control_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/hardware/board/src/sl_board_control_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.o

$(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.o: $(COPIED_SDK_PATH)/hardware/board/src/sl_board_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/hardware/board/src/sl_board_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/hardware/board/src/sl_board_init.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.o

$(OUTPUT_DIR)/sdk/hardware/driver/configuration_over_swo/src/sl_cos.o: $(COPIED_SDK_PATH)/hardware/driver/configuration_over_swo/src/sl_cos.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/hardware/driver/configuration_over_swo/src/sl_cos.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/hardware/driver/configuration_over_swo/src/sl_cos.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/configuration_over_swo/src/sl_cos.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/configuration_over_swo/src/sl_cos.o

$(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.o: $(COPIED_SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.o

$(OUTPUT_DIR)/sdk/platform/CMSIS/RTOS2/Source/os_systick.o: $(COPIED_SDK_PATH)/platform/CMSIS/RTOS2/Source/os_systick.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/CMSIS/RTOS2/Source/os_systick.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/CMSIS/RTOS2/Source/os_systick.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/CMSIS/RTOS2/Source/os_systick.d
OBJS += $(OUTPUT_DIR)/sdk/platform/CMSIS/RTOS2/Source/os_systick.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o: $(COPIED_SDK_PATH)/platform/common/src/sl_assert.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_assert.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_assert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o: $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o: $(COPIED_SDK_PATH)/platform/common/src/sl_string.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_string.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_string.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o

$(OUTPUT_DIR)/sdk/platform/common/src/sli_cmsis_os2_ext_task_register.o: $(COPIED_SDK_PATH)/platform/common/src/sli_cmsis_os2_ext_task_register.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sli_cmsis_os2_ext_task_register.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sli_cmsis_os2_ext_task_register.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sli_cmsis_os2_ext_task_register.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sli_cmsis_os2_ext_task_register.o

$(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.o: $(COPIED_SDK_PATH)/platform/common/toolchain/src/sl_memory.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/toolchain/src/sl_memory.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/toolchain/src/sl_memory.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32BG12P/Source/startup_efr32bg12p.o: $(COPIED_SDK_PATH)/platform/Device/SiliconLabs/EFR32BG12P/Source/startup_efr32bg12p.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/Device/SiliconLabs/EFR32BG12P/Source/startup_efr32bg12p.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/Device/SiliconLabs/EFR32BG12P/Source/startup_efr32bg12p.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32BG12P/Source/startup_efr32bg12p.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32BG12P/Source/startup_efr32bg12p.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32BG12P/Source/system_efr32bg12p.o: $(COPIED_SDK_PATH)/platform/Device/SiliconLabs/EFR32BG12P/Source/system_efr32bg12p.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/Device/SiliconLabs/EFR32BG12P/Source/system_efr32bg12p.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/Device/SiliconLabs/EFR32BG12P/Source/system_efr32bg12p.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32BG12P/Source/system_efr32bg12p.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32BG12P/Source/system_efr32bg12p.o

$(OUTPUT_DIR)/sdk/platform/driver/debug/src/sl_debug_swo.o: $(COPIED_SDK_PATH)/platform/driver/debug/src/sl_debug_swo.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/driver/debug/src/sl_debug_swo.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/driver/debug/src/sl_debug_swo.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/debug/src/sl_debug_swo.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/debug/src/sl_debug_swo.o

$(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_led.o: $(COPIED_SDK_PATH)/platform/driver/leddrv/src/sl_led.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/driver/leddrv/src/sl_led.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/driver/leddrv/src/sl_led.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_led.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_led.o

$(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_led.o: $(COPIED_SDK_PATH)/platform/driver/leddrv/src/sl_simple_led.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/driver/leddrv/src/sl_simple_led.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/driver/leddrv/src/sl_simple_led.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_led.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_led.o

$(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.o: $(COPIED_SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_cmu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_cmu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_cmu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_core.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_core.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_core.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_emu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_emu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_emu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_ldma.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_ldma.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_ldma.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_msc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_msc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_msc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_rtcc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_rtcc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_rtcc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_system.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_system.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_system.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_timer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_usart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_usart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_usart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_command.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_command.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_command.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_input.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_input.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_input.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_io.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_io.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_io.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s1.o: $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s1.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s1.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s1.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s1.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s1.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s1.o: $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s1.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s1.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s1.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s1.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s1.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s1.o: $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s1.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s1.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s1.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s1.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s1.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s1.o: $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s1.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s1.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s1.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s1.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s1.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.o: $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdlib_config.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_stdlib_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_stdlib_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_stdlib_config.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdlib_config.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdlib_config.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o: $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o: $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.o: $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o: $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_kernel.o: $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_kernel.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_kernel.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_kernel.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_kernel.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_kernel.o

$(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.o: $(COPIED_SDK_PATH)/platform/service/udelay/src/sl_udelay.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/udelay/src/sl_udelay.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/udelay/src/sl_udelay.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.o

$(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.o: $(COPIED_SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(ASMFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
ASMDEPS_S += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/cmsis/Source/cmsis_os2.o: $(COPIED_SDK_PATH)/util/third_party/freertos/cmsis/Source/cmsis_os2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/freertos/cmsis/Source/cmsis_os2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/freertos/cmsis/Source/cmsis_os2.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/cmsis/Source/cmsis_os2.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/cmsis/Source/cmsis_os2.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/croutine.o: $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/croutine.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/croutine.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/croutine.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/croutine.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/croutine.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/event_groups.o: $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/event_groups.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/event_groups.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/event_groups.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/event_groups.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/event_groups.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/list.o: $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/list.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/list.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/list.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/list.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/list.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/portable/GCC/ARM_CM4F/port.o: $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/portable/GCC/ARM_CM4F/port.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/portable/GCC/ARM_CM4F/port.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/portable/GCC/ARM_CM4F/port.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/portable/GCC/ARM_CM4F/port.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/portable/GCC/ARM_CM4F/port.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/portable/MemMang/heap_4.o: $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/portable/MemMang/heap_4.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/portable/MemMang/heap_4.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/portable/MemMang/heap_4.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/portable/MemMang/heap_4.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/portable/MemMang/heap_4.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/queue.o: $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/queue.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/queue.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/queue.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/queue.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/queue.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/stream_buffer.o: $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/stream_buffer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/stream_buffer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/stream_buffer.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/stream_buffer.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/stream_buffer.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/tasks.o: $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/tasks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/tasks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/tasks.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/tasks.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/tasks.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/timers.o: $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/timers.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/timers.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/timers.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/timers.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/timers.o

$(OUTPUT_DIR)/project/app.o: app.c
	@$(POSIX_TOOL_PATH)echo 'Building app.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ app.c
CDEPS += $(OUTPUT_DIR)/project/app.d
OBJS += $(OUTPUT_DIR)/project/app.o

$(OUTPUT_DIR)/project/autogen/sl_board_default_init.o: autogen/sl_board_default_init.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_board_default_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_board_default_init.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_board_default_init.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_board_default_init.o

$(OUTPUT_DIR)/project/autogen/sl_cli_command_table.o: autogen/sl_cli_command_table.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_cli_command_table.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_cli_command_table.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_cli_command_table.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_cli_command_table.o

$(OUTPUT_DIR)/project/autogen/sl_cli_instances.o: autogen/sl_cli_instances.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_cli_instances.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_cli_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_cli_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_cli_instances.o

$(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.o: autogen/sl_device_init_clocks.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_device_init_clocks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_device_init_clocks.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.o

$(OUTPUT_DIR)/project/autogen/sl_event_handler.o: autogen/sl_event_handler.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_event_handler.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_event_handler.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o: autogen/sl_iostream_handles.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_iostream_handles.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_handles.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.o: autogen/sl_iostream_init_usart_instances.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_iostream_init_usart_instances.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_init_usart_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.o

$(OUTPUT_DIR)/project/autogen/sl_simple_led_instances.o: autogen/sl_simple_led_instances.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_simple_led_instances.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_simple_led_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_simple_led_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_simple_led_instances.o

$(OUTPUT_DIR)/project/autogen/sli_cli_hooks.o: autogen/sli_cli_hooks.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sli_cli_hooks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sli_cli_hooks.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sli_cli_hooks.d
OBJS += $(OUTPUT_DIR)/project/autogen/sli_cli_hooks.o

$(OUTPUT_DIR)/project/cli.o: cli.c
	@$(POSIX_TOOL_PATH)echo 'Building cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ cli.c
CDEPS += $(OUTPUT_DIR)/project/cli.d
OBJS += $(OUTPUT_DIR)/project/cli.o

$(OUTPUT_DIR)/project/main.o: main.c
	@$(POSIX_TOOL_PATH)echo 'Building main.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ main.c
CDEPS += $(OUTPUT_DIR)/project/main.d
OBJS += $(OUTPUT_DIR)/project/main.o

# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=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=END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA
