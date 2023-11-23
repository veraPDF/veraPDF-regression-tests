bats_require_minimum_version 1.5.0

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"

    cp -r verapdf/* $BATS_TEST_TMPDIR
}

# https://github.com/veraPDF/veraPDF-library/issues/1336
@test "#1336: taskResult element only included if an exception occurred" {

    run --separate-stderr -- $BATS_TEST_TMPDIR/verapdf $FILE_PATH/corruptionOneByteMissing.pdf

    assert_output --partial 'taskException type="PARSE" isExecuted="true" isSuccess="false"'
    [ "$status" -eq 7 ]

    run echo $stderr
    assert_output --partial "WARNING: $FILE_PATH/corruptionOneByteMissing.pdf doesn't appear to be a valid PDF."
}

# https://github.com/veraPDF/veraPDF-library/issues/1336
@test "#1336: taskResult element only included if an exception occurred, json" {

    run $BATS_TEST_TMPDIR/verapdf $FILE_PATH/corruptionOneByteMissing.pdf --format json

    assert_output --partial "\"taskException\":{
  \"exception\" : \"Couldn't parse stream\","

    assert_output --partial "\"executed\" : true,
  \"success\" : false,
  \"exceptionMessage\" : \"Exception: Couldn't parse stream caused by exception: Pages not found\""

    [ "$status" -eq 7 ]
}

# https://github.com/veraPDF/veraPDF-library/issues/1336
@test "#1336: taskResult element only included if an exception occurred, text" {

    run $BATS_TEST_TMPDIR/verapdf $FILE_PATH/corruptionOneByteMissing.pdf --format text

    assert_output --partial "$FILE_PATH/corruptionOneByteMissing.pdf does not appear to be a valid PDF file and could not be parsed."
    [ "$status" -eq 7 ]
}

# https://github.com/veraPDF/veraPDF-library/issues/1336
@test "#1336: taskResult element only included if an exception occurred, html" {

    run $BATS_TEST_TMPDIR/verapdf $FILE_PATH/corruptionOneByteMissing.pdf --format html

    assert_output --partial "class=\"invalid\">Exception: Couldn't parse stream caused by exception: Pages not found"
    [ "$status" -eq 7 ]
}
