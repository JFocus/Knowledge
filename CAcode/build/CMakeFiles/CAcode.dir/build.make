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
CMAKE_SOURCE_DIR = /home/jfocus/Documents/Knowledge/CAcode

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jfocus/Documents/Knowledge/CAcode/build

# Include any dependencies generated for this target.
include CMakeFiles/CAcode.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CAcode.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CAcode.dir/flags.make

CMakeFiles/CAcode.dir/main.cpp.o: CMakeFiles/CAcode.dir/flags.make
CMakeFiles/CAcode.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jfocus/Documents/Knowledge/CAcode/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CAcode.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CAcode.dir/main.cpp.o -c /home/jfocus/Documents/Knowledge/CAcode/main.cpp

CMakeFiles/CAcode.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CAcode.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jfocus/Documents/Knowledge/CAcode/main.cpp > CMakeFiles/CAcode.dir/main.cpp.i

CMakeFiles/CAcode.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CAcode.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jfocus/Documents/Knowledge/CAcode/main.cpp -o CMakeFiles/CAcode.dir/main.cpp.s

CMakeFiles/CAcode.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/CAcode.dir/main.cpp.o.requires

CMakeFiles/CAcode.dir/main.cpp.o.provides: CMakeFiles/CAcode.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/CAcode.dir/build.make CMakeFiles/CAcode.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/CAcode.dir/main.cpp.o.provides

CMakeFiles/CAcode.dir/main.cpp.o.provides.build: CMakeFiles/CAcode.dir/main.cpp.o


# Object files for target CAcode
CAcode_OBJECTS = \
"CMakeFiles/CAcode.dir/main.cpp.o"

# External object files for target CAcode
CAcode_EXTERNAL_OBJECTS =

CAcode: CMakeFiles/CAcode.dir/main.cpp.o
CAcode: CMakeFiles/CAcode.dir/build.make
CAcode: CMakeFiles/CAcode.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jfocus/Documents/Knowledge/CAcode/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable CAcode"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CAcode.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CAcode.dir/build: CAcode

.PHONY : CMakeFiles/CAcode.dir/build

CMakeFiles/CAcode.dir/requires: CMakeFiles/CAcode.dir/main.cpp.o.requires

.PHONY : CMakeFiles/CAcode.dir/requires

CMakeFiles/CAcode.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CAcode.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CAcode.dir/clean

CMakeFiles/CAcode.dir/depend:
	cd /home/jfocus/Documents/Knowledge/CAcode/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jfocus/Documents/Knowledge/CAcode /home/jfocus/Documents/Knowledge/CAcode /home/jfocus/Documents/Knowledge/CAcode/build /home/jfocus/Documents/Knowledge/CAcode/build /home/jfocus/Documents/Knowledge/CAcode/build/CMakeFiles/CAcode.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CAcode.dir/depend
