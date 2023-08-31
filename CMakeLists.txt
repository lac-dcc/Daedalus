cmake_minimum_required(VERSION 3.22.1)
project(printfunc)

set(CMAKE_CXX_STANDARD 17)

find_package(LLVM REQUIRED CONFIG)
add_executable(a.out a.cpp)

message(
	"LLVM:
	Definitions ${LLVM_DEFINITIONS}
	Includes ${LLVM_INCLUDE_DIRS}
	Libraries ${LLVM_LIBRARY_DIRS}
	Targets ${LLVM_TARGETS_TO_BUILD}
	"
)

include_directories(${LLVM_INCLUDE_DIRS})
link_directories(${LLVM_LIBRARY_DIRS})
add_definitions(${LLVM_DEFINITIONS})
