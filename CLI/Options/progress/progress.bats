#!/usr/bin/env bats

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"

}

@test "--progress, Shows the current status of the validation job" {

    run verapdf/verapdf $FILE_PATH/a.pdf --progress

    [ "$status" -eq 1 ]
    assert_output --partial 'Progress: 237 checks / 4 failed / 183 processed objects / 0 in stack'

}
