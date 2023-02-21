#!/usr/bin/env bats
FILES_TO_CHECK=(
    "68_1_fail.pdf"
    "68_1_fail.zip")

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"
    assert [ ${#FILES_TO_CHECK[@]} != 0 ]
}

@test "--verbose, Adds failed test information to text output" {

    for file in "${FILES_TO_CHECK[@]}"; do
        verbose_check $file
    done
}

verbose_check() {
    echo "Running: $1" >&3
    run verapdf/verapdf $FILE_PATH/$1 --verbose --format text
    assert_output --partial 'FAIL 6.8-1'
    [ "$status" -eq 1 ]
}
