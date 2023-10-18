add_library(instrToSlice MODULE
	instrToSlice.cpp
	instrToSlicePlugin.cpp)

target_include_directories(instrToSlice PRIVATE
    "${CMAKE_CURRENT_SOURCE_DIR}/../include")
