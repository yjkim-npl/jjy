cmake_minimum_required(VERSION 3.10)
project(YATCH)

file(GLOB sources ${PROJECT_SOURCE_DIR}/src/*.cc)
file(GLOB headers ${PROJECT_SOURCE_DIR}/include/*.h)
add_executable(yatch yatch.cc ${sources} ${headers})
