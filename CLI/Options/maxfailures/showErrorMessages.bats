#!/usr/bin/env bats
FILES_TO_CHECK=(
    "68_1_fail.pdf"
    "68_1_fail.zip")

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"

    cp -r verapdf/* $BATS_TEST_TMPDIR
    cp -r $FILE_PATH/68_1_fail.* $BATS_TEST_TMPDIR
    assert [ ${#FILES_TO_CHECK[@]} != 0 ]
}

# FastFailedValidator not supported 'showErrorMessages'
@test "— 'showErrorMessages' was ignored if 'maxFails' defined, --config options" {

    for file in "${FILES_TO_CHECK[@]}"; do
        showErrorMessages_ignored_maxFails_defined_config $file
    done
}

# FastFailedValidator not supported 'showErrorMessages'
@test "— 'showErrorMessages' was ignored if 'maxfailures' defined, cli options" {

    for file in "${FILES_TO_CHECK[@]}"; do
        showErrorMessages_ignored_maxfailures_1 $file
    done
}

showErrorMessages_ignored_maxFails_defined_config() {
    echo "Running: $1" >&3
    cp -r $BATS_TEST_DIRNAME/config_showErrorMessages/validator* $BATS_TEST_TMPDIR/config/
    run $BATS_TEST_TMPDIR/verapdf $BATS_TEST_TMPDIR/$1 --config
    assert_output --partial '<errorMessage>MIME type text/plain;charset=UTF-8 of an embedded file is missing or invalid</errorMessage>'
    [ "$status" -eq 1 ]
}

showErrorMessages_ignored_maxfailures_1() {
    echo "Running: $1" >&3
    cp -r $BATS_TEST_DIRNAME/config_showErrorMessages/validator* $BATS_TEST_TMPDIR/config/
    run $BATS_TEST_TMPDIR/verapdf $BATS_TEST_TMPDIR/$1 --maxfailures 1 --disableerrormessages
    refute_output --partial '<errorMessage>MIME type text/plain;charset=UTF-8 of an embedded file is missing or invalid</errorMessage>'
    [ "$status" -eq 1 ]
}
