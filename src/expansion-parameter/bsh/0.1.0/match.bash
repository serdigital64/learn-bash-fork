#!/usr/bin/env bash
bl64_msg_show_separator 'pattern: %%'
test_value='/full/path/test'
printf "[%s]-> [%%%%/*]: %s\n" "$test_value" "${test_value%%/*}"

test_value='/full/path/test/'
printf "[%s]-> [%%%%/*]: %s\n" "$test_value" "${test_value%%/*}"

test_value='/test/'
printf "[%s]-> [%%%%/*]: %s\n" "$test_value" "${test_value%%/*}"

test_value='/test'
printf "[%s]-> [%%%%/*]: %s\n" "$test_value" "${test_value%%/*}"

test_value='test'
printf "[%s]-> [%%%%/*]: %s\n" "$test_value" "${test_value%%/*}"

bl64_msg_show_separator 'pattern: %'
test_value='/full/path/test'
printf "[%s]-> [%%/*]: %s\n" "$test_value" "${test_value%/*}"

test_value='/full/path/test/'
printf "[%s]-> [%%/*]: %s\n" "$test_value" "${test_value%/*}"

test_value='/test/'
printf "[%s]-> [%%/*]: %s\n" "$test_value" "${test_value%/*}"

test_value='/test'
printf "[%s]-> [%%/*]: %s\n" "$test_value" "${test_value%/*}"

test_value='test'
printf "[%s]-> [%%/*]: %s\n" "$test_value" "${test_value%/*}"

bl64_msg_show_separator 'pattern: #'
test_value='test-value-23.3'
printf '[%s]-> [#*value-]: %s\n' "$test_value" "${test_value#*value-}"
printf '[%s]-> [#value-*]: %s\n' "$test_value" "${test_value#value-*}"
printf '[%s]-> [#*-]: %s\n' "$test_value" "${test_value#*-}"
printf '[%s]-> [#-*]: %s\n' "$test_value" "${test_value#-*}"

bl64_msg_show_separator 'pattern: ##'
test_value='test-value-23.3'
printf '[%s]-> [##*value-]: %s\n' "$test_value" "${test_value##*value-}"
printf '[%s]-> [##value-*]: %s\n' "$test_value" "${test_value##value-*}"
printf '[%s]-> [##*-]: %s\n' "$test_value" "${test_value##*-}"
printf '[%s]-> [##-*]: %s\n' "$test_value" "${test_value##-*}"
