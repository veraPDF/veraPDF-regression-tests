#!/usr/bin/env bats
bats_require_minimum_version 1.5.0

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"

    cp -r verapdf/* $BATS_TEST_TMPDIR
    cp -r $FILE_PATH/veraPDF_MF3.pdf $BATS_TEST_TMPDIR
}
# If metadata fix is enabled, then we ignore maxFails and report a warning in stderr,
@test '#Disable simultaneously using fixMetadata and maxFails' {

    ERROR_MESSAGES='6'

    run --separate-stderr -- $BATS_TEST_TMPDIR/verapdf $BATS_TEST_TMPDIR/veraPDF_MF3.pdf --maxfailures 1 --fixmetadata

    [ "$status" -eq 1 ]

    output_results=$(echo ${output} | grep -w -o "<errorMessage>The value" | grep -w -o errorMessage | wc -w)
    assert_equal $output_results $ERROR_MESSAGES

    run echo $stderr
    assert_output --partial "WARNING: Option maxfailures is ignored when option fixmetadata is enabled"
}
