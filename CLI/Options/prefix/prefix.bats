setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"

    cp -r verapdf/* $BATS_TEST_TMPDIR
    cp -r $FILE_PATH/veraPDF_MF3.pdf $BATS_TEST_TMPDIR
}

@test '--prefix. Sets file name prefix for any fixed files' {

    run $BATS_TEST_TMPDIR/verapdf $BATS_TEST_TMPDIR/veraPDF_MF3.pdf --prefix new_prefix_ --fixmetadata

    [ "$status" -eq 1 ]
    assert [ -f $BATS_TEST_TMPDIR/new_prefix_veraPDF_MF3.pdf ] # check if a file exists
}
