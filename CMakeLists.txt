cmake_minimum_required(VERSION 3.0)

project(MWMRunTime)

add_executable(measure measure.cpp)
target_link_libraries(measure armadillo lemon)