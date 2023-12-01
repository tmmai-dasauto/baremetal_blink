add_library(Blink_Trigger src/Blink.c)
target_include_directories(Blink_Trigger PUBLIC                          
                          "${PROJECT_SOURCE_DIR}/App/Wrapper/inc"
                          "${PROJECT_SOURCE_DIR}/Lib/Shared"
                          "${PROJECT_SOURCE_DIR}/Support/Device/stm32f411/Driver/GPIO/inc"
                          "${PROJECT_SOURCE_DIR}/Support/Device/stm32f411/Driver/RCC/inc"
                          )