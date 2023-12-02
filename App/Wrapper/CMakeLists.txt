add_library(Setup src/Setup.c)
target_include_directories(Setup PUBLIC                          
                          "${PROJECT_SOURCE_DIR}/App/Wrapper/inc"
                          "${PROJECT_SOURCE_DIR}/Firmware/Timer/inc"
                          "${PROJECT_SOURCE_DIR}/Lib/Shared"
                          "${PROJECT_SOURCE_DIR}/Support/Device/stm32f411/Driver/GPIO/inc"
                          "${PROJECT_SOURCE_DIR}/Support/Device/stm32f411/Driver/RCC/inc"
                          )