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

@test "--format. Chooses output format, raw" {

    for file in "${FILES_TO_CHECK[@]}"; do
        format_raw $file
    done
}

@test "--format. Chooses output format, mrr" {

    for file in "${FILES_TO_CHECK[@]}"; do
        format_mrr $file
    done
}

@test "--format. Chooses output format, xml" {

    for file in "${FILES_TO_CHECK[@]}"; do
        format_xml $file
    done
}

@test "--format. Chooses output format, text" {

    run verapdf/verapdf $FILE_PATH/6.1.3-01-fail-5.pdf --format text
    [ "$status" -eq 0 ]
    assert_output --partial "PASS $FILE_PATH/6.1.3-01-fail-5.pdf"
}

@test "--format. Chooses output format, text, zip file" {

    run verapdf/verapdf $FILE_PATH/6.1.3-01-fail-5.zip --format text
    [ "$status" -eq 0 ]
    assert_output --partial "PASS $FILE_PATH/6.1.3-01-fail-5.zip\\6.1.3-01-fail-5.pdf"
}

@test "--format. Chooses output format, html" {

    for file in "${FILES_TO_CHECK[@]}"; do
        format_html $file
    done
}

@test "--format. Chooses output format, json" {

    for file in "${FILES_TO_CHECK[@]}"; do
        format_json $file
    done
}

format_raw() {
    echo "Running: $1" >&3
    run verapdf/verapdf $FILE_PATH/$1 --format raw
    assert_output --partial '<rawResults>'
    assert_output --partial '<batchSummary totalJobs="1" failedToParse="0" encrypted="0" outOfMemory="0" veraExceptions="0">'
    [ "$status" -eq 0 ]
}

format_mrr() {
    echo "Running: $1" >&3
    run verapdf/verapdf $FILE_PATH/$1 --format mrr
    assert_output --partial '<report>'
    assert_output --partial '<batchSummary totalJobs="1" failedToParse="0" encrypted="0" outOfMemory="0" veraExceptions="0">'
    [ "$status" -eq 0 ]
}

format_xml() {
    echo "Running: $1" >&3
    run verapdf/verapdf $FILE_PATH/$1 --format xml
    assert_output --partial '<report>'
    assert_output --partial '<batchSummary totalJobs="1" failedToParse="0" encrypted="0" outOfMemory="0" veraExceptions="0">'
    [ "$status" -eq 0 ]
}

format_text() {
    echo "Running: $1" >&3
    run verapdf/verapdf $FILE_PATH/$1 --format text
    assert_output --partial "PASS $FILE_PATH/6.1.3-01-fail-5.pdf"
    [ "$status" -eq 0 ]
}

format_html() {
    echo "Running: $1" >&3
    run verapdf/verapdf $FILE_PATH/$1 --format html
    assert_output --partial '<b>Validation Profile:</b></td><td>PDF/A-2B validation profile</td>'
    [ "$status" -eq 0 ]
}

format_json() {
    echo "Running: $1" >&3
    run verapdf/verapdf $FILE_PATH/$1 --format json
    assert_output --partial '"jobEndStatus":"normal"'
    assert_output --partial '"profileName":"PDF/A-2B validation profile"'
    assert_output --partial '"statement":"PDF file is compliant with Validation Profile requirements."'
    assert_output --partial '"compliant":true'
    [ "$status" -eq 0 ]
}
