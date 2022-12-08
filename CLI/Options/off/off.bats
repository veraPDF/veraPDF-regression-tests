#!/usr/bin/env bats

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"

}

@test "--off, Turns off validation" {

    run verapdf/verapdf $FILE_PATH/FormVPF_pdfa.pdf --off

    [ "$status" -eq 0 ]
    refute_output --partial 'profileName='

}
