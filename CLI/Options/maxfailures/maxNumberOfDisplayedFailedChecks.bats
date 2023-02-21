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

# FastFailedValidator not supported 'maxNumberOfDisplayedFailedChecks'
@test "— 'maxfailuresdisplayed' was ignored if 'maxFails' defined, --config option" {

    for file in "${FILES_TO_CHECK[@]}"; do
        maxfailuresdisplayed_ignored_maxFails_defined_config $file
    done
}

# FastFailedValidator not supported 'maxNumberOfDisplayedFailedChecks'
@test "— 'maxfailuresdisplayed' was ignored if 'maxFails' defined: --maxfailures 1, --maxfailuresdisplayed 2" {

    for file in "${FILES_TO_CHECK[@]}"; do
        maxfailuresdisplayed_ignored_maxfailures_1 $file
    done
}

# FastFailedValidator not supported 'maxNumberOfDisplayedFailedChecks'
@test "— 'maxfailuresdisplayed' was ignored if 'maxFails' defined: --maxfailures 2, --maxfailuresdisplayed 1" {

    for file in "${FILES_TO_CHECK[@]}"; do
        maxfailuresdisplayed_ignored_maxfailures_2 $file
    done
}

maxfailuresdisplayed_ignored_maxFails_defined_config() {
    echo "Running: $1" >&3
    cp -r $BATS_TEST_DIRNAME/config_maxNumberOfDisplayedFailedChecks/validator* $BATS_TEST_TMPDIR/config/
    run $BATS_TEST_TMPDIR/verapdf $BATS_TEST_TMPDIR/$1 --format html --config

    assert_output --partial '<b>Failed Checks:</b></td><td>1</td>'
    assert_output --partial '1 occurrences'
    [ "$status" -eq 1 ]
}

maxfailuresdisplayed_ignored_maxfailures_1() {
    local MESSAGES='1'
    echo "Running: $1" >&3
    run $BATS_TEST_TMPDIR/verapdf $BATS_TEST_TMPDIR/$1 --format html --maxfailures 1 --maxfailuresdisplayed 2

    assert_output --partial '<b>Validation Profile:</b></td><td>PDF/A-3A validation profile</td>'
    assert_output --partial '1 occurrences'
    refute_output --partial "2 occurrences"
    [ "$status" -eq 1 ]

    # Checking maxfailuresdisplayed ...
    output_results=$(echo ${output} | grep -w -o "MIME type text" | grep -w -o MIME | wc -w)
    run echo $output_results
    assert_equal $output_results $MESSAGES
}

maxfailuresdisplayed_ignored_maxfailures_2() {
    local MESSAGES='1'
    echo "Running: $1" >&3
    run $BATS_TEST_TMPDIR/verapdf $BATS_TEST_TMPDIR/$1 --format html --maxfailures 2 --maxfailuresdisplayed 1

    [ "$status" -eq 1 ]
    assert_output --partial '<b>Validation Profile:</b></td><td>PDF/A-3A validation profile</td>'
    assert_output --partial "2 occurrences"

    # Checking maxfailuresdisplayed ...
    output_results=$(echo ${output} | grep -w -o "MIME type text" | grep -w -o MIME | wc -w)
    run echo $output_results
    assert_equal $output_results $MESSAGES
}
