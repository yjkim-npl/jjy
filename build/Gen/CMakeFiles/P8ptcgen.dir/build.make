# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.20.5/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.20.5/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/yjkim/workspace/git/eic/DRC_generic

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/yjkim/workspace/git/eic/DRC_generic/build

# Include any dependencies generated for this target.
include Gen/CMakeFiles/P8ptcgen.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Gen/CMakeFiles/P8ptcgen.dir/compiler_depend.make

# Include the progress variables for this target.
include Gen/CMakeFiles/P8ptcgen.dir/progress.make

# Include the compile flags for this target's objects.
include Gen/CMakeFiles/P8ptcgen.dir/flags.make

Gen/CMakeFiles/P8ptcgen.dir/P8ptcgen.cc.o: Gen/CMakeFiles/P8ptcgen.dir/flags.make
Gen/CMakeFiles/P8ptcgen.dir/P8ptcgen.cc.o: ../Gen/P8ptcgen.cc
Gen/CMakeFiles/P8ptcgen.dir/P8ptcgen.cc.o: Gen/CMakeFiles/P8ptcgen.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yjkim/workspace/git/eic/DRC_generic/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Gen/CMakeFiles/P8ptcgen.dir/P8ptcgen.cc.o"
	cd /Users/yjkim/workspace/git/eic/DRC_generic/build/Gen && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Gen/CMakeFiles/P8ptcgen.dir/P8ptcgen.cc.o -MF CMakeFiles/P8ptcgen.dir/P8ptcgen.cc.o.d -o CMakeFiles/P8ptcgen.dir/P8ptcgen.cc.o -c /Users/yjkim/workspace/git/eic/DRC_generic/Gen/P8ptcgen.cc

Gen/CMakeFiles/P8ptcgen.dir/P8ptcgen.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/P8ptcgen.dir/P8ptcgen.cc.i"
	cd /Users/yjkim/workspace/git/eic/DRC_generic/build/Gen && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yjkim/workspace/git/eic/DRC_generic/Gen/P8ptcgen.cc > CMakeFiles/P8ptcgen.dir/P8ptcgen.cc.i

Gen/CMakeFiles/P8ptcgen.dir/P8ptcgen.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/P8ptcgen.dir/P8ptcgen.cc.s"
	cd /Users/yjkim/workspace/git/eic/DRC_generic/build/Gen && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yjkim/workspace/git/eic/DRC_generic/Gen/P8ptcgen.cc -o CMakeFiles/P8ptcgen.dir/P8ptcgen.cc.s

Gen/CMakeFiles/P8ptcgen.dir/src/P8filter.cc.o: Gen/CMakeFiles/P8ptcgen.dir/flags.make
Gen/CMakeFiles/P8ptcgen.dir/src/P8filter.cc.o: ../Gen/src/P8filter.cc
Gen/CMakeFiles/P8ptcgen.dir/src/P8filter.cc.o: Gen/CMakeFiles/P8ptcgen.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yjkim/workspace/git/eic/DRC_generic/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object Gen/CMakeFiles/P8ptcgen.dir/src/P8filter.cc.o"
	cd /Users/yjkim/workspace/git/eic/DRC_generic/build/Gen && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Gen/CMakeFiles/P8ptcgen.dir/src/P8filter.cc.o -MF CMakeFiles/P8ptcgen.dir/src/P8filter.cc.o.d -o CMakeFiles/P8ptcgen.dir/src/P8filter.cc.o -c /Users/yjkim/workspace/git/eic/DRC_generic/Gen/src/P8filter.cc

Gen/CMakeFiles/P8ptcgen.dir/src/P8filter.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/P8ptcgen.dir/src/P8filter.cc.i"
	cd /Users/yjkim/workspace/git/eic/DRC_generic/build/Gen && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yjkim/workspace/git/eic/DRC_generic/Gen/src/P8filter.cc > CMakeFiles/P8ptcgen.dir/src/P8filter.cc.i

Gen/CMakeFiles/P8ptcgen.dir/src/P8filter.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/P8ptcgen.dir/src/P8filter.cc.s"
	cd /Users/yjkim/workspace/git/eic/DRC_generic/build/Gen && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yjkim/workspace/git/eic/DRC_generic/Gen/src/P8filter.cc -o CMakeFiles/P8ptcgen.dir/src/P8filter.cc.s

Gen/CMakeFiles/P8ptcgen.dir/src/P8ptcgun.cc.o: Gen/CMakeFiles/P8ptcgen.dir/flags.make
Gen/CMakeFiles/P8ptcgen.dir/src/P8ptcgun.cc.o: ../Gen/src/P8ptcgun.cc
Gen/CMakeFiles/P8ptcgen.dir/src/P8ptcgun.cc.o: Gen/CMakeFiles/P8ptcgen.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yjkim/workspace/git/eic/DRC_generic/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object Gen/CMakeFiles/P8ptcgen.dir/src/P8ptcgun.cc.o"
	cd /Users/yjkim/workspace/git/eic/DRC_generic/build/Gen && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Gen/CMakeFiles/P8ptcgen.dir/src/P8ptcgun.cc.o -MF CMakeFiles/P8ptcgen.dir/src/P8ptcgun.cc.o.d -o CMakeFiles/P8ptcgen.dir/src/P8ptcgun.cc.o -c /Users/yjkim/workspace/git/eic/DRC_generic/Gen/src/P8ptcgun.cc

Gen/CMakeFiles/P8ptcgen.dir/src/P8ptcgun.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/P8ptcgen.dir/src/P8ptcgun.cc.i"
	cd /Users/yjkim/workspace/git/eic/DRC_generic/build/Gen && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yjkim/workspace/git/eic/DRC_generic/Gen/src/P8ptcgun.cc > CMakeFiles/P8ptcgen.dir/src/P8ptcgun.cc.i

Gen/CMakeFiles/P8ptcgen.dir/src/P8ptcgun.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/P8ptcgen.dir/src/P8ptcgun.cc.s"
	cd /Users/yjkim/workspace/git/eic/DRC_generic/build/Gen && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yjkim/workspace/git/eic/DRC_generic/Gen/src/P8ptcgun.cc -o CMakeFiles/P8ptcgen.dir/src/P8ptcgun.cc.s

# Object files for target P8ptcgen
P8ptcgen_OBJECTS = \
"CMakeFiles/P8ptcgen.dir/P8ptcgen.cc.o" \
"CMakeFiles/P8ptcgen.dir/src/P8filter.cc.o" \
"CMakeFiles/P8ptcgen.dir/src/P8ptcgun.cc.o"

# External object files for target P8ptcgen
P8ptcgen_EXTERNAL_OBJECTS =

Gen/P8ptcgen: Gen/CMakeFiles/P8ptcgen.dir/P8ptcgen.cc.o
Gen/P8ptcgen: Gen/CMakeFiles/P8ptcgen.dir/src/P8filter.cc.o
Gen/P8ptcgen: Gen/CMakeFiles/P8ptcgen.dir/src/P8ptcgun.cc.o
Gen/P8ptcgen: Gen/CMakeFiles/P8ptcgen.dir/build.make
Gen/P8ptcgen: /Users/yjkim/workspace/git/tools/install/lib/libpythia8.a
Gen/P8ptcgen: /Users/yjkim/workspace/git/tools/install/lib64/libHepMC3.so
Gen/P8ptcgen: /Users/yjkim/workspace/git/tools/install/lib64/libHepMC3rootIO.so
Gen/P8ptcgen: /Users/yjkim/workspace/git/tools/install/lib/libfastjet.so
Gen/P8ptcgen: rootIO/librootIO.dylib
Gen/P8ptcgen: /Users/yjkim/workspace/git/tools/install/lib/libfastjet.so
Gen/P8ptcgen: /Users/yjkim/workspace/git/root/root-v6-24.00/install/lib/libCore.so
Gen/P8ptcgen: /Users/yjkim/workspace/git/root/root-v6-24.00/install/lib/libImt.so
Gen/P8ptcgen: /Users/yjkim/workspace/git/root/root-v6-24.00/install/lib/libRIO.so
Gen/P8ptcgen: /Users/yjkim/workspace/git/root/root-v6-24.00/install/lib/libNet.so
Gen/P8ptcgen: /Users/yjkim/workspace/git/root/root-v6-24.00/install/lib/libHist.so
Gen/P8ptcgen: /Users/yjkim/workspace/git/root/root-v6-24.00/install/lib/libGraf.so
Gen/P8ptcgen: /Users/yjkim/workspace/git/root/root-v6-24.00/install/lib/libGraf3d.so
Gen/P8ptcgen: /Users/yjkim/workspace/git/root/root-v6-24.00/install/lib/libGpad.so
Gen/P8ptcgen: /Users/yjkim/workspace/git/root/root-v6-24.00/install/lib/libROOTDataFrame.so
Gen/P8ptcgen: /Users/yjkim/workspace/git/root/root-v6-24.00/install/lib/libTree.so
Gen/P8ptcgen: /Users/yjkim/workspace/git/root/root-v6-24.00/install/lib/libTreePlayer.so
Gen/P8ptcgen: /Users/yjkim/workspace/git/root/root-v6-24.00/install/lib/libRint.so
Gen/P8ptcgen: /Users/yjkim/workspace/git/root/root-v6-24.00/install/lib/libPostscript.so
Gen/P8ptcgen: /Users/yjkim/workspace/git/root/root-v6-24.00/install/lib/libMatrix.so
Gen/P8ptcgen: /Users/yjkim/workspace/git/root/root-v6-24.00/install/lib/libPhysics.so
Gen/P8ptcgen: /Users/yjkim/workspace/git/root/root-v6-24.00/install/lib/libMathCore.so
Gen/P8ptcgen: /Users/yjkim/workspace/git/root/root-v6-24.00/install/lib/libThread.so
Gen/P8ptcgen: /Users/yjkim/workspace/git/root/root-v6-24.00/install/lib/libMultiProc.so
Gen/P8ptcgen: /Users/yjkim/workspace/git/root/root-v6-24.00/install/lib/libROOTVecOps.so
Gen/P8ptcgen: Gen/CMakeFiles/P8ptcgen.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/yjkim/workspace/git/eic/DRC_generic/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable P8ptcgen"
	cd /Users/yjkim/workspace/git/eic/DRC_generic/build/Gen && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/P8ptcgen.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Gen/CMakeFiles/P8ptcgen.dir/build: Gen/P8ptcgen
.PHONY : Gen/CMakeFiles/P8ptcgen.dir/build

Gen/CMakeFiles/P8ptcgen.dir/clean:
	cd /Users/yjkim/workspace/git/eic/DRC_generic/build/Gen && $(CMAKE_COMMAND) -P CMakeFiles/P8ptcgen.dir/cmake_clean.cmake
.PHONY : Gen/CMakeFiles/P8ptcgen.dir/clean

Gen/CMakeFiles/P8ptcgen.dir/depend:
	cd /Users/yjkim/workspace/git/eic/DRC_generic/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/yjkim/workspace/git/eic/DRC_generic /Users/yjkim/workspace/git/eic/DRC_generic/Gen /Users/yjkim/workspace/git/eic/DRC_generic/build /Users/yjkim/workspace/git/eic/DRC_generic/build/Gen /Users/yjkim/workspace/git/eic/DRC_generic/build/Gen/CMakeFiles/P8ptcgen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Gen/CMakeFiles/P8ptcgen.dir/depend

