cmake_minimum_required(VERSION 3.22.1)
project(printfunc)

set(CMAKE_CXX_STANDARD 17)

find_package(LLVM REQUIRED CONFIG)
add_executable(a.out a.cpp)
