#!/usr/bin/env bats

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"

}


@test "--disableerrormessages, Disable detailed error messages in the validation report" {

    run verapdf/verapdf $FILE_PATH/68_1_fail.pdf --disableerrormessages true

    [ "$status" -eq 1 ]
    refute_output --partial '<errorMessage>'

}
