#
# This file is used to executed given unit test commands locally, handling
# additional arguments like 'exhaustive'
#

EXECUTE_PROCESS(COMMAND
    ${DCMTK_CTEST_TESTCASE_COMMAND} ${DCMTK_CTEST_EXTRA_ARGUMENTS} ${DCMTK_CTEST_TEST_NAME}
    RESULT_VARIABLE RESULT
)

# We cannot forward the result value to CMake, so print it instead and let CMake
# return with code '1' or whatever it deems appropriate to notify about an error.
IF(RESULT)
    MESSAGE(FATAL_ERROR "Test command returned: ${RESULT}")
ENDIF()