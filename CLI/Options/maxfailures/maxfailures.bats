#!/usr/bin/env bats

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"

}

@test "--maxfailures, Sets maximum amount of failed checks" {

    run verapdf/verapdf $FILE_PATH/68_1_fail.pdf --maxfailures 1

    [ "$status" -eq 1 ]
    assert_output --partial 'failedRules="1"'
    assert_output --partial 'failedChecks="1"'
    
}
