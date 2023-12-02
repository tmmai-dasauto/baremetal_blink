add_library(Timer src/Timer.c)
target_include_directories(Timer PUBLIC     
                        "${PROJECT_SOURCE_DIR}/Firmware/Timer/inc"                     
                        "${PROJECT_SOURCE_DIR}/Lib/Shared"
                        )