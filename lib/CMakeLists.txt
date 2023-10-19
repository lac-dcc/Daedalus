add_library(daedalus SHARED
	daedalus.cpp
	daedalusPlugin.cpp)

target_include_directories(daedalus PUBLIC
    "${CMAKE_CURRENT_SOURCE_DIR}/../include")
