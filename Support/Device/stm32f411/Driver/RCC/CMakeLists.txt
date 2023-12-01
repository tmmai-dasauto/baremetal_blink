add_library(RCC_Setting src/RCC.c)
target_include_directories(RCC_Setting PUBLIC                       
                          "${PROJECT_SOURCE_DIR}/Lib/Shared"   
                          "${PROJECT_SOURCE_DIR}/Support/Device/stm32f411/Driver/RCC/inc"
                          )