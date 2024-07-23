add_test( test_modbus_header_wrap.should_return_right_header_value /home/ulrich/neurongithub/neuron/build/tests/modbus_test [==[--gtest_filter=test_modbus_header_wrap.should_return_right_header_value]==] --gtest_also_run_disabled_tests)
set_tests_properties( test_modbus_header_wrap.should_return_right_header_value PROPERTIES WORKING_DIRECTORY /home/ulrich/neurongithub/neuron/build/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( test_modbus_header_unwrap.should_return_right_header_value /home/ulrich/neurongithub/neuron/build/tests/modbus_test [==[--gtest_filter=test_modbus_header_unwrap.should_return_right_header_value]==] --gtest_also_run_disabled_tests)
set_tests_properties( test_modbus_header_unwrap.should_return_right_header_value PROPERTIES WORKING_DIRECTORY /home/ulrich/neurongithub/neuron/build/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( test_modbus_code_wrap.should_return_right_code_value /home/ulrich/neurongithub/neuron/build/tests/modbus_test [==[--gtest_filter=test_modbus_code_wrap.should_return_right_code_value]==] --gtest_also_run_disabled_tests)
set_tests_properties( test_modbus_code_wrap.should_return_right_code_value PROPERTIES WORKING_DIRECTORY /home/ulrich/neurongithub/neuron/build/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( test_modbus_code_unwrap.should_return_right_code_value /home/ulrich/neurongithub/neuron/build/tests/modbus_test [==[--gtest_filter=test_modbus_code_unwrap.should_return_right_code_value]==] --gtest_also_run_disabled_tests)
set_tests_properties( test_modbus_code_unwrap.should_return_right_code_value PROPERTIES WORKING_DIRECTORY /home/ulrich/neurongithub/neuron/build/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( test_modbus_address_wrap.should_return_right_address_value /home/ulrich/neurongithub/neuron/build/tests/modbus_test [==[--gtest_filter=test_modbus_address_wrap.should_return_right_address_value]==] --gtest_also_run_disabled_tests)
set_tests_properties( test_modbus_address_wrap.should_return_right_address_value PROPERTIES WORKING_DIRECTORY /home/ulrich/neurongithub/neuron/build/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( test_modbus_address_unwrap.should_return_right_address_value /home/ulrich/neurongithub/neuron/build/tests/modbus_test [==[--gtest_filter=test_modbus_address_unwrap.should_return_right_address_value]==] --gtest_also_run_disabled_tests)
set_tests_properties( test_modbus_address_unwrap.should_return_right_address_value PROPERTIES WORKING_DIRECTORY /home/ulrich/neurongithub/neuron/build/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( test_modbus_data_wrap.should_return_right_data_value /home/ulrich/neurongithub/neuron/build/tests/modbus_test [==[--gtest_filter=test_modbus_data_wrap.should_return_right_data_value]==] --gtest_also_run_disabled_tests)
set_tests_properties( test_modbus_data_wrap.should_return_right_data_value PROPERTIES WORKING_DIRECTORY /home/ulrich/neurongithub/neuron/build/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( test_modbus_data_unwrap.should_return_right_data_value /home/ulrich/neurongithub/neuron/build/tests/modbus_test [==[--gtest_filter=test_modbus_data_unwrap.should_return_right_data_value]==] --gtest_also_run_disabled_tests)
set_tests_properties( test_modbus_data_unwrap.should_return_right_data_value PROPERTIES WORKING_DIRECTORY /home/ulrich/neurongithub/neuron/build/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( modbus_test_TESTS test_modbus_header_wrap.should_return_right_header_value test_modbus_header_unwrap.should_return_right_header_value test_modbus_code_wrap.should_return_right_code_value test_modbus_code_unwrap.should_return_right_code_value test_modbus_address_wrap.should_return_right_address_value test_modbus_address_unwrap.should_return_right_address_value test_modbus_data_wrap.should_return_right_data_value test_modbus_data_unwrap.should_return_right_data_value)