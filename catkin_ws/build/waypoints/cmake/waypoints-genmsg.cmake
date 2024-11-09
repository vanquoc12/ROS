# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "waypoints: 3 messages, 7 services")

set(MSG_I_FLAGS "-Iwaypoints:/home/cannot/catkin_ws/src/waypoints/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Iwaypoints:/home/cannot/catkin_ws/src/waypoints/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(waypoints_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_msg.msg" NAME_WE)
add_custom_target(_waypoints_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "waypoints" "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_msg.msg" "geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_group.msg" NAME_WE)
add_custom_target(_waypoints_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "waypoints" "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_group.msg" ""
)

get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_array.msg" NAME_WE)
add_custom_target(_waypoints_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "waypoints" "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_array.msg" "waypoints/waypoint_group:geometry_msgs/Quaternion:geometry_msgs/Pose:waypoints/waypoint_msg:geometry_msgs/Point"
)

get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Save_Wp.srv" NAME_WE)
add_custom_target(_waypoints_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "waypoints" "/home/cannot/catkin_ws/src/waypoints/srv/Save_Wp.srv" ""
)

get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Load_Wp.srv" NAME_WE)
add_custom_target(_waypoints_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "waypoints" "/home/cannot/catkin_ws/src/waypoints/srv/Load_Wp.srv" ""
)

get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Run_Wp.srv" NAME_WE)
add_custom_target(_waypoints_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "waypoints" "/home/cannot/catkin_ws/src/waypoints/srv/Run_Wp.srv" ""
)

get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Stop_Wp.srv" NAME_WE)
add_custom_target(_waypoints_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "waypoints" "/home/cannot/catkin_ws/src/waypoints/srv/Stop_Wp.srv" ""
)

get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Delete_Wp.srv" NAME_WE)
add_custom_target(_waypoints_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "waypoints" "/home/cannot/catkin_ws/src/waypoints/srv/Delete_Wp.srv" ""
)

get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Groups_Wp.srv" NAME_WE)
add_custom_target(_waypoints_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "waypoints" "/home/cannot/catkin_ws/src/waypoints/srv/Groups_Wp.srv" ""
)

get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Wp_2_Group.srv" NAME_WE)
add_custom_target(_waypoints_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "waypoints" "/home/cannot/catkin_ws/src/waypoints/srv/Wp_2_Group.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(waypoints
  "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/waypoints
)
_generate_msg_cpp(waypoints
  "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_group.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/waypoints
)
_generate_msg_cpp(waypoints
  "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_array.msg"
  "${MSG_I_FLAGS}"
  "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_group.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/cannot/catkin_ws/src/waypoints/msg/waypoint_msg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/waypoints
)

### Generating Services
_generate_srv_cpp(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Save_Wp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/waypoints
)
_generate_srv_cpp(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Load_Wp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/waypoints
)
_generate_srv_cpp(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Run_Wp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/waypoints
)
_generate_srv_cpp(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Stop_Wp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/waypoints
)
_generate_srv_cpp(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Delete_Wp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/waypoints
)
_generate_srv_cpp(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Groups_Wp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/waypoints
)
_generate_srv_cpp(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Wp_2_Group.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/waypoints
)

### Generating Module File
_generate_module_cpp(waypoints
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/waypoints
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(waypoints_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(waypoints_generate_messages waypoints_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_msg.msg" NAME_WE)
add_dependencies(waypoints_generate_messages_cpp _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_group.msg" NAME_WE)
add_dependencies(waypoints_generate_messages_cpp _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_array.msg" NAME_WE)
add_dependencies(waypoints_generate_messages_cpp _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Save_Wp.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_cpp _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Load_Wp.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_cpp _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Run_Wp.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_cpp _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Stop_Wp.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_cpp _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Delete_Wp.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_cpp _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Groups_Wp.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_cpp _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Wp_2_Group.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_cpp _waypoints_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(waypoints_gencpp)
add_dependencies(waypoints_gencpp waypoints_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS waypoints_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(waypoints
  "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/waypoints
)
_generate_msg_eus(waypoints
  "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_group.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/waypoints
)
_generate_msg_eus(waypoints
  "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_array.msg"
  "${MSG_I_FLAGS}"
  "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_group.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/cannot/catkin_ws/src/waypoints/msg/waypoint_msg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/waypoints
)

### Generating Services
_generate_srv_eus(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Save_Wp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/waypoints
)
_generate_srv_eus(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Load_Wp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/waypoints
)
_generate_srv_eus(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Run_Wp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/waypoints
)
_generate_srv_eus(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Stop_Wp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/waypoints
)
_generate_srv_eus(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Delete_Wp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/waypoints
)
_generate_srv_eus(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Groups_Wp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/waypoints
)
_generate_srv_eus(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Wp_2_Group.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/waypoints
)

### Generating Module File
_generate_module_eus(waypoints
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/waypoints
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(waypoints_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(waypoints_generate_messages waypoints_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_msg.msg" NAME_WE)
add_dependencies(waypoints_generate_messages_eus _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_group.msg" NAME_WE)
add_dependencies(waypoints_generate_messages_eus _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_array.msg" NAME_WE)
add_dependencies(waypoints_generate_messages_eus _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Save_Wp.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_eus _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Load_Wp.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_eus _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Run_Wp.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_eus _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Stop_Wp.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_eus _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Delete_Wp.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_eus _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Groups_Wp.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_eus _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Wp_2_Group.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_eus _waypoints_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(waypoints_geneus)
add_dependencies(waypoints_geneus waypoints_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS waypoints_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(waypoints
  "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/waypoints
)
_generate_msg_lisp(waypoints
  "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_group.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/waypoints
)
_generate_msg_lisp(waypoints
  "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_array.msg"
  "${MSG_I_FLAGS}"
  "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_group.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/cannot/catkin_ws/src/waypoints/msg/waypoint_msg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/waypoints
)

### Generating Services
_generate_srv_lisp(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Save_Wp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/waypoints
)
_generate_srv_lisp(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Load_Wp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/waypoints
)
_generate_srv_lisp(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Run_Wp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/waypoints
)
_generate_srv_lisp(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Stop_Wp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/waypoints
)
_generate_srv_lisp(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Delete_Wp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/waypoints
)
_generate_srv_lisp(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Groups_Wp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/waypoints
)
_generate_srv_lisp(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Wp_2_Group.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/waypoints
)

### Generating Module File
_generate_module_lisp(waypoints
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/waypoints
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(waypoints_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(waypoints_generate_messages waypoints_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_msg.msg" NAME_WE)
add_dependencies(waypoints_generate_messages_lisp _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_group.msg" NAME_WE)
add_dependencies(waypoints_generate_messages_lisp _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_array.msg" NAME_WE)
add_dependencies(waypoints_generate_messages_lisp _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Save_Wp.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_lisp _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Load_Wp.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_lisp _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Run_Wp.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_lisp _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Stop_Wp.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_lisp _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Delete_Wp.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_lisp _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Groups_Wp.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_lisp _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Wp_2_Group.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_lisp _waypoints_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(waypoints_genlisp)
add_dependencies(waypoints_genlisp waypoints_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS waypoints_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(waypoints
  "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/waypoints
)
_generate_msg_nodejs(waypoints
  "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_group.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/waypoints
)
_generate_msg_nodejs(waypoints
  "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_array.msg"
  "${MSG_I_FLAGS}"
  "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_group.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/cannot/catkin_ws/src/waypoints/msg/waypoint_msg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/waypoints
)

### Generating Services
_generate_srv_nodejs(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Save_Wp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/waypoints
)
_generate_srv_nodejs(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Load_Wp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/waypoints
)
_generate_srv_nodejs(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Run_Wp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/waypoints
)
_generate_srv_nodejs(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Stop_Wp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/waypoints
)
_generate_srv_nodejs(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Delete_Wp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/waypoints
)
_generate_srv_nodejs(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Groups_Wp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/waypoints
)
_generate_srv_nodejs(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Wp_2_Group.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/waypoints
)

### Generating Module File
_generate_module_nodejs(waypoints
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/waypoints
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(waypoints_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(waypoints_generate_messages waypoints_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_msg.msg" NAME_WE)
add_dependencies(waypoints_generate_messages_nodejs _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_group.msg" NAME_WE)
add_dependencies(waypoints_generate_messages_nodejs _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_array.msg" NAME_WE)
add_dependencies(waypoints_generate_messages_nodejs _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Save_Wp.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_nodejs _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Load_Wp.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_nodejs _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Run_Wp.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_nodejs _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Stop_Wp.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_nodejs _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Delete_Wp.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_nodejs _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Groups_Wp.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_nodejs _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Wp_2_Group.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_nodejs _waypoints_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(waypoints_gennodejs)
add_dependencies(waypoints_gennodejs waypoints_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS waypoints_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(waypoints
  "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/waypoints
)
_generate_msg_py(waypoints
  "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_group.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/waypoints
)
_generate_msg_py(waypoints
  "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_array.msg"
  "${MSG_I_FLAGS}"
  "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_group.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/cannot/catkin_ws/src/waypoints/msg/waypoint_msg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/waypoints
)

### Generating Services
_generate_srv_py(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Save_Wp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/waypoints
)
_generate_srv_py(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Load_Wp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/waypoints
)
_generate_srv_py(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Run_Wp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/waypoints
)
_generate_srv_py(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Stop_Wp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/waypoints
)
_generate_srv_py(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Delete_Wp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/waypoints
)
_generate_srv_py(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Groups_Wp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/waypoints
)
_generate_srv_py(waypoints
  "/home/cannot/catkin_ws/src/waypoints/srv/Wp_2_Group.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/waypoints
)

### Generating Module File
_generate_module_py(waypoints
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/waypoints
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(waypoints_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(waypoints_generate_messages waypoints_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_msg.msg" NAME_WE)
add_dependencies(waypoints_generate_messages_py _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_group.msg" NAME_WE)
add_dependencies(waypoints_generate_messages_py _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/msg/waypoint_array.msg" NAME_WE)
add_dependencies(waypoints_generate_messages_py _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Save_Wp.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_py _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Load_Wp.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_py _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Run_Wp.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_py _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Stop_Wp.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_py _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Delete_Wp.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_py _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Groups_Wp.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_py _waypoints_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cannot/catkin_ws/src/waypoints/srv/Wp_2_Group.srv" NAME_WE)
add_dependencies(waypoints_generate_messages_py _waypoints_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(waypoints_genpy)
add_dependencies(waypoints_genpy waypoints_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS waypoints_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/waypoints)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/waypoints
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(waypoints_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(waypoints_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET waypoints_generate_messages_cpp)
  add_dependencies(waypoints_generate_messages_cpp waypoints_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/waypoints)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/waypoints
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(waypoints_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(waypoints_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET waypoints_generate_messages_eus)
  add_dependencies(waypoints_generate_messages_eus waypoints_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/waypoints)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/waypoints
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(waypoints_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(waypoints_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET waypoints_generate_messages_lisp)
  add_dependencies(waypoints_generate_messages_lisp waypoints_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/waypoints)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/waypoints
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(waypoints_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(waypoints_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET waypoints_generate_messages_nodejs)
  add_dependencies(waypoints_generate_messages_nodejs waypoints_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/waypoints)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/waypoints\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/waypoints
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(waypoints_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(waypoints_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET waypoints_generate_messages_py)
  add_dependencies(waypoints_generate_messages_py waypoints_generate_messages_py)
endif()
