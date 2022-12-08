#!/usr/bin/env bats

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"

    cp -r verapdf/* $BATS_TEST_TMPDIR
    cp -r $FILE_PATH/68_1_fail.pdf $BATS_TEST_TMPDIR
}

# FastFailedValidator not supported 'maxNumberOfDisplayedFailedChecks'
@test "#'maxNumberOfDisplayedFailedChecks' was ignored if 'maxFails' defined, --config option" {

    cp -r $BATS_TEST_DIRNAME/config_maxNumberOfDisplayedFailedChecks/validator* $BATS_TEST_TMPDIR/config/
    run $BATS_TEST_TMPDIR/verapdf $BATS_TEST_TMPDIR/68_1_fail.pdf --format html --config

    [ "$status" -eq 1 ]
    assert_output --partial '<b>Failed Checks:</b></td><td>1</td>'
    assert_output --partial '1 occurrences'

}

# FastFailedValidator not supported 'maxNumberOfDisplayedFailedChecks'
@test "#'maxNumberOfDisplayedFailedChecks' was ignored if 'maxFails' defined, cli '--maxfailures' option" {

    run $BATS_TEST_TMPDIR/verapdf $BATS_TEST_TMPDIR/68_1_fail.pdf --format html --maxfailures 2 --maxfailuresdisplayed 0

    [ "$status" -eq 1 ]
    assert_output --partial '<b>Validation Profile:</b></td><td>PDF/A-3A validation profile</td>'
    refute_output --partial '<b>Rule</b>'
    refute_output --partial 'occurrences'

}
