# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/gtuser/GitHub/MWMExecution

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gtuser/GitHub/MWMExecution/build

# Include any dependencies generated for this target.
include CMakeFiles/measure.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/measure.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/measure.dir/flags.make

CMakeFiles/measure.dir/measure.cpp.o: CMakeFiles/measure.dir/flags.make
CMakeFiles/measure.dir/measure.cpp.o: ../measure.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gtuser/GitHub/MWMExecution/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/measure.dir/measure.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/measure.dir/measure.cpp.o -c /home/gtuser/GitHub/MWMExecution/measure.cpp

CMakeFiles/measure.dir/measure.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/measure.dir/measure.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gtuser/GitHub/MWMExecution/measure.cpp > CMakeFiles/measure.dir/measure.cpp.i

CMakeFiles/measure.dir/measure.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/measure.dir/measure.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gtuser/GitHub/MWMExecution/measure.cpp -o CMakeFiles/measure.dir/measure.cpp.s

CMakeFiles/measure.dir/measure.cpp.o.requires:

.PHONY : CMakeFiles/measure.dir/measure.cpp.o.requires

CMakeFiles/measure.dir/measure.cpp.o.provides: CMakeFiles/measure.dir/measure.cpp.o.requires
	$(MAKE) -f CMakeFiles/measure.dir/build.make CMakeFiles/measure.dir/measure.cpp.o.provides.build
.PHONY : CMakeFiles/measure.dir/measure.cpp.o.provides

CMakeFiles/measure.dir/measure.cpp.o.provides.build: CMakeFiles/measure.dir/measure.cpp.o


# Object files for target measure
measure_OBJECTS = \
"CMakeFiles/measure.dir/measure.cpp.o"

# External object files for target measure
measure_EXTERNAL_OBJECTS =

measure: CMakeFiles/measure.dir/measure.cpp.o
measure: CMakeFiles/measure.dir/build.make
measure: CMakeFiles/measure.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gtuser/GitHub/MWMExecution/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable measure"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/measure.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/measure.dir/build: measure

.PHONY : CMakeFiles/measure.dir/build

CMakeFiles/measure.dir/requires: CMakeFiles/measure.dir/measure.cpp.o.requires

.PHONY : CMakeFiles/measure.dir/requires

CMakeFiles/measure.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/measure.dir/cmake_clean.cmake
.PHONY : CMakeFiles/measure.dir/clean

CMakeFiles/measure.dir/depend:
	cd /home/gtuser/GitHub/MWMExecution/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gtuser/GitHub/MWMExecution /home/gtuser/GitHub/MWMExecution /home/gtuser/GitHub/MWMExecution/build /home/gtuser/GitHub/MWMExecution/build /home/gtuser/GitHub/MWMExecution/build/CMakeFiles/measure.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/measure.dir/depend

