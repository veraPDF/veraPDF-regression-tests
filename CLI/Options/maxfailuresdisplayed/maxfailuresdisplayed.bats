#!/usr/bin/env bats
bats_require_minimum_version 1.5.0

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"

}

@test "--maxfailuresdisplayed, Sets maximum amount of failed checks displayed for each rule, --maxfailuresdisplayed 0" {

    run --separate-stderr -- verapdf/verapdf $FILE_PATH/68_1_fail.pdf --maxfailuresdisplayed 0

    [ "$status" -eq 1 ]
    assert_output --partial "<errorMessage>MIME type text/plain;charset=UTF-8 of an embedded file is missing or invalid</errorMessage>"

    run echo $stderr
    assert_output --partial "WARNING: Argument of option maxfailuresdisplayed 0 is not supported and changed to 1"

}

@test "--maxfailuresdisplayed, Sets maximum amount of failed checks displayed for each rule, --maxfailuresdisplayed 2" {

    ERROR_MESSAGES='2'

    run verapdf/verapdf $FILE_PATH/68_1_fail.pdf --maxfailuresdisplayed 2

    [ "$status" -eq 1 ]

    output_results=$(echo ${output} | grep -w -o "<errorMessage>MIME type text" | grep -w -o errorMessage | wc -w)
    run echo $output_results
    assert_output --partial $ERROR_MESSAGES
}
