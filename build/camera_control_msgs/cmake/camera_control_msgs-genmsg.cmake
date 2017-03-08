# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "camera_control_msgs: 21 messages, 8 services")

set(MSG_I_FLAGS "-Icamera_control_msgs:/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(camera_control_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageGoal.msg" NAME_WE)
add_custom_target(_camera_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_control_msgs" "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageGoal.msg" ""
)

get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageGoal.msg" NAME_WE)
add_custom_target(_camera_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_control_msgs" "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageGoal.msg" ""
)

get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetBrightness.srv" NAME_WE)
add_custom_target(_camera_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_control_msgs" "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetBrightness.srv" ""
)

get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageAction.msg" NAME_WE)
add_custom_target(_camera_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_control_msgs" "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageAction.msg" "camera_control_msgs/GrabHDRImageActionResult:camera_control_msgs/GrabHDRImageGoal:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:camera_control_msgs/GrabHDRImageActionFeedback:camera_control_msgs/GrabHDRImageActionGoal:std_msgs/Header:sensor_msgs/Image:camera_control_msgs/GrabHDRImageResult:camera_control_msgs/GrabHDRImageFeedback"
)

get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionGoal.msg" NAME_WE)
add_custom_target(_camera_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_control_msgs" "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionGoal.msg" "camera_control_msgs/GrabAndSaveImageGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionResult.msg" NAME_WE)
add_custom_target(_camera_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_control_msgs" "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionResult.msg" "camera_control_msgs/GrabHDRImageResult:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:sensor_msgs/Image"
)

get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetGamma.srv" NAME_WE)
add_custom_target(_camera_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_control_msgs" "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetGamma.srv" ""
)

get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionFeedback.msg" NAME_WE)
add_custom_target(_camera_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_control_msgs" "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionFeedback.msg" "camera_control_msgs/GrabHDRImageFeedback:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetBool.srv" NAME_WE)
add_custom_target(_camera_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_control_msgs" "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetBool.srv" ""
)

get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionGoal.msg" NAME_WE)
add_custom_target(_camera_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_control_msgs" "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionGoal.msg" "camera_control_msgs/GrabHDRImageGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionGoal.msg" NAME_WE)
add_custom_target(_camera_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_control_msgs" "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionGoal.msg" "camera_control_msgs/GrabImagesGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageFeedback.msg" NAME_WE)
add_custom_target(_camera_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_control_msgs" "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageFeedback.msg" ""
)

get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionFeedback.msg" NAME_WE)
add_custom_target(_camera_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_control_msgs" "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionFeedback.msg" "camera_control_msgs/GrabAndSaveImageFeedback:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/GetCamProperties.srv" NAME_WE)
add_custom_target(_camera_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_control_msgs" "/home/tiva/catkin_ws/src/camera_control_msgs/srv/GetCamProperties.srv" ""
)

get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesAction.msg" NAME_WE)
add_custom_target(_camera_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_control_msgs" "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesAction.msg" "camera_control_msgs/GrabImagesActionResult:camera_control_msgs/GrabImagesActionFeedback:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:camera_control_msgs/GrabImagesGoal:camera_control_msgs/GrabImagesActionGoal:std_msgs/Header:sensor_msgs/Image:camera_control_msgs/GrabImagesFeedback:camera_control_msgs/GrabImagesResult"
)

get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesGoal.msg" NAME_WE)
add_custom_target(_camera_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_control_msgs" "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesGoal.msg" ""
)

get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetGain.srv" NAME_WE)
add_custom_target(_camera_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_control_msgs" "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetGain.srv" ""
)

get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetSleeping.srv" NAME_WE)
add_custom_target(_camera_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_control_msgs" "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetSleeping.srv" ""
)

get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionResult.msg" NAME_WE)
add_custom_target(_camera_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_control_msgs" "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionResult.msg" "actionlib_msgs/GoalStatus:camera_control_msgs/GrabImagesResult:actionlib_msgs/GoalID:std_msgs/Header:sensor_msgs/Image"
)

get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionFeedback.msg" NAME_WE)
add_custom_target(_camera_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_control_msgs" "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionFeedback.msg" "actionlib_msgs/GoalStatus:camera_control_msgs/GrabImagesFeedback:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageFeedback.msg" NAME_WE)
add_custom_target(_camera_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_control_msgs" "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageFeedback.msg" ""
)

get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionResult.msg" NAME_WE)
add_custom_target(_camera_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_control_msgs" "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionResult.msg" "camera_control_msgs/GrabAndSaveImageResult:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesResult.msg" NAME_WE)
add_custom_target(_camera_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_control_msgs" "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesResult.msg" "std_msgs/Header:sensor_msgs/Image"
)

get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetExposure.srv" NAME_WE)
add_custom_target(_camera_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_control_msgs" "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetExposure.srv" ""
)

get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetBinning.srv" NAME_WE)
add_custom_target(_camera_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_control_msgs" "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetBinning.srv" ""
)

get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageResult.msg" NAME_WE)
add_custom_target(_camera_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_control_msgs" "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageResult.msg" ""
)

get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageAction.msg" NAME_WE)
add_custom_target(_camera_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_control_msgs" "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageAction.msg" "camera_control_msgs/GrabAndSaveImageGoal:camera_control_msgs/GrabAndSaveImageResult:camera_control_msgs/GrabAndSaveImageActionGoal:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:camera_control_msgs/GrabAndSaveImageFeedback:camera_control_msgs/GrabAndSaveImageActionResult:std_msgs/Header:camera_control_msgs/GrabAndSaveImageActionFeedback"
)

get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesFeedback.msg" NAME_WE)
add_custom_target(_camera_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_control_msgs" "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesFeedback.msg" ""
)

get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageResult.msg" NAME_WE)
add_custom_target(_camera_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_control_msgs" "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageResult.msg" "std_msgs/Header:sensor_msgs/Image"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_cpp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_cpp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_cpp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_cpp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_cpp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_cpp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesAction.msg"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionResult.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesGoal.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesFeedback.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_cpp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_cpp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_cpp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_cpp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_cpp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_cpp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_cpp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_cpp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_cpp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_cpp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageAction.msg"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageGoal.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageResult.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageFeedback.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_cpp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageAction.msg"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionResult.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionFeedback.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageResult.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_cpp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_cpp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_cpp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs
)

### Generating Services
_generate_srv_cpp(camera_control_msgs
  "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetSleeping.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs
)
_generate_srv_cpp(camera_control_msgs
  "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs
)
_generate_srv_cpp(camera_control_msgs
  "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetBrightness.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs
)
_generate_srv_cpp(camera_control_msgs
  "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetExposure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs
)
_generate_srv_cpp(camera_control_msgs
  "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetBinning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs
)
_generate_srv_cpp(camera_control_msgs
  "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs
)
_generate_srv_cpp(camera_control_msgs
  "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetGamma.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs
)
_generate_srv_cpp(camera_control_msgs
  "/home/tiva/catkin_ws/src/camera_control_msgs/srv/GetCamProperties.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs
)

### Generating Module File
_generate_module_cpp(camera_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(camera_control_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(camera_control_msgs_generate_messages camera_control_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageGoal.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_cpp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageGoal.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_cpp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetBrightness.srv" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_cpp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageAction.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_cpp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionGoal.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_cpp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionResult.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_cpp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetGamma.srv" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_cpp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionFeedback.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_cpp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetBool.srv" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_cpp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionGoal.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_cpp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionGoal.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_cpp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageFeedback.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_cpp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionFeedback.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_cpp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/GetCamProperties.srv" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_cpp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesAction.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_cpp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesGoal.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_cpp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetGain.srv" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_cpp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetSleeping.srv" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_cpp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionResult.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_cpp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionFeedback.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_cpp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageFeedback.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_cpp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionResult.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_cpp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesResult.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_cpp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetExposure.srv" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_cpp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetBinning.srv" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_cpp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageResult.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_cpp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageAction.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_cpp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesFeedback.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_cpp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageResult.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_cpp _camera_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(camera_control_msgs_gencpp)
add_dependencies(camera_control_msgs_gencpp camera_control_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS camera_control_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_lisp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_lisp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_lisp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_lisp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_lisp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_lisp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesAction.msg"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionResult.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesGoal.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesFeedback.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_lisp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_lisp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_lisp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_lisp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_lisp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_lisp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_lisp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_lisp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_lisp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_lisp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageAction.msg"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageGoal.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageResult.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageFeedback.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_lisp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageAction.msg"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionResult.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionFeedback.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageResult.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_lisp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_lisp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_lisp(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs
)

### Generating Services
_generate_srv_lisp(camera_control_msgs
  "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetSleeping.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs
)
_generate_srv_lisp(camera_control_msgs
  "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs
)
_generate_srv_lisp(camera_control_msgs
  "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetBrightness.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs
)
_generate_srv_lisp(camera_control_msgs
  "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetExposure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs
)
_generate_srv_lisp(camera_control_msgs
  "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetBinning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs
)
_generate_srv_lisp(camera_control_msgs
  "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs
)
_generate_srv_lisp(camera_control_msgs
  "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetGamma.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs
)
_generate_srv_lisp(camera_control_msgs
  "/home/tiva/catkin_ws/src/camera_control_msgs/srv/GetCamProperties.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs
)

### Generating Module File
_generate_module_lisp(camera_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(camera_control_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(camera_control_msgs_generate_messages camera_control_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageGoal.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_lisp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageGoal.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_lisp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetBrightness.srv" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_lisp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageAction.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_lisp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionGoal.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_lisp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionResult.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_lisp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetGamma.srv" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_lisp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionFeedback.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_lisp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetBool.srv" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_lisp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionGoal.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_lisp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionGoal.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_lisp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageFeedback.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_lisp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionFeedback.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_lisp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/GetCamProperties.srv" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_lisp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesAction.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_lisp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesGoal.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_lisp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetGain.srv" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_lisp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetSleeping.srv" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_lisp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionResult.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_lisp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionFeedback.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_lisp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageFeedback.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_lisp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionResult.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_lisp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesResult.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_lisp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetExposure.srv" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_lisp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetBinning.srv" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_lisp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageResult.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_lisp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageAction.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_lisp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesFeedback.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_lisp _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageResult.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_lisp _camera_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(camera_control_msgs_genlisp)
add_dependencies(camera_control_msgs_genlisp camera_control_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS camera_control_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_py(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_py(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_py(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_py(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_py(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_py(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesAction.msg"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionResult.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesGoal.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesFeedback.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_py(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_py(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_py(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_py(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_py(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_py(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_py(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_py(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_py(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_py(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageAction.msg"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageGoal.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageResult.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageFeedback.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_py(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageAction.msg"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionResult.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionFeedback.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageResult.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_py(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_py(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs
)
_generate_msg_py(camera_control_msgs
  "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs
)

### Generating Services
_generate_srv_py(camera_control_msgs
  "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetSleeping.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs
)
_generate_srv_py(camera_control_msgs
  "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs
)
_generate_srv_py(camera_control_msgs
  "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetBrightness.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs
)
_generate_srv_py(camera_control_msgs
  "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetExposure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs
)
_generate_srv_py(camera_control_msgs
  "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetBinning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs
)
_generate_srv_py(camera_control_msgs
  "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs
)
_generate_srv_py(camera_control_msgs
  "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetGamma.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs
)
_generate_srv_py(camera_control_msgs
  "/home/tiva/catkin_ws/src/camera_control_msgs/srv/GetCamProperties.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs
)

### Generating Module File
_generate_module_py(camera_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(camera_control_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(camera_control_msgs_generate_messages camera_control_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageGoal.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_py _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageGoal.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_py _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetBrightness.srv" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_py _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageAction.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_py _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionGoal.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_py _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionResult.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_py _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetGamma.srv" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_py _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionFeedback.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_py _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetBool.srv" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_py _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageActionGoal.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_py _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionGoal.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_py _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageFeedback.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_py _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionFeedback.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_py _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/GetCamProperties.srv" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_py _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesAction.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_py _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesGoal.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_py _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetGain.srv" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_py _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetSleeping.srv" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_py _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionResult.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_py _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesActionFeedback.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_py _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageFeedback.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_py _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionResult.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_py _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesResult.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_py _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetExposure.srv" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_py _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/src/camera_control_msgs/srv/SetBinning.srv" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_py _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageResult.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_py _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabAndSaveImageAction.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_py _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabImagesFeedback.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_py _camera_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg/GrabHDRImageResult.msg" NAME_WE)
add_dependencies(camera_control_msgs_generate_messages_py _camera_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(camera_control_msgs_genpy)
add_dependencies(camera_control_msgs_genpy camera_control_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS camera_control_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_control_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(camera_control_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
add_dependencies(camera_control_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_control_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(camera_control_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
add_dependencies(camera_control_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_control_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(camera_control_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
add_dependencies(camera_control_msgs_generate_messages_py sensor_msgs_generate_messages_py)
