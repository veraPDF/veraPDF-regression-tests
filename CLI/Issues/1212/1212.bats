#!/usr/bin/env bats

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"

}

#https://github.com/veraPDF/veraPDF-library/issues/1212 
@test "#1212: Exception occurred when trying to use custom policy file and --format text" {

    run verapdf/verapdf $FILE_PATH/FormVPF_pdfa.pdf --policyfile $FILE_PATH/FormVPF_pdfa.sch --format text

    [ "$status" -eq 0 ]
    assert_output --partial 'policyReport passedChecks="0" failedChecks="0"'

}


