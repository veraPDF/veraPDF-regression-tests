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
@test "#'maxfailuresdisplayed' was ignored if 'maxFails' defined, --config option" {

    cp -r $BATS_TEST_DIRNAME/config_maxNumberOfDisplayedFailedChecks/validator* $BATS_TEST_TMPDIR/config/
    run $BATS_TEST_TMPDIR/verapdf $BATS_TEST_TMPDIR/68_1_fail.pdf --format html --config

    [ "$status" -eq 1 ]
    assert_output --partial '<b>Failed Checks:</b></td><td>1</td>'
    assert_output --partial '1 occurrences'

}

# FastFailedValidator not supported 'maxNumberOfDisplayedFailedChecks'
@test "#'maxfailuresdisplayed' was ignored if 'maxFails' defined: --maxfailures 1, --maxfailuresdisplayed 2" {

    MESSAGES='1'

    run $BATS_TEST_TMPDIR/verapdf $BATS_TEST_TMPDIR/68_1_fail.pdf --format html --maxfailures 1 --maxfailuresdisplayed 2

    [ "$status" -eq 1 ]
    assert_output --partial '<b>Validation Profile:</b></td><td>PDF/A-3A validation profile</td>'
    assert_output --partial '1 occurrences'
    refute_output --partial "2 occurrences"

    # Checking maxfailuresdisplayed ...
    output_results=$(echo ${output} | grep -w -o "MIME type text" | grep -w -o MIME | wc -w)
    run echo $output_results
    assert_equal $output_results $MESSAGES

}

# FastFailedValidator not supported 'maxNumberOfDisplayedFailedChecks'
@test "#'maxfailuresdisplayed' was ignored if 'maxFails' defined: --maxfailures 2, --maxfailuresdisplayed 1" {

    MESSAGES='1'

    run $BATS_TEST_TMPDIR/verapdf $BATS_TEST_TMPDIR/68_1_fail.pdf --format html --maxfailures 2 --maxfailuresdisplayed 1

    [ "$status" -eq 1 ]
    assert_output --partial '<b>Validation Profile:</b></td><td>PDF/A-3A validation profile</td>'
    assert_output --partial "2 occurrences"

    # Checking maxfailuresdisplayed ...
    output_results=$(echo ${output} | grep -w -o "MIME type text" | grep -w -o MIME | wc -w)
    run echo $output_results
    assert_equal $output_results $MESSAGES

}
