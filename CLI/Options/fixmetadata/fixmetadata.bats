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

@test '--fixmetadata. Performs metadata fixes, --savefolder defined' {
    for file in "${FILES_TO_CHECK[@]}"; do
        fixmetadata_check $file
    done
}

@test "--fixmetadata. Performs metadata fixes, save folder isn't defined, zip file" {

    run --separate-stderr -- verapdf/verapdf $BATS_TEST_TMPDIR/veraPDF_MF3.zip --fixmetadata
    refute_output --partial "metadataRepairReport"
    [ "$status" -eq 1 ]

    run echo $stderr
    assert_output --partial "WARNING: Fixing metadata are not supported for zip processing, if save folder isn't defined"

}

fixmetadata_check() {
    echo "Running: $1" >&3
    run $BATS_TEST_TMPDIR/verapdf $BATS_TEST_TMPDIR/$1 --fixmetadata --savefolder $BATS_TEST_TMPDIR/
    assert_output --partial 'metadataRepairReport status="Repair successful"'
    [ "$status" -eq 1 ]
}
