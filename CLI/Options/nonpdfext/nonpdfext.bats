#!/usr/bin/env bats

FILES_TO_CHECK=(
    "6.1.3-01-fail-5"
    "6.1.3-01-fail-5.zip")

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    assert [ ${#FILES_TO_CHECK[@]} != 0 ]
}

@test "--nonpdfext, Select files without .pdf extension" {

    for file in "${FILES_TO_CHECK[@]}"; do
        nonpdfext_check $file
    done
}

nonpdfext_check() {
    echo "Running: $1" >&3

    run verapdf/verapdf $BATS_TEST_DIRNAME/$1 --nonpdfext

    [ "$status" -eq 0 ]
    assert_output --partial 'batchSummary totalJobs="1"'
}
