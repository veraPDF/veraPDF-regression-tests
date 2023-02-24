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

@test "--maxfailures, Sets maximum amount of failed checks" {

    for file in "${FILES_TO_CHECK[@]}"; do
        maxfailures_check $file
    done
}

maxfailures_check() {
    echo "Running: $1" >&3
    run verapdf/verapdf $FILE_PATH/$1 --maxfailures 1
    assert_output --partial 'failedRules="1"'
    assert_output --partial 'failedChecks="1"'
    [ "$status" -eq 1 ]
}
