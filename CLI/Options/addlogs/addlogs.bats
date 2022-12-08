#!/usr/bin/env bats

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"
}

@test "--addlogs, Add logs to mrr, json or html report. mrr" {

    run verapdf/verapdf $FILE_PATH/6.1.3-01-fail-5.pdf --addlogs --format mrr

    [ "$status" -eq 0 ]
    assert_output --partial '<logMessage occurrences="2" level="WARNING">Value of ID is not an array of two byte strings</logMessage>'
    assert_output --partial '<logMessage occurrences="2" level="SEVERE">Value of ID key is not a string. Ignoring ID</logMessage>'
}

@test "--addlogs, Add logs to mrr, json or html report. json" {

    run verapdf/verapdf $FILE_PATH/6.1.3-01-fail-5.pdf --addlogs --format json

    [ "$status" -eq 0 ]
    assert_output --partial '{"occurrences":2,"level":"WARNING","message":"Value of ID is not an array of two byte strings"}'
    assert_output --partial '{"occurrences":2,"level":"SEVERE","message":"Value of ID key is not a string. Ignoring ID"}'
}

@test "--addlogs, Add logs to mrr, json or html report. html" {

    run verapdf/verapdf $FILE_PATH/6.1.3-01-fail-5.pdf --addlogs --format html

    [ "$status" -eq 0 ]
    assert_output --partial '<b>WARNING</b></font></b></td><td width="650" style="word-break: break-all">Value of ID is not an array of two byte strings</td>'
}
