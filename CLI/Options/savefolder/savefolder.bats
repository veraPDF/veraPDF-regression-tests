#!/usr/bin/env bats
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

@test '--savefolder. Sets output directory for any fixed files' {

    for file in "${FILES_TO_CHECK[@]}"; do
        savefolder_check $file
    done
}

savefolder_check() {
    echo "Running: $1" >&3

    run $BATS_TEST_TMPDIR/verapdf $BATS_TEST_TMPDIR/$1 --fixmetadata --savefolder $BATS_TEST_TMPDIR/new_folder
    assert [ -f $BATS_TEST_TMPDIR/new_folder/veraFixMd_veraPDF_MF3.pdf ] # check if a file exists
    [ "$status" -eq 1 ]
}
