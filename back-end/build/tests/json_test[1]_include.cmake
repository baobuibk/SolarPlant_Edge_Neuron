if(EXISTS "/home/ulrich/neurongithub/neuron/build/tests/json_test[1]_tests.cmake")
  include("/home/ulrich/neurongithub/neuron/build/tests/json_test[1]_tests.cmake")
else()
  add_test(json_test_NOT_BUILT json_test_NOT_BUILT)
endif()
