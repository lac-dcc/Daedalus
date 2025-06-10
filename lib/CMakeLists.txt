add_library(daedalus SHARED
	daedalus.cpp
	daedalusPlugin.cpp
	debugCommon.cpp
	ProgramSlice.cpp
	reports.cpp
)

target_include_directories(daedalus PUBLIC
    "${CMAKE_CURRENT_SOURCE_DIR}/../include")
