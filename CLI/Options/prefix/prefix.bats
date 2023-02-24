#!/usr/bin/env bats
setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"

    cp -r verapdf/* $BATS_TEST_TMPDIR
    cp -r $FILE_PATH/veraPDF_MF3.* $BATS_TEST_TMPDIR
}

@test '--prefix. Sets file name prefix for any fixed files' {

    run $BATS_TEST_TMPDIR/verapdf $BATS_TEST_TMPDIR/veraPDF_MF3.pdf --prefix new_prefix_ --fixmetadata

    [ "$status" -eq 1 ]
    assert [ -f $BATS_TEST_TMPDIR/new_prefix_veraPDF_MF3.pdf ] # check if a file exists
}

@test '--prefix. Sets file name prefix for any fixed files, zip file' {

    run $BATS_TEST_TMPDIR/verapdf $BATS_TEST_TMPDIR/veraPDF_MF3.zip --prefix new_prefix_ --fixmetadata --savefolder $BATS_TEST_TMPDIR

    [ "$status" -eq 1 ]
    # echo $(ls -la $BATS_TEST_TMPDIR) >&3
    assert [ -f $BATS_TEST_TMPDIR/new_prefix_veraPDF_MF3.zip\\veraPDF_MF3.pdf ] # check if a file exists
}
