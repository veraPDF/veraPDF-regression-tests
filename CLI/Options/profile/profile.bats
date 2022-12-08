#!/usr/bin/env bats

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"

}

@test "--profile, Loads a Validation Profile from given path and exits if loading fails" {

    run verapdf/verapdf --profile verapdf/profiles/veraPDF-validation-profiles-integration/PDF_A/PDFA-4.xml $FILE_PATH/a.pdf

    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-4 validation profile"'

}