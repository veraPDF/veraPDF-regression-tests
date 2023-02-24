#!/usr/bin/env bats
FILES_TO_CHECK=(
    "FormVPF_pdfa.pdf"
    "FormVPF_pdfa.zip")

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"
    assert [ ${#FILES_TO_CHECK[@]} != 0 ]
}

@test "--off, Turns off validation" {

    for file in "${FILES_TO_CHECK[@]}"; do
        off_check $file
    done
}

off_check() {
    echo "Running: $1" >&3
    run verapdf/verapdf $FILE_PATH/$1 --off
    refute_output --partial 'profileName='
    [ "$status" -eq 0 ]
}
