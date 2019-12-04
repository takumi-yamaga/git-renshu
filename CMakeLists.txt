# --------------------------------------
# setup the project
cmake_minimum_required(VERSION 3.15 FATAL_ERROR)
project(renshu)
# --------------------------------------

# --------------------------------------
# add library
add_library(greetings hello.cc good_morning.cc)
# --------------------------------------

# --------------------------------------
# add the executable
add_executable(renshu renshu.cc hello.cc)
target_link_libraries(renshu greetings)
# --------------------------------------

