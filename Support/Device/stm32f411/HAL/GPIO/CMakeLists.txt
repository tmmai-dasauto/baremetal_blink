add_library(GPIO_Setting src/GPIO_Func.c)
target_include_directories(GPIO_Setting PUBLIC                          
                          "${PROJECT_SOURCE_DIR}/Lib/Shared"
                          "${PROJECT_SOURCE_DIR}/Support/Device/stm32f411/Driver/GPIO/inc"
                          )