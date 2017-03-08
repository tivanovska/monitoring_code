# Install script for directory: /home/tiva/catkin_ws/src/camera_control_msgs

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/tiva/catkin_ws/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/camera_control_msgs/action" TYPE FILE FILES
    "/home/tiva/catkin_ws/src/camera_control_msgs/action/GrabAndSaveImage.action"
    "/home/tiva/catkin_ws/src/camera_control_msgs/action/GrabHDRImage.action"
    "/home/tiva/catkin_ws/src/camera_control_msgs/action/GrabImages.action"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/camera_control_msgs/msg" TYPE FILE FILES
    "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageAction.msg"
    "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionGoal.msg"
    "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionResult.msg"
    "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionFeedback.msg"
    "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageGoal.msg"
    "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageResult.msg"
    "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/camera_control_msgs/msg" TYPE FILE FILES
    "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageAction.msg"
    "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionGoal.msg"
    "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionResult.msg"
    "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionFeedback.msg"
    "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageGoal.msg"
    "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageResult.msg"
    "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/camera_control_msgs/msg" TYPE FILE FILES
    "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesAction.msg"
    "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionGoal.msg"
    "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionResult.msg"
    "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionFeedback.msg"
    "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesGoal.msg"
    "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesResult.msg"
    "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/camera_control_msgs/srv" TYPE FILE FILES
    "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetGain.srv"
    "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetBinning.srv"
    "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetExposure.srv"
    "/home/tiva/catkin_ws/src/camera_control_msgs/srv/GetCamProperties.srv"
    "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetBool.srv"
    "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetGamma.srv"
    "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetBrightness.srv"
    "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetSleeping.srv"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/camera_control_msgs/cmake" TYPE FILE FILES "/home/tiva/catkin_ws/build/camera_control_msgs/catkin_generated/installspace/camera_control_msgs-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/tiva/catkin_ws/devel/include/camera_control_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/tiva/catkin_ws/devel/share/common-lisp/ros/camera_control_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/tiva/catkin_ws/devel/lib/python2.7/dist-packages/camera_control_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/tiva/catkin_ws/devel/lib/python2.7/dist-packages/camera_control_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/tiva/catkin_ws/build/camera_control_msgs/catkin_generated/installspace/camera_control_msgs.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/camera_control_msgs/cmake" TYPE FILE FILES "/home/tiva/catkin_ws/build/camera_control_msgs/catkin_generated/installspace/camera_control_msgs-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/camera_control_msgs/cmake" TYPE FILE FILES
    "/home/tiva/catkin_ws/build/camera_control_msgs/catkin_generated/installspace/camera_control_msgsConfig.cmake"
    "/home/tiva/catkin_ws/build/camera_control_msgs/catkin_generated/installspace/camera_control_msgsConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/camera_control_msgs" TYPE FILE FILES "/home/tiva/catkin_ws/src/camera_control_msgs/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

