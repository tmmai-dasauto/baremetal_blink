# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Working\baremetal_stm

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Working\baremetal_stm\Build

# Include any dependencies generated for this target.
include Blink_Trigger/CMakeFiles/Blink_Trigger.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Blink_Trigger/CMakeFiles/Blink_Trigger.dir/compiler_depend.make

# Include the progress variables for this target.
include Blink_Trigger/CMakeFiles/Blink_Trigger.dir/progress.make

# Include the compile flags for this target's objects.
include Blink_Trigger/CMakeFiles/Blink_Trigger.dir/flags.make

Blink_Trigger/CMakeFiles/Blink_Trigger.dir/src/Blink.c.obj: Blink_Trigger/CMakeFiles/Blink_Trigger.dir/flags.make
Blink_Trigger/CMakeFiles/Blink_Trigger.dir/src/Blink.c.obj: C:/Working/baremetal_stm/App/Wrapper/src/Blink.c
Blink_Trigger/CMakeFiles/Blink_Trigger.dir/src/Blink.c.obj: Blink_Trigger/CMakeFiles/Blink_Trigger.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Working\baremetal_stm\Build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Blink_Trigger/CMakeFiles/Blink_Trigger.dir/src/Blink.c.obj"
	cd /d C:\Working\baremetal_stm\Build\Blink_Trigger && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR19DD~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT Blink_Trigger/CMakeFiles/Blink_Trigger.dir/src/Blink.c.obj -MF CMakeFiles\Blink_Trigger.dir\src\Blink.c.obj.d -o CMakeFiles\Blink_Trigger.dir\src\Blink.c.obj -c C:\Working\baremetal_stm\App\Wrapper\src\Blink.c

Blink_Trigger/CMakeFiles/Blink_Trigger.dir/src/Blink.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/Blink_Trigger.dir/src/Blink.c.i"
	cd /d C:\Working\baremetal_stm\Build\Blink_Trigger && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR19DD~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Working\baremetal_stm\App\Wrapper\src\Blink.c > CMakeFiles\Blink_Trigger.dir\src\Blink.c.i

Blink_Trigger/CMakeFiles/Blink_Trigger.dir/src/Blink.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/Blink_Trigger.dir/src/Blink.c.s"
	cd /d C:\Working\baremetal_stm\Build\Blink_Trigger && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR19DD~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Working\baremetal_stm\App\Wrapper\src\Blink.c -o CMakeFiles\Blink_Trigger.dir\src\Blink.c.s

# Object files for target Blink_Trigger
Blink_Trigger_OBJECTS = \
"CMakeFiles/Blink_Trigger.dir/src/Blink.c.obj"

# External object files for target Blink_Trigger
Blink_Trigger_EXTERNAL_OBJECTS =

Blink_Trigger/libBlink_Trigger.a: Blink_Trigger/CMakeFiles/Blink_Trigger.dir/src/Blink.c.obj
Blink_Trigger/libBlink_Trigger.a: Blink_Trigger/CMakeFiles/Blink_Trigger.dir/build.make
Blink_Trigger/libBlink_Trigger.a: Blink_Trigger/CMakeFiles/Blink_Trigger.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Working\baremetal_stm\Build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libBlink_Trigger.a"
	cd /d C:\Working\baremetal_stm\Build\Blink_Trigger && $(CMAKE_COMMAND) -P CMakeFiles\Blink_Trigger.dir\cmake_clean_target.cmake
	cd /d C:\Working\baremetal_stm\Build\Blink_Trigger && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Blink_Trigger.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Blink_Trigger/CMakeFiles/Blink_Trigger.dir/build: Blink_Trigger/libBlink_Trigger.a
.PHONY : Blink_Trigger/CMakeFiles/Blink_Trigger.dir/build

Blink_Trigger/CMakeFiles/Blink_Trigger.dir/clean:
	cd /d C:\Working\baremetal_stm\Build\Blink_Trigger && $(CMAKE_COMMAND) -P CMakeFiles\Blink_Trigger.dir\cmake_clean.cmake
.PHONY : Blink_Trigger/CMakeFiles/Blink_Trigger.dir/clean

Blink_Trigger/CMakeFiles/Blink_Trigger.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Working\baremetal_stm C:\Working\baremetal_stm\App\Wrapper C:\Working\baremetal_stm\Build C:\Working\baremetal_stm\Build\Blink_Trigger C:\Working\baremetal_stm\Build\Blink_Trigger\CMakeFiles\Blink_Trigger.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : Blink_Trigger/CMakeFiles/Blink_Trigger.dir/depend
