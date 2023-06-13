#!/usr/bin/env bats
file=""

STATUS_TO_CHECK=("0" "1" "8")

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Malicious/Resources/Errors"

    SAVEIFS=$IFS
    IFS=$(echo -en "\n\b")

    cp -r verapdf/* $BATS_TEST_TMPDIR
    assert [ ${#STATUS_TO_CHECK[@]} != 0 ]
}

teardown() {
    IFS=$SAVEIFS
    if ! [ -n "$BATS_TEST_COMPLETED" ]; then
        echo -e "\n  Test fail with a file: $file" >&3
    fi
    echo -e "Done ..." >&3
}

@test 'Malicious check. Errors checking...' {
    for status in "${STATUS_TO_CHECK[@]}"; do
        malicious_check $status
    done
}

malicious_check() {
    echo "Checking files with status: $1" >&3
    FILES="status$1/*.pdf"
    for x in $(ls $FILE_PATH/$FILES); do
        printf "%s\n" $x >&3
    done

    for file in $(ls $FILE_PATH/$FILES); do
        run $BATS_TEST_TMPDIR/verapdf $file
        assert_output --partial 'batchSummary totalJobs="1"'
        [ "$status" -eq $1 ]
    done
}
