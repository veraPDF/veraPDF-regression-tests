#!/usr/bin/env bats

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"

}

@test "--success, --passed, Logs successful validation checks, --passed" {

    run verapdf/verapdf $FILE_PATH/a.pdf --passed

    [ "$status" -eq 1 ]
    assert_output --partial '<check status="passed">'

}

@test "--success, --passed, Logs successful validation checks, --success" {

    run verapdf/verapdf $FILE_PATH/a.pdf --success

    [ "$status" -eq 1 ]
    assert_output --partial '<check status="passed">'

}
