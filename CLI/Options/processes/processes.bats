#!/usr/bin/env bats
FILES_TO_CHECK=(
    "pdf"
    "zip")

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
    assert [ ${#FILES_TO_CHECK[@]} != 0 ]
}

@test "--processes, The number of processes which will be used" {

    for file in "${FILES_TO_CHECK[@]}"; do
        processes_check $file
    done
}

processes_check() {
    echo "Running: $1" >&3
    run verapdf/verapdf $BATS_TEST_DIRNAME/a1.$1 $BATS_TEST_DIRNAME/a2.$1 $BATS_TEST_DIRNAME/a3.$1 $BATS_TEST_DIRNAME/a4.$1 --processes 2 --format json
    assert_output --partial '"multiJob":false'
    refute_output --partial '"multiJob":true' # expected is not present when using --processes
    [ "$status" -eq 1 ]
}
