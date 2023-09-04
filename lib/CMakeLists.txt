add_library(printFunc MODULE
    printFunc.cpp
    printFuncPlugin.cpp)

target_include_directories(printFunc PRIVATE
    "${CMAKE_CURRENT_SOURCE_DIR}/../include")