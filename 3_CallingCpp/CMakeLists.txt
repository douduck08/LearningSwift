cmake_minimum_required(VERSION 3.25)

project(
    CallingCpp
    VERSION 1.0
    LANGUAGES Swift
)

add_subdirectory(CLib)

add_executable(hello-cpp main.swift)
target_link_libraries(hello-cpp PRIVATE CLib)