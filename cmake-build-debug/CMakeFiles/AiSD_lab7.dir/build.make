# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

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

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "E:\Programowanie\CLion\CLion 2021.2.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "E:\Programowanie\CLion\CLion 2021.2.3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = E:\Programowanie\CLion\AiSD-lab7

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\Programowanie\CLion\AiSD-lab7\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\AiSD_lab7.dir\depend.make
# Include the progress variables for this target.
include CMakeFiles\AiSD_lab7.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\AiSD_lab7.dir\flags.make

CMakeFiles\AiSD_lab7.dir\main.cpp.obj: CMakeFiles\AiSD_lab7.dir\flags.make
CMakeFiles\AiSD_lab7.dir\main.cpp.obj: ..\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Programowanie\CLion\AiSD-lab7\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/AiSD_lab7.dir/main.cpp.obj"
	C:\PROGRA~2\MICROS~3\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\AiSD_lab7.dir\main.cpp.obj /FdCMakeFiles\AiSD_lab7.dir\ /FS -c E:\Programowanie\CLion\AiSD-lab7\main.cpp
<<

CMakeFiles\AiSD_lab7.dir\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AiSD_lab7.dir/main.cpp.i"
	C:\PROGRA~2\MICROS~3\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe > CMakeFiles\AiSD_lab7.dir\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\Programowanie\CLion\AiSD-lab7\main.cpp
<<

CMakeFiles\AiSD_lab7.dir\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AiSD_lab7.dir/main.cpp.s"
	C:\PROGRA~2\MICROS~3\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\AiSD_lab7.dir\main.cpp.s /c E:\Programowanie\CLion\AiSD-lab7\main.cpp
<<

# Object files for target AiSD_lab7
AiSD_lab7_OBJECTS = \
"CMakeFiles\AiSD_lab7.dir\main.cpp.obj"

# External object files for target AiSD_lab7
AiSD_lab7_EXTERNAL_OBJECTS =

AiSD_lab7.exe: CMakeFiles\AiSD_lab7.dir\main.cpp.obj
AiSD_lab7.exe: CMakeFiles\AiSD_lab7.dir\build.make
AiSD_lab7.exe: CMakeFiles\AiSD_lab7.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\Programowanie\CLion\AiSD-lab7\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable AiSD_lab7.exe"
	"E:\Programowanie\CLion\CLion 2021.2.3\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\AiSD_lab7.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\mt.exe --manifests -- C:\PROGRA~2\MICROS~3\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\AiSD_lab7.dir\objects1.rsp @<<
 /out:AiSD_lab7.exe /implib:AiSD_lab7.lib /pdb:E:\Programowanie\CLion\AiSD-lab7\cmake-build-debug\AiSD_lab7.pdb /version:0.0 /machine:X86 /debug /INCREMENTAL /subsystem:console  kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\AiSD_lab7.dir\build: AiSD_lab7.exe
.PHONY : CMakeFiles\AiSD_lab7.dir\build

CMakeFiles\AiSD_lab7.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\AiSD_lab7.dir\cmake_clean.cmake
.PHONY : CMakeFiles\AiSD_lab7.dir\clean

CMakeFiles\AiSD_lab7.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" E:\Programowanie\CLion\AiSD-lab7 E:\Programowanie\CLion\AiSD-lab7 E:\Programowanie\CLion\AiSD-lab7\cmake-build-debug E:\Programowanie\CLion\AiSD-lab7\cmake-build-debug E:\Programowanie\CLion\AiSD-lab7\cmake-build-debug\CMakeFiles\AiSD_lab7.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\AiSD_lab7.dir\depend

