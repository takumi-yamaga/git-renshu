# --------------------------------------
# add library

# libgreetings .........................
option(GREETINGS_BUILD_SHARED_LIBS "build greetings as a shared library" OFF)
if(GREETINGS_BUILD_SHARED_LIBS)
add_library(greetings SHARED hello.cc good_morning.cc)
else()
add_library(greetings STATIC hello.cc good_morning.cc)
endif()

target_include_directories(greetings PUBLIC ${PROJECT_SOURCE_DIR}/greetings-include)
# ......................................

# --------------------------------------
