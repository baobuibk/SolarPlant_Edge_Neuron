if(EXISTS "/home/ulrich/neurongithub/neuron/build/tests/modbus_test[1]_tests.cmake")
  include("/home/ulrich/neurongithub/neuron/build/tests/modbus_test[1]_tests.cmake")
else()
  add_test(modbus_test_NOT_BUILT modbus_test_NOT_BUILT)
endif()
