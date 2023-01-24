cmake_minimum_required(VERSION 3.25)

add_library(CLib SHARED hello.h)
set_target_properties(CLib PROPERTIES LINKER_LANGUAGE CXX)

target_include_directories(CLib
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}
)
