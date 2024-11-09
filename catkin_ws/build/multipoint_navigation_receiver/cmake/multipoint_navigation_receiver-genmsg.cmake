# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "multipoint_navigation_receiver: 0 messages, 2 services")

set(MSG_I_FLAGS "-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Imove_base_msgs:/opt/ros/noetic/share/move_base_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(multipoint_navigation_receiver_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/cannot/catkin_ws/src/multipoint_navigation_receiver/srv/obstacle_srv.srv" NAME_WE)
add_custom_target(_multipoint_navigation_receiver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "multipoint_navigation_receiver" "/home/cannot/catkin_ws/src/multipoint_navigation_receiver/srv/obstacle_srv.srv" ""
)

get_filename_component(_filename "/home/cannot/catkin_ws/src/multipoint_navigation_receiver/srv/set_goal_srv.srv" NAME_WE)
add_custom_target(_multipoint_navigation_receiver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "multipoint_navigation_receiver" "/home/cannot/catkin_ws/src/multipoint_navigation_receiver/srv/set_goal_srv.srv" "geometry_msgs/Vector3:geometry_msgs/Quaternion"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(multipoint_navigation_receiver
  "/home/cannot/catkin_ws/src/multipoint_navigation_receiver/srv/obstacle_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multipoint_navigation_receiver
)
_generate_srv_cpp(multipoint_navigation_receiver
  "/home/cannot/catkin_ws/src/multipoint_navigation_receiver/srv/set_goal_srv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multipoint_navigation_receiver
)

### Generating Module File
_generate_module_cpp(multipoint_navigation_receiver
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multipoint_navigation_receiver
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(multipoint_navigation_receiver_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(multipoint_navigation_receiver_generate_messages multipoint_navigation_receiver_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cannot/catkin_ws/src/multipoint_navigation_receiver/srv/obstacle_srv.srv" NAME_WE)
add_dependencies(multipoint_navigation_receiver_generate_messages_cpp _multipoint_navigation_receiver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/multipoint_navigation_receiver/srv/set_goal_srv.srv" NAME_WE)
add_dependencies(multipoint_navigation_receiver_generate_messages_cpp _multipoint_navigation_receiver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(multipoint_navigation_receiver_gencpp)
add_dependencies(multipoint_navigation_receiver_gencpp multipoint_navigation_receiver_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multipoint_navigation_receiver_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(multipoint_navigation_receiver
  "/home/cannot/catkin_ws/src/multipoint_navigation_receiver/srv/obstacle_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multipoint_navigation_receiver
)
_generate_srv_eus(multipoint_navigation_receiver
  "/home/cannot/catkin_ws/src/multipoint_navigation_receiver/srv/set_goal_srv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multipoint_navigation_receiver
)

### Generating Module File
_generate_module_eus(multipoint_navigation_receiver
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multipoint_navigation_receiver
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(multipoint_navigation_receiver_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(multipoint_navigation_receiver_generate_messages multipoint_navigation_receiver_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cannot/catkin_ws/src/multipoint_navigation_receiver/srv/obstacle_srv.srv" NAME_WE)
add_dependencies(multipoint_navigation_receiver_generate_messages_eus _multipoint_navigation_receiver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/multipoint_navigation_receiver/srv/set_goal_srv.srv" NAME_WE)
add_dependencies(multipoint_navigation_receiver_generate_messages_eus _multipoint_navigation_receiver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(multipoint_navigation_receiver_geneus)
add_dependencies(multipoint_navigation_receiver_geneus multipoint_navigation_receiver_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multipoint_navigation_receiver_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(multipoint_navigation_receiver
  "/home/cannot/catkin_ws/src/multipoint_navigation_receiver/srv/obstacle_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multipoint_navigation_receiver
)
_generate_srv_lisp(multipoint_navigation_receiver
  "/home/cannot/catkin_ws/src/multipoint_navigation_receiver/srv/set_goal_srv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multipoint_navigation_receiver
)

### Generating Module File
_generate_module_lisp(multipoint_navigation_receiver
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multipoint_navigation_receiver
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(multipoint_navigation_receiver_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(multipoint_navigation_receiver_generate_messages multipoint_navigation_receiver_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cannot/catkin_ws/src/multipoint_navigation_receiver/srv/obstacle_srv.srv" NAME_WE)
add_dependencies(multipoint_navigation_receiver_generate_messages_lisp _multipoint_navigation_receiver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/multipoint_navigation_receiver/srv/set_goal_srv.srv" NAME_WE)
add_dependencies(multipoint_navigation_receiver_generate_messages_lisp _multipoint_navigation_receiver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(multipoint_navigation_receiver_genlisp)
add_dependencies(multipoint_navigation_receiver_genlisp multipoint_navigation_receiver_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multipoint_navigation_receiver_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(multipoint_navigation_receiver
  "/home/cannot/catkin_ws/src/multipoint_navigation_receiver/srv/obstacle_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multipoint_navigation_receiver
)
_generate_srv_nodejs(multipoint_navigation_receiver
  "/home/cannot/catkin_ws/src/multipoint_navigation_receiver/srv/set_goal_srv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multipoint_navigation_receiver
)

### Generating Module File
_generate_module_nodejs(multipoint_navigation_receiver
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multipoint_navigation_receiver
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(multipoint_navigation_receiver_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(multipoint_navigation_receiver_generate_messages multipoint_navigation_receiver_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cannot/catkin_ws/src/multipoint_navigation_receiver/srv/obstacle_srv.srv" NAME_WE)
add_dependencies(multipoint_navigation_receiver_generate_messages_nodejs _multipoint_navigation_receiver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/multipoint_navigation_receiver/srv/set_goal_srv.srv" NAME_WE)
add_dependencies(multipoint_navigation_receiver_generate_messages_nodejs _multipoint_navigation_receiver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(multipoint_navigation_receiver_gennodejs)
add_dependencies(multipoint_navigation_receiver_gennodejs multipoint_navigation_receiver_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multipoint_navigation_receiver_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(multipoint_navigation_receiver
  "/home/cannot/catkin_ws/src/multipoint_navigation_receiver/srv/obstacle_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multipoint_navigation_receiver
)
_generate_srv_py(multipoint_navigation_receiver
  "/home/cannot/catkin_ws/src/multipoint_navigation_receiver/srv/set_goal_srv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multipoint_navigation_receiver
)

### Generating Module File
_generate_module_py(multipoint_navigation_receiver
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multipoint_navigation_receiver
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(multipoint_navigation_receiver_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(multipoint_navigation_receiver_generate_messages multipoint_navigation_receiver_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cannot/catkin_ws/src/multipoint_navigation_receiver/srv/obstacle_srv.srv" NAME_WE)
add_dependencies(multipoint_navigation_receiver_generate_messages_py _multipoint_navigation_receiver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/multipoint_navigation_receiver/srv/set_goal_srv.srv" NAME_WE)
add_dependencies(multipoint_navigation_receiver_generate_messages_py _multipoint_navigation_receiver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(multipoint_navigation_receiver_genpy)
add_dependencies(multipoint_navigation_receiver_genpy multipoint_navigation_receiver_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multipoint_navigation_receiver_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multipoint_navigation_receiver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multipoint_navigation_receiver
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(multipoint_navigation_receiver_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(multipoint_navigation_receiver_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET move_base_msgs_generate_messages_cpp)
  add_dependencies(multipoint_navigation_receiver_generate_messages_cpp move_base_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(multipoint_navigation_receiver_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multipoint_navigation_receiver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multipoint_navigation_receiver
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(multipoint_navigation_receiver_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(multipoint_navigation_receiver_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET move_base_msgs_generate_messages_eus)
  add_dependencies(multipoint_navigation_receiver_generate_messages_eus move_base_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(multipoint_navigation_receiver_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multipoint_navigation_receiver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multipoint_navigation_receiver
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(multipoint_navigation_receiver_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(multipoint_navigation_receiver_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET move_base_msgs_generate_messages_lisp)
  add_dependencies(multipoint_navigation_receiver_generate_messages_lisp move_base_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(multipoint_navigation_receiver_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multipoint_navigation_receiver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multipoint_navigation_receiver
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(multipoint_navigation_receiver_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(multipoint_navigation_receiver_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET move_base_msgs_generate_messages_nodejs)
  add_dependencies(multipoint_navigation_receiver_generate_messages_nodejs move_base_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(multipoint_navigation_receiver_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multipoint_navigation_receiver)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multipoint_navigation_receiver\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multipoint_navigation_receiver
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(multipoint_navigation_receiver_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(multipoint_navigation_receiver_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET move_base_msgs_generate_messages_py)
  add_dependencies(multipoint_navigation_receiver_generate_messages_py move_base_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(multipoint_navigation_receiver_generate_messages_py std_msgs_generate_messages_py)
endif()
