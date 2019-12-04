# --------------------------------------
# setup the project
cmake_minimum_required(VERSION 3.15 FATAL_ERROR)
project(renshu)
# --------------------------------------

# --------------------------------------
# add subdirectory
add_subdirectory(lib-greetins)
# --------------------------------------

# --------------------------------------
# add the executable
add_executable(renshu renshu.cc)
target_link_libraries(renshu greetings)
# --------------------------------------

