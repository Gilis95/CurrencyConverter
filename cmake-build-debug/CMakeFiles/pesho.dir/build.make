# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/christian/workspace/pesho

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/christian/workspace/pesho/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/pesho.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pesho.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pesho.dir/flags.make

CMakeFiles/pesho.dir/main.cpp.o: CMakeFiles/pesho.dir/flags.make
CMakeFiles/pesho.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/christian/workspace/pesho/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pesho.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pesho.dir/main.cpp.o -c /home/christian/workspace/pesho/main.cpp

CMakeFiles/pesho.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pesho.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/christian/workspace/pesho/main.cpp > CMakeFiles/pesho.dir/main.cpp.i

CMakeFiles/pesho.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pesho.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/christian/workspace/pesho/main.cpp -o CMakeFiles/pesho.dir/main.cpp.s

# Object files for target pesho
pesho_OBJECTS = \
"CMakeFiles/pesho.dir/main.cpp.o"

# External object files for target pesho
pesho_EXTERNAL_OBJECTS =

pesho: CMakeFiles/pesho.dir/main.cpp.o
pesho: CMakeFiles/pesho.dir/build.make
pesho: CMakeFiles/pesho.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/christian/workspace/pesho/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable pesho"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pesho.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pesho.dir/build: pesho

.PHONY : CMakeFiles/pesho.dir/build

CMakeFiles/pesho.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pesho.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pesho.dir/clean

CMakeFiles/pesho.dir/depend:
	cd /home/christian/workspace/pesho/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/christian/workspace/pesho /home/christian/workspace/pesho /home/christian/workspace/pesho/cmake-build-debug /home/christian/workspace/pesho/cmake-build-debug /home/christian/workspace/pesho/cmake-build-debug/CMakeFiles/pesho.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pesho.dir/depend

