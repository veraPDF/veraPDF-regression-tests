#!/usr/bin/env bats
FILES_TO_CHECK=(
    "6.1.3-01-fail-5.pdf"
    "6.1.3-01-fail-5.zip")

HIGH_LEVEL_LOG_FILES=(
    "orange.pdf"
    "orange.zip")

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"
    assert [ ${#FILES_TO_CHECK[@]} != 0 ]
    assert [ ${#HIGH_LEVEL_LOG_FILES[@]} != 0 ]
}

@test "--loglevel, Enables logs with level: 0 - OFF" {

    for file in "${FILES_TO_CHECK[@]}"; do
        loglevel_0 $file
    done
}

@test "--loglevel, Enables logs with level: 1 - SEVERE" {

    for file in "${FILES_TO_CHECK[@]}"; do
        loglevel_1 $file
    done
}

@test "--loglevel, Enables logs with level: 2 - WARNING, SEVERE (default)" {

    for file in "${FILES_TO_CHECK[@]}"; do
        loglevel_2 $file
    done
}

@test "--loglevel, Enables logs with level: 3 - CONFIG, INFO, WARNING, SEVERE" {

    for file in "${HIGH_LEVEL_LOG_FILES[@]}"; do
        loglevel_3 $file
    done
}

@test "--loglevel, Enables logs with level: 4 - ALL" {

    for file in "${HIGH_LEVEL_LOG_FILES[@]}"; do
        loglevel_4 $file
    done
}

loglevel_0() {
    echo "Running: $1" >&3
    run verapdf/verapdf $FILE_PATH/$1 --loglevel 0
    refute_output --partial 'SEVERE:'
    refute_output --partial 'WARNING:'
    refute_output --partial 'FINE:'
    [ "$status" -eq 0 ]
}

loglevel_1() {
    echo "Running: $1" >&3
    run verapdf/verapdf $FILE_PATH/$1 --loglevel 1
    assert_output --partial 'SEVERE:'
    refute_output --partial 'WARNING:'
    refute_output --partial 'FINE:'
    [ "$status" -eq 0 ]
}

loglevel_2() {
    echo "Running: $1" >&3
    run verapdf/verapdf $FILE_PATH/$1
    assert_output --partial 'SEVERE:'
    assert_output --partial 'WARNING:'
    refute_output --partial 'FINE:'
    [ "$status" -eq 0 ]
}

loglevel_3() {
    echo "Running: $1" >&3
    run verapdf/verapdf $FILE_PATH/$1 --loglevel 3
    assert_output --partial 'INFO:'
    [ "$status" -eq 0 ]
}

loglevel_4() {
    echo "Running: $1" >&3
    run verapdf/verapdf $FILE_PATH/$1 --loglevel 4
    assert_output --partial 'INFO:'
    assert_output --partial 'FINE:'
    [ "$status" -eq 0 ]
}
