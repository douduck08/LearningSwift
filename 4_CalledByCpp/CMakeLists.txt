cmake_minimum_required(VERSION 3.25)

project(
    CalledByCpp
    VERSION 1.0
    LANGUAGES CXX
)

add_subdirectory(SwiftLib)

add_executable(hello-swift main.cpp)
target_link_libraries(hello-swift PRIVATE SwiftLib)