add_library(daedalus SHARED
	daedalus.cpp
	daedalusPlugin.cpp
	debugCommon.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/../include/wyvern/ProgramSlice.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/../include/wyvern/DebugUtils.cpp
	)

target_include_directories(daedalus PUBLIC
    "${CMAKE_CURRENT_SOURCE_DIR}/../include")
