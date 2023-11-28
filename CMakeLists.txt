CMAKE_MINIMUM_REQUIRED(VERSION 3.5 FATAL_ERROR)

project(Blink)

enable_language(C ASM)
set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS OFF)

set(EXECUTABLE ${PROJECT_NAME}.out)
set(STM32CUBEMX_GENERATED_FILES
    App/Api/src/main.c
)
add_executable(${EXECUTABLE} ${STM32CUBEMX_GENERATED_FILES})
target_compile_options(${EXECUTABLE} PRIVATE
        -mcpu=cortex-m4
        # -mthumb
        # -mfpu=fpv4-sp-d16
        # -mfloat-abi=hard

        -fdata-sections
        -ffunction-sections

        -Wall

        $<$<CONFIG:Debug>:-Og>
)

target_link_options(${EXECUTABLE} PRIVATE
        -T${CMAKE_SOURCE_DIR}/Support/Device/stm32f411/Linker/stm32f411.ld
        -mcpu=cortex-m4
        # -mthumb
        # -mfpu=fpv4-sp-d16
        # -mfloat-abi=hard
        -specs=nano.specs
        -lc
        -lm
        -lnosys
        -Wl,-Map=${PROJECT_NAME}.map,--cref
        -Wl,--gc-sections
)

# Print executable size
add_custom_command(TARGET ${EXECUTABLE}
        POST_BUILD
        COMMAND arm-none-eabi-size ${EXECUTABLE})

# Create hex file
add_custom_command(TARGET ${EXECUTABLE}
        POST_BUILD
        COMMAND arm-none-eabi-objcopy -O ihex ${EXECUTABLE} ${PROJECT_NAME}.hex
        COMMAND arm-none-eabi-objcopy -O binary ${EXECUTABLE} ${PROJECT_NAME}.bin)