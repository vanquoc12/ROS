# Install script for directory: /home/cannot/catkin_ws/src/navigation_Yh/yahboomcar_msgs

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
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yahboomcar_msgs/msg" TYPE FILE FILES
    "/home/cannot/catkin_ws/src/navigation_Yh/yahboomcar_msgs/msg/Position.msg"
    "/home/cannot/catkin_ws/src/navigation_Yh/yahboomcar_msgs/msg/PointArray.msg"
    "/home/cannot/catkin_ws/src/navigation_Yh/yahboomcar_msgs/msg/Image_Msg.msg"
    "/home/cannot/catkin_ws/src/navigation_Yh/yahboomcar_msgs/msg/Target.msg"
    "/home/cannot/catkin_ws/src/navigation_Yh/yahboomcar_msgs/msg/TargetArray.msg"
    "/home/cannot/catkin_ws/src/navigation_Yh/yahboomcar_msgs/msg/ArmJoint.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yahboomcar_msgs/srv" TYPE FILE FILES
    "/home/cannot/catkin_ws/src/navigation_Yh/yahboomcar_msgs/srv/RobotArmArray.srv"
    "/home/cannot/catkin_ws/src/navigation_Yh/yahboomcar_msgs/srv/kinemarics.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yahboomcar_msgs/cmake" TYPE FILE FILES "/home/cannot/catkin_ws/src/build/navigation_Yh/yahboomcar_msgs/catkin_generated/installspace/yahboomcar_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/cannot/catkin_ws/src/build/devel/include/yahboomcar_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/cannot/catkin_ws/src/build/devel/share/roseus/ros/yahboomcar_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/cannot/catkin_ws/src/build/devel/share/common-lisp/ros/yahboomcar_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/cannot/catkin_ws/src/build/devel/share/gennodejs/ros/yahboomcar_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/cannot/catkin_ws/src/build/devel/lib/python3/dist-packages/yahboomcar_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/cannot/catkin_ws/src/build/devel/lib/python3/dist-packages/yahboomcar_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/cannot/catkin_ws/src/build/navigation_Yh/yahboomcar_msgs/catkin_generated/installspace/yahboomcar_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yahboomcar_msgs/cmake" TYPE FILE FILES "/home/cannot/catkin_ws/src/build/navigation_Yh/yahboomcar_msgs/catkin_generated/installspace/yahboomcar_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yahboomcar_msgs/cmake" TYPE FILE FILES
    "/home/cannot/catkin_ws/src/build/navigation_Yh/yahboomcar_msgs/catkin_generated/installspace/yahboomcar_msgsConfig.cmake"
    "/home/cannot/catkin_ws/src/build/navigation_Yh/yahboomcar_msgs/catkin_generated/installspace/yahboomcar_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yahboomcar_msgs" TYPE FILE FILES "/home/cannot/catkin_ws/src/navigation_Yh/yahboomcar_msgs/package.xml")
endif()

