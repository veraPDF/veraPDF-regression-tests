#!/usr/bin/env bats
bats_require_minimum_version 1.5.0
FILES_TO_CHECK=(
    "68_1_fail.pdf"
    "68_1_fail.zip")

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"

}

@test "--maxfailuresdisplayed, Sets maximum amount of failed checks displayed for each rule, --maxfailuresdisplayed 0" {

    for file in "${FILES_TO_CHECK[@]}"; do
        failuresdisplayed_max_0 $file
    done
}

@test "--maxfailuresdisplayed, Sets maximum amount of failed checks displayed for each rule, --maxfailuresdisplayed 2" {

    for file in "${FILES_TO_CHECK[@]}"; do
        failuresdisplayed_max_2 $file
    done
}

failuresdisplayed_max_0() {
    echo "Running: $1" >&3
    run --separate-stderr -- verapdf/verapdf $FILE_PATH/$1 --maxfailuresdisplayed 0
    [ "$status" -eq 1 ]
    assert_output --partial "<errorMessage>MIME type text/plain;charset=UTF-8 of an embedded file is missing or invalid</errorMessage>"

    run echo $stderr
    assert_output --partial "WARNING: Argument 0 of option maxfailuresdisplayed is not supported and changed to 1"
}

failuresdisplayed_max_2() {

    local ERROR_MESSAGES='2'

    echo "Running: $1" >&3
    run verapdf/verapdf $FILE_PATH/$1 --maxfailuresdisplayed 2
    [ "$status" -eq 1 ]

    output_results=$(echo ${output} | grep -w -o "<errorMessage>MIME type text" | grep -w -o errorMessage | wc -w)
    run echo $output_results
    assert_output --partial $ERROR_MESSAGES
}
