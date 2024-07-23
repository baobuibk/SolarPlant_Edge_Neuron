# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/ulrich/neurongithub/neuron

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ulrich/neurongithub/neuron/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/jwt_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/jwt_test.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/jwt_test.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/jwt_test.dir/flags.make

tests/CMakeFiles/jwt_test.dir/jwt_test.cc.o: tests/CMakeFiles/jwt_test.dir/flags.make
tests/CMakeFiles/jwt_test.dir/jwt_test.cc.o: ../tests/jwt_test.cc
tests/CMakeFiles/jwt_test.dir/jwt_test.cc.o: tests/CMakeFiles/jwt_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ulrich/neurongithub/neuron/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/jwt_test.dir/jwt_test.cc.o"
	cd /home/ulrich/neurongithub/neuron/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/jwt_test.dir/jwt_test.cc.o -MF CMakeFiles/jwt_test.dir/jwt_test.cc.o.d -o CMakeFiles/jwt_test.dir/jwt_test.cc.o -c /home/ulrich/neurongithub/neuron/tests/jwt_test.cc

tests/CMakeFiles/jwt_test.dir/jwt_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/jwt_test.dir/jwt_test.cc.i"
	cd /home/ulrich/neurongithub/neuron/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ulrich/neurongithub/neuron/tests/jwt_test.cc > CMakeFiles/jwt_test.dir/jwt_test.cc.i

tests/CMakeFiles/jwt_test.dir/jwt_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/jwt_test.dir/jwt_test.cc.s"
	cd /home/ulrich/neurongithub/neuron/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ulrich/neurongithub/neuron/tests/jwt_test.cc -o CMakeFiles/jwt_test.dir/jwt_test.cc.s

# Object files for target jwt_test
jwt_test_OBJECTS = \
"CMakeFiles/jwt_test.dir/jwt_test.cc.o"

# External object files for target jwt_test
jwt_test_EXTERNAL_OBJECTS =

tests/jwt_test: tests/CMakeFiles/jwt_test.dir/jwt_test.cc.o
tests/jwt_test: tests/CMakeFiles/jwt_test.dir/build.make
tests/jwt_test: libneuron-base.so
tests/jwt_test: tests/CMakeFiles/jwt_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ulrich/neurongithub/neuron/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable jwt_test"
	cd /home/ulrich/neurongithub/neuron/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/jwt_test.dir/link.txt --verbose=$(VERBOSE)
	cd /home/ulrich/neurongithub/neuron/build/tests && /usr/bin/cmake -D TEST_TARGET=jwt_test -D TEST_EXECUTABLE=/home/ulrich/neurongithub/neuron/build/tests/jwt_test -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/home/ulrich/neurongithub/neuron/build/tests -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D TEST_FILTER= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=jwt_test_TESTS -D CTEST_FILE=/home/ulrich/neurongithub/neuron/build/tests/jwt_test[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=5 -D TEST_XML_OUTPUT_DIR= -P /usr/share/cmake-3.22/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
tests/CMakeFiles/jwt_test.dir/build: tests/jwt_test
.PHONY : tests/CMakeFiles/jwt_test.dir/build

tests/CMakeFiles/jwt_test.dir/clean:
	cd /home/ulrich/neurongithub/neuron/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/jwt_test.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/jwt_test.dir/clean

tests/CMakeFiles/jwt_test.dir/depend:
	cd /home/ulrich/neurongithub/neuron/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ulrich/neurongithub/neuron /home/ulrich/neurongithub/neuron/tests /home/ulrich/neurongithub/neuron/build /home/ulrich/neurongithub/neuron/build/tests /home/ulrich/neurongithub/neuron/build/tests/CMakeFiles/jwt_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/jwt_test.dir/depend

