# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "lab3: 7 messages, 0 services")

set(MSG_I_FLAGS "-Ilab3:/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(lab3_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeAction.msg" NAME_WE)
add_custom_target(_lab3_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lab3" "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeAction.msg" "actionlib_msgs/GoalID:lab3/ChargeActionFeedback:lab3/ChargeGoal:lab3/ChargeActionGoal:actionlib_msgs/GoalStatus:lab3/ChargeFeedback:lab3/ChargeActionResult:std_msgs/Header:lab3/ChargeResult"
)

get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionGoal.msg" NAME_WE)
add_custom_target(_lab3_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lab3" "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:lab3/ChargeGoal"
)

get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionResult.msg" NAME_WE)
add_custom_target(_lab3_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lab3" "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionResult.msg" "actionlib_msgs/GoalID:lab3/ChargeResult:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionFeedback.msg" NAME_WE)
add_custom_target(_lab3_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lab3" "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionFeedback.msg" "lab3/ChargeFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeGoal.msg" NAME_WE)
add_custom_target(_lab3_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lab3" "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeGoal.msg" ""
)

get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeResult.msg" NAME_WE)
add_custom_target(_lab3_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lab3" "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeResult.msg" ""
)

get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeFeedback.msg" NAME_WE)
add_custom_target(_lab3_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lab3" "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionFeedback.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeGoal.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeFeedback.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lab3
)
_generate_msg_cpp(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lab3
)
_generate_msg_cpp(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lab3
)
_generate_msg_cpp(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lab3
)
_generate_msg_cpp(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lab3
)
_generate_msg_cpp(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lab3
)
_generate_msg_cpp(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lab3
)

### Generating Services

### Generating Module File
_generate_module_cpp(lab3
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lab3
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(lab3_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(lab3_generate_messages lab3_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeAction.msg" NAME_WE)
add_dependencies(lab3_generate_messages_cpp _lab3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionGoal.msg" NAME_WE)
add_dependencies(lab3_generate_messages_cpp _lab3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionResult.msg" NAME_WE)
add_dependencies(lab3_generate_messages_cpp _lab3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionFeedback.msg" NAME_WE)
add_dependencies(lab3_generate_messages_cpp _lab3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeGoal.msg" NAME_WE)
add_dependencies(lab3_generate_messages_cpp _lab3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeResult.msg" NAME_WE)
add_dependencies(lab3_generate_messages_cpp _lab3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeFeedback.msg" NAME_WE)
add_dependencies(lab3_generate_messages_cpp _lab3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lab3_gencpp)
add_dependencies(lab3_gencpp lab3_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lab3_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionFeedback.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeGoal.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeFeedback.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lab3
)
_generate_msg_eus(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lab3
)
_generate_msg_eus(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lab3
)
_generate_msg_eus(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lab3
)
_generate_msg_eus(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lab3
)
_generate_msg_eus(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lab3
)
_generate_msg_eus(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lab3
)

### Generating Services

### Generating Module File
_generate_module_eus(lab3
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lab3
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(lab3_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(lab3_generate_messages lab3_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeAction.msg" NAME_WE)
add_dependencies(lab3_generate_messages_eus _lab3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionGoal.msg" NAME_WE)
add_dependencies(lab3_generate_messages_eus _lab3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionResult.msg" NAME_WE)
add_dependencies(lab3_generate_messages_eus _lab3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionFeedback.msg" NAME_WE)
add_dependencies(lab3_generate_messages_eus _lab3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeGoal.msg" NAME_WE)
add_dependencies(lab3_generate_messages_eus _lab3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeResult.msg" NAME_WE)
add_dependencies(lab3_generate_messages_eus _lab3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeFeedback.msg" NAME_WE)
add_dependencies(lab3_generate_messages_eus _lab3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lab3_geneus)
add_dependencies(lab3_geneus lab3_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lab3_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionFeedback.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeGoal.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeFeedback.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lab3
)
_generate_msg_lisp(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lab3
)
_generate_msg_lisp(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lab3
)
_generate_msg_lisp(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lab3
)
_generate_msg_lisp(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lab3
)
_generate_msg_lisp(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lab3
)
_generate_msg_lisp(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lab3
)

### Generating Services

### Generating Module File
_generate_module_lisp(lab3
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lab3
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(lab3_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(lab3_generate_messages lab3_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeAction.msg" NAME_WE)
add_dependencies(lab3_generate_messages_lisp _lab3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionGoal.msg" NAME_WE)
add_dependencies(lab3_generate_messages_lisp _lab3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionResult.msg" NAME_WE)
add_dependencies(lab3_generate_messages_lisp _lab3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionFeedback.msg" NAME_WE)
add_dependencies(lab3_generate_messages_lisp _lab3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeGoal.msg" NAME_WE)
add_dependencies(lab3_generate_messages_lisp _lab3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeResult.msg" NAME_WE)
add_dependencies(lab3_generate_messages_lisp _lab3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeFeedback.msg" NAME_WE)
add_dependencies(lab3_generate_messages_lisp _lab3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lab3_genlisp)
add_dependencies(lab3_genlisp lab3_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lab3_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionFeedback.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeGoal.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeFeedback.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lab3
)
_generate_msg_nodejs(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lab3
)
_generate_msg_nodejs(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lab3
)
_generate_msg_nodejs(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lab3
)
_generate_msg_nodejs(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lab3
)
_generate_msg_nodejs(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lab3
)
_generate_msg_nodejs(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lab3
)

### Generating Services

### Generating Module File
_generate_module_nodejs(lab3
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lab3
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(lab3_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(lab3_generate_messages lab3_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeAction.msg" NAME_WE)
add_dependencies(lab3_generate_messages_nodejs _lab3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionGoal.msg" NAME_WE)
add_dependencies(lab3_generate_messages_nodejs _lab3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionResult.msg" NAME_WE)
add_dependencies(lab3_generate_messages_nodejs _lab3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionFeedback.msg" NAME_WE)
add_dependencies(lab3_generate_messages_nodejs _lab3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeGoal.msg" NAME_WE)
add_dependencies(lab3_generate_messages_nodejs _lab3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeResult.msg" NAME_WE)
add_dependencies(lab3_generate_messages_nodejs _lab3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeFeedback.msg" NAME_WE)
add_dependencies(lab3_generate_messages_nodejs _lab3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lab3_gennodejs)
add_dependencies(lab3_gennodejs lab3_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lab3_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionFeedback.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeGoal.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeFeedback.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lab3
)
_generate_msg_py(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lab3
)
_generate_msg_py(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lab3
)
_generate_msg_py(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lab3
)
_generate_msg_py(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lab3
)
_generate_msg_py(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lab3
)
_generate_msg_py(lab3
  "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lab3
)

### Generating Services

### Generating Module File
_generate_module_py(lab3
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lab3
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(lab3_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(lab3_generate_messages lab3_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeAction.msg" NAME_WE)
add_dependencies(lab3_generate_messages_py _lab3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionGoal.msg" NAME_WE)
add_dependencies(lab3_generate_messages_py _lab3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionResult.msg" NAME_WE)
add_dependencies(lab3_generate_messages_py _lab3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeActionFeedback.msg" NAME_WE)
add_dependencies(lab3_generate_messages_py _lab3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeGoal.msg" NAME_WE)
add_dependencies(lab3_generate_messages_py _lab3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeResult.msg" NAME_WE)
add_dependencies(lab3_generate_messages_py _lab3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/devel/share/lab3/msg/ChargeFeedback.msg" NAME_WE)
add_dependencies(lab3_generate_messages_py _lab3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lab3_genpy)
add_dependencies(lab3_genpy lab3_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lab3_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lab3)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lab3
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(lab3_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(lab3_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lab3)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lab3
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(lab3_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(lab3_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lab3)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lab3
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(lab3_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(lab3_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lab3)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lab3
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(lab3_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(lab3_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lab3)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lab3\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lab3
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(lab3_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(lab3_generate_messages_py std_msgs_generate_messages_py)
endif()
