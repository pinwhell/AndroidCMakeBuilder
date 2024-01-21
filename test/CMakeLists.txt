cmake_minimum_required(VERSION 3.20)

include(../ndk_build_cfg.cmake)

Project(TestAndroidCMakeBuilder)

add_library(${PROJECT_NAME}Dynamic SHARED test.cpp)
add_library(${PROJECT_NAME}Static STATIC test.cpp)