cmake_minimum_required(VERSION 2.8)
project (Test)
set(CMAKE_CXX_FLAGS "-O2 -lm -std=c++11 -pthread")

include_directories(/usr/include)
include_directories(/usr/include/eigen3)
add_executable(Test Test.cpp)
