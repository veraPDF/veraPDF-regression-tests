#!/usr/bin/env bats

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"

    cp -r verapdf/* $BATS_TEST_TMPDIR
    cp -r $FILE_PATH/68_1_fail.pdf $BATS_TEST_TMPDIR
}

# FastFailedValidator not supported 'showErrorMessages'
@test "#'showErrorMessages' was ignored if 'maxFails' defined, --config options" {

    cp -r $BATS_TEST_DIRNAME/config_showErrorMessages/validator* $BATS_TEST_TMPDIR/config/
    run $BATS_TEST_TMPDIR/verapdf $BATS_TEST_TMPDIR/68_1_fail.pdf --config

    [ "$status" -eq 1 ]
    assert_output --partial '<errorMessage>MIME type text/plain;charset=UTF-8 of an embedded file is missing or invalid</errorMessage>'

}

# FastFailedValidator not supported 'showErrorMessages'
@test "#'showErrorMessages' was ignored if 'maxFails' defined, cli options" {

    cp -r $BATS_TEST_DIRNAME/config_showErrorMessages/validator* $BATS_TEST_TMPDIR/config/
    run $BATS_TEST_TMPDIR/verapdf $BATS_TEST_TMPDIR/68_1_fail.pdf --maxfailures 1 --disableerrormessages true

    [ "$status" -eq 1 ]
    refute_output --partial '<errorMessage>MIME type text/plain;charset=UTF-8 of an embedded file is missing or invalid</errorMessage>'

}
