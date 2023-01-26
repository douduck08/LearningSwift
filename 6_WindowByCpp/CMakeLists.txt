cmake_minimum_required(VERSION 3.25)

project(
    WindowByCpp
    VERSION 1.0
    LANGUAGES CXX
)

add_subdirectory(SwiftWin)

add_executable(window-cpp main.cpp)
target_link_libraries(window-cpp PRIVATE SwiftWin)