#!/usr/bin/env bats

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"

}

@test "--policyfile, Select a policy schematron or XSL file" {

    run verapdf/verapdf $FILE_PATH/FormVPF_pdfa.pdf --policyfile $BATS_TEST_DIRNAME/FormVPF_pdfa.sch

    [ "$status" -eq 0 ]
    assert_output --partial 'policyReport passedChecks="0" failedChecks="0"'

}
