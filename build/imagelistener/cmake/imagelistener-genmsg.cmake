# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "imagelistener: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iimagelistener:/home/tiva/catkin_ws/src/imagelistener/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(imagelistener_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/tiva/catkin_ws/src/imagelistener/msg/ELVEZ.msg" NAME_WE)
add_custom_target(_imagelistener_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "imagelistener" "/home/tiva/catkin_ws/src/imagelistener/msg/ELVEZ.msg" ""
)

get_filename_component(_filename "/home/tiva/catkin_ws/src/imagelistener/srv/exampleImageProcessing.srv" NAME_WE)
add_custom_target(_imagelistener_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "imagelistener" "/home/tiva/catkin_ws/src/imagelistener/srv/exampleImageProcessing.srv" "imagelistener/ELVEZ"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(imagelistener
  "/home/tiva/catkin_ws/src/imagelistener/msg/ELVEZ.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/imagelistener
)

### Generating Services
_generate_srv_cpp(imagelistener
  "/home/tiva/catkin_ws/src/imagelistener/srv/exampleImageProcessing.srv"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/src/imagelistener/msg/ELVEZ.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/imagelistener
)

### Generating Module File
_generate_module_cpp(imagelistener
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/imagelistener
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(imagelistener_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(imagelistener_generate_messages imagelistener_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tiva/catkin_ws/src/imagelistener/msg/ELVEZ.msg" NAME_WE)
add_dependencies(imagelistener_generate_messages_cpp _imagelistener_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/src/imagelistener/srv/exampleImageProcessing.srv" NAME_WE)
add_dependencies(imagelistener_generate_messages_cpp _imagelistener_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(imagelistener_gencpp)
add_dependencies(imagelistener_gencpp imagelistener_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS imagelistener_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(imagelistener
  "/home/tiva/catkin_ws/src/imagelistener/msg/ELVEZ.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/imagelistener
)

### Generating Services
_generate_srv_lisp(imagelistener
  "/home/tiva/catkin_ws/src/imagelistener/srv/exampleImageProcessing.srv"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/src/imagelistener/msg/ELVEZ.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/imagelistener
)

### Generating Module File
_generate_module_lisp(imagelistener
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/imagelistener
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(imagelistener_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(imagelistener_generate_messages imagelistener_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tiva/catkin_ws/src/imagelistener/msg/ELVEZ.msg" NAME_WE)
add_dependencies(imagelistener_generate_messages_lisp _imagelistener_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/src/imagelistener/srv/exampleImageProcessing.srv" NAME_WE)
add_dependencies(imagelistener_generate_messages_lisp _imagelistener_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(imagelistener_genlisp)
add_dependencies(imagelistener_genlisp imagelistener_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS imagelistener_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(imagelistener
  "/home/tiva/catkin_ws/src/imagelistener/msg/ELVEZ.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imagelistener
)

### Generating Services
_generate_srv_py(imagelistener
  "/home/tiva/catkin_ws/src/imagelistener/srv/exampleImageProcessing.srv"
  "${MSG_I_FLAGS}"
  "/home/tiva/catkin_ws/src/imagelistener/msg/ELVEZ.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imagelistener
)

### Generating Module File
_generate_module_py(imagelistener
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imagelistener
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(imagelistener_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(imagelistener_generate_messages imagelistener_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tiva/catkin_ws/src/imagelistener/msg/ELVEZ.msg" NAME_WE)
add_dependencies(imagelistener_generate_messages_py _imagelistener_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tiva/catkin_ws/src/imagelistener/srv/exampleImageProcessing.srv" NAME_WE)
add_dependencies(imagelistener_generate_messages_py _imagelistener_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(imagelistener_genpy)
add_dependencies(imagelistener_genpy imagelistener_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS imagelistener_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/imagelistener)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/imagelistener
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(imagelistener_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/imagelistener)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/imagelistener
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(imagelistener_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imagelistener)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imagelistener\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imagelistener
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(imagelistener_generate_messages_py std_msgs_generate_messages_py)
