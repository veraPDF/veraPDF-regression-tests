#!/usr/bin/env bats

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"

}

@test "--format. Chooses output format, raw" {

    run verapdf/verapdf $FILE_PATH/6.1.3-01-fail-5.pdf --format raw

    [ "$status" -eq 0 ]
    assert_output --partial '<rawResults>'
    assert_output --partial '<batchSummary totalJobs="1" failedToParse="0" encrypted="0" outOfMemory="0" veraExceptions="0">'

}

@test "--format. Chooses output format, mrr" {

    run verapdf/verapdf $FILE_PATH/6.1.3-01-fail-5.pdf --format mrr

    [ "$status" -eq 0 ]
    assert_output --partial '<report>'
    assert_output --partial '<batchSummary totalJobs="1" failedToParse="0" encrypted="0" outOfMemory="0" veraExceptions="0">'

}

@test "--format. Chooses output format, xml" {

    run verapdf/verapdf $FILE_PATH/6.1.3-01-fail-5.pdf --format xml

    [ "$status" -eq 0 ]
    assert_output --partial '<report>'
    assert_output --partial '<batchSummary totalJobs="1" failedToParse="0" encrypted="0" outOfMemory="0" veraExceptions="0">'

}

@test "--format. Chooses output format, text" {

    run verapdf/verapdf $FILE_PATH/6.1.3-01-fail-5.pdf --format text

    [ "$status" -eq 0 ]
    assert_output --partial "PASS $FILE_PATH/6.1.3-01-fail-5.pdf"

}

@test "--format. Chooses output format, html" {

    run verapdf/verapdf $FILE_PATH/6.1.3-01-fail-5.pdf --format html

    [ "$status" -eq 0 ]
    assert_output --partial '<b>Validation Profile:</b></td><td>PDF/A-2B validation profile</td>'

}

@test "--format. Chooses output format, json" {

    run verapdf/verapdf $FILE_PATH/6.1.3-01-fail-5.pdf --format json

    [ "$status" -eq 0 ]

    assert_output --partial '"jobEndStatus":"normal"'
    assert_output --partial '"profileName":"PDF/A-2B validation profile"'
    assert_output --partial '"statement":"PDF file is compliant with Validation Profile requirements."'
    assert_output --partial '"compliant":true'

}
