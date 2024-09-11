add_library(daedalus SHARED
	daedalus.cpp
	daedalusPlugin.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/../include/wyvern/ProgramSlice.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/../include/wyvern/DebugUtils.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/../include/MergeFunc/MergeFunc.cpp
	)

target_include_directories(daedalus PUBLIC
    "${CMAKE_CURRENT_SOURCE_DIR}/../include")
