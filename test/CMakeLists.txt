cmake_minimum_required(VERSION 3.4.1)

Project(TestAndroidCMakeBuilder)

add_library(${PROJECT_NAME}Dynamic SHARED test.cpp)
add_library(${PROJECT_NAME}Static STATIC test.cpp test_2.cpp)

add_executable(${PROJECT_NAME}Exec main.cpp)

target_link_libraries(${PROJECT_NAME}Exec ${PROJECT_NAME}Static)