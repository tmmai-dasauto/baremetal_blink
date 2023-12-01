CMAKE_MINIMUM_REQUIRED(VERSION 3.5 FATAL_ERROR)

project(Blink)

enable_language(C ASM)
set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS OFF)

set(EXECUTABLE ${PROJECT_NAME}.elf)
set(STM32_SRC_FILES
    App/Api/src/main.c
    App/Wrapper/src/Blink.c
    Support/Device/stm32f411/Driver/RCC/src/RCC.c
    Support/Device/stm32f411/Driver/GPIO/src/GPIO_Func.c
)

add_subdirectory(${PROJECT_SOURCE_DIR}/App/Wrapper  Blink_Trigger)
add_subdirectory(${PROJECT_SOURCE_DIR}/Support/Device/stm32f411/Driver/GPIO  GPIO_Setting)
add_subdirectory(${PROJECT_SOURCE_DIR}/Support/Device/stm32f411/Driver/RCC   RCC_Setting)

add_executable(${EXECUTABLE} ${STM32_SRC_FILES})
target_link_libraries(${EXECUTABLE} PUBLIC Blink_Trigger)
target_link_libraries(${EXECUTABLE} PUBLIC GPIO_Setting)
target_link_libraries(${EXECUTABLE} PUBLIC RCC_Setting)
target_include_directories(${EXECUTABLE} PUBLIC
                        "${PROJECT_SOURCE_DIR}/App/Api/inc"
                        "${PROJECT_SOURCE_DIR}/App/Wrapper/inc"
                        "${PROJECT_SOURCE_DIR}/Lib/Shared"
                        "${PROJECT_SOURCE_DIR}/Support/Device/stm32f411/Driver/RCC/inc"
                        "${PROJECT_SOURCE_DIR}/Support/Device/stm32f411/Driver/GPIO/inc"
                        )

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
        -T${PROJECT_SOURCE_DIR}/Support/Device/stm32f411/Linker/stm32f411.ld
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
        