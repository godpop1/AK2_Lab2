cmake_minimum_required(VERSION 3.16)

project(Calculator LANGUAGES C)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)

add_library(calculator_lib STATIC calculator.c)

add_executable(calculator main.c)

target_link_libraries(calculator PRIVATE calculator_lib)
