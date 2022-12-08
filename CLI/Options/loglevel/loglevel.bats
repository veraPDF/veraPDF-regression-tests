#!/usr/bin/env bats

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"

}

@test "--loglevel, Enables logs with level: 0 - OFF" {

    run verapdf/verapdf $FILE_PATH/6.1.3-01-fail-5.pdf --loglevel 0

    [ "$status" -eq 0 ]
    refute_output --partial 'SEVERE:'
    refute_output --partial 'WARNING:'
    refute_output --partial 'FINE:'

}

@test "--loglevel, Enables logs with level: 1 - SEVERE" {

    run verapdf/verapdf $FILE_PATH/6.1.3-01-fail-5.pdf --loglevel 1

    [ "$status" -eq 0 ]
    assert_output --partial 'SEVERE:'
    refute_output --partial 'WARNING:'
    refute_output --partial 'FINE:'

}

@test "--loglevel, Enables logs with level: 2 - WARNING, SEVERE (default)" {

    run verapdf/verapdf $FILE_PATH/6.1.3-01-fail-5.pdf

    [ "$status" -eq 0 ]
    assert_output --partial 'SEVERE:'
    assert_output --partial 'WARNING:'
    refute_output --partial 'FINE:'

}

@test "--loglevel, Enables logs with level: 3 - CONFIG, INFO, WARNING, SEVERE" {

    run verapdf/verapdf $FILE_PATH/orange.pdf --loglevel 3

    [ "$status" -eq 0 ]
    assert_output --partial 'INFO:'

}

@test "--loglevel, Enables logs with level: 4 - ALL" {

    run verapdf/verapdf $FILE_PATH/orange.pdf --loglevel 4

    [ "$status" -eq 0 ]
    assert_output --partial 'INFO:'
    assert_output --partial 'FINE:'

}
