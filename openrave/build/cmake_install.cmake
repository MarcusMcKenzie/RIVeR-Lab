# Install script for directory: /home/marcus/openrave

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-base")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES "/home/marcus/openrave/build/openrave0.15-config")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave")
  execute_process(COMMAND /usr/bin/cmake -E make_directory ${CMAKE_INSTALL_PREFIX}/bin COMMAND /usr/bin/cmake -E make_directory ${CMAKE_INSTALL_PREFIX}/lib/pkgconfig COMMAND /usr/bin/cmake -E make_directory ${CMAKE_INSTALL_PREFIX}/)
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
            if ("$ENV{DESTDIR}" STREQUAL "")
                execute_process(COMMAND "/usr/bin/cmake" -E create_symlink
                                /usr/local/bin/openrave0.15-config
                                /usr/local/bin/openrave-config)
            else ()
                execute_process(COMMAND "/usr/bin/cmake" -E create_symlink
                                /usr/local/bin/openrave0.15-config
                                $ENV{DESTDIR}//usr/local/bin/openrave-config)
            endif ()
        
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/openrave-0.15" TYPE FILE FILES
    "/home/marcus/openrave/build/openrave-config.cmake"
    "/home/marcus/openrave/build/openrave-config-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-base")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/openrave-0.15" TYPE FILE FILES "/home/marcus/openrave/build/openrave_completion.bash")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/marcus/openrave/build/openrave0.15.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/marcus/openrave/build/openrave0.15-core.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
            if ("$ENV{DESTDIR}" STREQUAL "")
                execute_process(COMMAND "/usr/bin/cmake" -E create_symlink
                                /usr/local/lib/pkgconfig/openrave0.15.pc
                                /usr/local/lib/pkgconfig/openrave.pc)
            else ()
                execute_process(COMMAND "/usr/bin/cmake" -E create_symlink
                                /usr/local/lib/pkgconfig/openrave0.15.pc
                                $ENV{DESTDIR}//usr/local/lib/pkgconfig/openrave.pc)
            endif ()
        
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
            if ("$ENV{DESTDIR}" STREQUAL "")
                execute_process(COMMAND "/usr/bin/cmake" -E create_symlink
                                /usr/local/lib/pkgconfig/openrave0.15-core.pc
                                /usr/local/lib/pkgconfig/openrave-core.pc)
            else ()
                execute_process(COMMAND "/usr/bin/cmake" -E create_symlink
                                /usr/local/lib/pkgconfig/openrave0.15-core.pc
                                $ENV{DESTDIR}//usr/local/lib/pkgconfig/openrave-core.pc)
            endif ()
        
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-base")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/openrave-0.15" TYPE FILE FILES "/home/marcus/openrave/build/openrave.bash")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/openrave-0.15/openrave" TYPE FILE FILES
    "/home/marcus/openrave/include/openrave/plugininfo.h"
    "/home/marcus/openrave/include/openrave/planningutils.h"
    "/home/marcus/openrave/include/openrave/logging.h"
    "/home/marcus/openrave/include/openrave/utils.h"
    "/home/marcus/openrave/include/openrave/xmlreaders.h"
    "/home/marcus/openrave/include/openrave/viewer.h"
    "/home/marcus/openrave/include/openrave/module.h"
    "/home/marcus/openrave/include/openrave/kinbody.h"
    "/home/marcus/openrave/include/openrave/plugin.h"
    "/home/marcus/openrave/include/openrave/physicsengine.h"
    "/home/marcus/openrave/include/openrave/plannerparameters.h"
    "/home/marcus/openrave/include/openrave/mathextra.h"
    "/home/marcus/openrave/include/openrave/controller.h"
    "/home/marcus/openrave/include/openrave/environment.h"
    "/home/marcus/openrave/include/openrave/planner.h"
    "/home/marcus/openrave/include/openrave/iksolver.h"
    "/home/marcus/openrave/include/openrave/trajectory.h"
    "/home/marcus/openrave/include/openrave/spacesampler.h"
    "/home/marcus/openrave/include/openrave/openrave.h"
    "/home/marcus/openrave/include/openrave/sensor.h"
    "/home/marcus/openrave/include/openrave/sensorsystem.h"
    "/home/marcus/openrave/include/openrave/geometry.h"
    "/home/marcus/openrave/include/openrave/interface.h"
    "/home/marcus/openrave/include/openrave/robot.h"
    "/home/marcus/openrave/include/openrave/collisionchecker.h"
    "/home/marcus/openrave/build/include/openrave/interfacehashes.h"
    "/home/marcus/openrave/build/include/openrave/config.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-cbindings-dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/openrave-0.15/openrave_c" TYPE FILE FILES "/home/marcus/openrave/include/openrave_c/openrave_c.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/openrave-0.15/rave" TYPE FILE FILES
    "/home/marcus/openrave/rave/rave.h"
    "/home/marcus/openrave/rave/plugin.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-base")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/openrave-0.15" TYPE FILE FILES
    "/home/marcus/openrave/COPYING"
    "/home/marcus/openrave/LICENSE.lgpl"
    "/home/marcus/openrave/LICENSE.apache"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/marcus/openrave/build/cpp-gen-md5/cmake_install.cmake")
  include("/home/marcus/openrave/build/3rdparty/crlibm-1.0beta4/cmake_install.cmake")
  include("/home/marcus/openrave/build/3rdparty/minizip/cmake_install.cmake")
  include("/home/marcus/openrave/build/3rdparty/ivcon/cmake_install.cmake")
  include("/home/marcus/openrave/build/3rdparty/ann/cmake_install.cmake")
  include("/home/marcus/openrave/build/3rdparty/fparser-4.5/cmake_install.cmake")
  include("/home/marcus/openrave/build/3rdparty/convexdecomposition/cmake_install.cmake")
  include("/home/marcus/openrave/build/src/cmake_install.cmake")
  include("/home/marcus/openrave/build/octave_matlab/cmake_install.cmake")
  include("/home/marcus/openrave/build/locale/cmake_install.cmake")
  include("/home/marcus/openrave/build/python/cmake_install.cmake")
  include("/home/marcus/openrave/build/plugins/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/marcus/openrave/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
