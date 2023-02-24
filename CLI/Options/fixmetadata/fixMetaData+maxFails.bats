#!/usr/bin/env bats
bats_require_minimum_version 1.5.0
FILES_TO_CHECK=(
    "veraPDF_MF3.pdf"
    "veraPDF_MF3.zip")

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"

    cp -r verapdf/* $BATS_TEST_TMPDIR
    cp -r $FILE_PATH/veraPDF_MF3.* $BATS_TEST_TMPDIR
    assert [ ${#FILES_TO_CHECK[@]} != 0 ]
}

# If metadata fix is enabled, then we ignore maxFails and report a warning in stderr,
@test '— Disable simultaneously using fixMetadata and maxFails' {
    for file in "${FILES_TO_CHECK[@]}"; do
        using_fixMetadata_and_maxFails_check $file
    done
}

using_fixMetadata_and_maxFails_check() {
    local ERROR_MESSAGES='6'
    echo "Running: $1" >&3
    run --separate-stderr -- $BATS_TEST_TMPDIR/verapdf $BATS_TEST_TMPDIR/$1 --maxfailures 1 --fixmetadata

    output_results=$(echo ${output} | grep -w -o "<errorMessage>The value" | grep -w -o errorMessage | wc -w)
    assert_equal $output_results $ERROR_MESSAGES
    [ "$status" -eq 1 ]

    run echo $stderr
    assert_output --partial "WARNING: Option maxfailures is ignored when option fixmetadata is enabled"
}
