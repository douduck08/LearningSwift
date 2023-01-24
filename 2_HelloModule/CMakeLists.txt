cmake_minimum_required(VERSION 3.25)

project(
    HelloModule
    VERSION 1.0
    LANGUAGES Swift
)

add_library(Hello hello.swift)
target_include_directories(Hello
    PUBLIC
        $<INSTALL_INTERFACE:${CMAKE_CURRENT_BINARY_DIR}>
)

add_executable(hello-module main.swift)
target_link_libraries(hello-module PRIVATE Hello)