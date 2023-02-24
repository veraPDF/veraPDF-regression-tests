#!/usr/bin/env bats
FILES_TO_CHECK=(
    "a.pdf"
    "a.zip")

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"
    assert [ ${#FILES_TO_CHECK[@]} != 0 ]
}

@test "--progress, Shows the current status of the validation job" {

    for file in "${FILES_TO_CHECK[@]}"; do
        progress_check $file
    done
}

progress_check() {
    echo "Running: $1" >&3
    run verapdf/verapdf $FILE_PATH/$1 --progress
    assert_output --partial 'Progress: 237 checks / 4 failed / 183 processed objects / 0 in stack'
    [ "$status" -eq 1 ]
}
