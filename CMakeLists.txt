# --------------------------------------
# setup the project
cmake_minimum_required(VERSION 3.15 FATAL_ERROR)
project(renshu)
# --------------------------------------

# --------------------------------------
# add library

# libgreetings .........................
option(GREETINGS_BUILD_SHARED_LIBS "build greetings as a shared library" OFF)
if(GREETINGS_BUILD_SHARED_LIBS)
add_library(greetings SHARED hello.cc good_morning.cc)
else()
add_library(greetings STATIC hello.cc good_morning.cc)
endif()
# ......................................

# --------------------------------------

# --------------------------------------
# add the executable
add_executable(renshu renshu.cc hello.cc)
target_link_libraries(renshu greetings)
# --------------------------------------

