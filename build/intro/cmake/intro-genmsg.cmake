# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "intro: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iintro:/workspaces/ws_labs/catkin_ws/src/intro/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(intro_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/src/intro/msg/msg1.msg" NAME_WE)
add_custom_target(_intro_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "intro" "/workspaces/ws_labs/catkin_ws/src/intro/msg/msg1.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(intro
  "/workspaces/ws_labs/catkin_ws/src/intro/msg/msg1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/intro
)

### Generating Services

### Generating Module File
_generate_module_cpp(intro
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/intro
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(intro_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(intro_generate_messages intro_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/src/intro/msg/msg1.msg" NAME_WE)
add_dependencies(intro_generate_messages_cpp _intro_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(intro_gencpp)
add_dependencies(intro_gencpp intro_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS intro_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(intro
  "/workspaces/ws_labs/catkin_ws/src/intro/msg/msg1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/intro
)

### Generating Services

### Generating Module File
_generate_module_eus(intro
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/intro
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(intro_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(intro_generate_messages intro_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/src/intro/msg/msg1.msg" NAME_WE)
add_dependencies(intro_generate_messages_eus _intro_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(intro_geneus)
add_dependencies(intro_geneus intro_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS intro_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(intro
  "/workspaces/ws_labs/catkin_ws/src/intro/msg/msg1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/intro
)

### Generating Services

### Generating Module File
_generate_module_lisp(intro
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/intro
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(intro_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(intro_generate_messages intro_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/src/intro/msg/msg1.msg" NAME_WE)
add_dependencies(intro_generate_messages_lisp _intro_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(intro_genlisp)
add_dependencies(intro_genlisp intro_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS intro_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(intro
  "/workspaces/ws_labs/catkin_ws/src/intro/msg/msg1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/intro
)

### Generating Services

### Generating Module File
_generate_module_nodejs(intro
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/intro
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(intro_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(intro_generate_messages intro_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/src/intro/msg/msg1.msg" NAME_WE)
add_dependencies(intro_generate_messages_nodejs _intro_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(intro_gennodejs)
add_dependencies(intro_gennodejs intro_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS intro_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(intro
  "/workspaces/ws_labs/catkin_ws/src/intro/msg/msg1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/intro
)

### Generating Services

### Generating Module File
_generate_module_py(intro
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/intro
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(intro_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(intro_generate_messages intro_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspaces/ws_labs/catkin_ws/src/intro/msg/msg1.msg" NAME_WE)
add_dependencies(intro_generate_messages_py _intro_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(intro_genpy)
add_dependencies(intro_genpy intro_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS intro_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/intro)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/intro
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(intro_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/intro)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/intro
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(intro_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/intro)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/intro
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(intro_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/intro)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/intro
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(intro_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/intro)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/intro\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/intro
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(intro_generate_messages_py std_msgs_generate_messages_py)
endif()
