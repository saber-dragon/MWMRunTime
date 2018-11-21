cmake_minimum_required(VERSION 3.0)

project(MWMRunTime)

add_executable(measure measure.cpp SERENADE.h)
target_link_libraries(measure armadillo fmt)