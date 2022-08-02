# Install script for directory: /Users/yjkim/workspace/git/eic/DRC_generic/Gen

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/yjkim/workspace/git/eic/DRC_generic/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/yjkim/workspace/git/eic/DRC_generic/build/Gen/P8ptcgen")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/P8ptcgen" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/P8ptcgen")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/yjkim/workspace/git/eic/DRC_generic/build/rootIO"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/P8ptcgen")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/yjkim/workspace/git/root/root-v6-24.00/install/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/P8ptcgen")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -u -r "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/P8ptcgen")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/yjkim/workspace/git/eic/DRC_generic/build/Gen/P8generic")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/P8generic" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/P8generic")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/yjkim/workspace/git/eic/DRC_generic/build/rootIO"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/P8generic")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/yjkim/workspace/git/root/root-v6-24.00/install/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/P8generic")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -u -r "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/P8generic")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE FILES
    "/Users/yjkim/workspace/git/eic/DRC_generic/build/Gen/ptcgun.cmnd"
    "/Users/yjkim/workspace/git/eic/DRC_generic/build/Gen/generic.cmnd"
    )
endif()

