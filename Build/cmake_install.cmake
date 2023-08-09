# Install script for directory: C:/EQMacEmu

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/EQEmu")
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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/EQMacEmu/Build/common/cmake_install.cmake")
  include("C:/EQMacEmu/Build/libs/cmake_install.cmake")
  include("C:/EQMacEmu/Build/submodules/fmt/cmake_install.cmake")
  include("C:/EQMacEmu/Build/submodules/libuv/cmake_install.cmake")
  include("C:/EQMacEmu/Build/libs/zlibng/cmake_install.cmake")
  include("C:/EQMacEmu/Build/submodules/recastnavigation/cmake_install.cmake")
  include("C:/EQMacEmu/Build/shared_memory/cmake_install.cmake")
  include("C:/EQMacEmu/Build/world/cmake_install.cmake")
  include("C:/EQMacEmu/Build/zone/cmake_install.cmake")
  include("C:/EQMacEmu/Build/ucs/cmake_install.cmake")
  include("C:/EQMacEmu/Build/queryserv/cmake_install.cmake")
  include("C:/EQMacEmu/Build/eqlaunch/cmake_install.cmake")
  include("C:/EQMacEmu/Build/loginserver/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "C:/EQMacEmu/Build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
