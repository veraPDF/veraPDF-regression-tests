#!/usr/bin/env bats
setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"

    cd $BATS_TEST_TMPDIR
    mkdir "with space"
    cd "with space"
    cp -r $PROJECT_ROOT/verapdf/* ./
}

# https://github.com/veraPDF/veraPDF-library/issues/1230
@test "#1230: Exception on Windows OS, if 'destination folder name' contains spaces check" {

    FILE=$BATS_TEST_TMPDIR/"with space"/verapdf
    DIR=$BATS_TEST_TMPDIR/"with space"
    assert [ -f "$FILE" ] # Check if File exists
    assert [ -d "$DIR" ]  # Check if DIR exists

    run $BATS_TEST_TMPDIR/"with space"/verapdf non_exist_file.pdf
    assert_output --partial 'org.verapdf.apps'
    [ "$status" -eq 4 ]
}
