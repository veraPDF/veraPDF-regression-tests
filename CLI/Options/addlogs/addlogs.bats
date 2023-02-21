#!/usr/bin/env bats
FILES_TO_CHECK=(
    "6.1.3-01-fail-5.pdf"
    "6.1.3-01-fail-5.zip")

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"
    assert [ ${#FILES_TO_CHECK[@]} != 0 ]
}

@test "--addlogs, Add logs to mrr, json or html report. mrr" {

    for file in "${FILES_TO_CHECK[@]}"; do
        logs_mrr_check $file
    done
}

@test "--addlogs, Add logs to mrr, json or html report. json" {

    for file in "${FILES_TO_CHECK[@]}"; do
        logs_json_check $file
    done
}

@test "--addlogs, Add logs to mrr, json or html report. html" {

    for file in "${FILES_TO_CHECK[@]}"; do
        logs_html_check $file
    done
}

logs_mrr_check() {
    echo "Running: $1" >&3
    run verapdf/verapdf $FILE_PATH/$1 --addlogs --format mrr
    assert_output --partial '<logMessage occurrences="2" level="WARNING">Value of ID is not an array of two byte strings</logMessage>'
    assert_output --partial '<logMessage occurrences="2" level="SEVERE">Value of ID key is not a string. Ignoring ID</logMessage>'
    [ "$status" -eq 0 ]
}

logs_json_check() {
    echo "Running: $1" >&3
    run verapdf/verapdf $FILE_PATH/$1 --addlogs --format json
    assert_output --partial '{"occurrences":2,"level":"WARNING","message":"Value of ID is not an array of two byte strings"}'
    assert_output --partial '{"occurrences":2,"level":"SEVERE","message":"Value of ID key is not a string. Ignoring ID"}'
    [ "$status" -eq 0 ]
}

logs_html_check() {
    echo "Running: $1" >&3
    run verapdf/verapdf $FILE_PATH/$1 --addlogs --format html
    assert_output --partial '<b>WARNING</b></font></b></td><td width="650" style="word-break: break-all">Value of ID is not an array of two byte strings</td>'
    [ "$status" -eq 0 ]
}
