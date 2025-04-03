file(GLOB TEST_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/*.c" "${CMAKE_CURRENT_SOURCE_DIR}/*.cpp")

configure_file(${CMAKE_CURRENT_SOURCE_DIR}/test-runner.sh ${CMAKE_CURRENT_BINARY_DIR}/test-runner.sh COPYONLY)

foreach(TEST_SOURCE ${TEST_SOURCES})
    get_filename_component(TEST_NAME ${TEST_SOURCE} NAME_WE)
    set(TEST_INPUT_FILE "${CMAKE_CURRENT_SOURCE_DIR}/${TEST_NAME}.input")
    if (EXISTS ${TEST_INPUT_FILE})
        file(READ ${TEST_INPUT_FILE} TEST_INPUT)
    else()
        set(TEST_INPUT "")
    endif()
    add_test(NAME ${TEST_NAME} COMMAND ./test-runner.sh ${TEST_SOURCE} "${TEST_INPUT}")
endforeach()
