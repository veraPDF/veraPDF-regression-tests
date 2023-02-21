#!/usr/bin/env bats

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

}

@test "--nonpdfext, Select files without .pdf extension" {

    run verapdf/verapdf $BATS_TEST_DIRNAME/6.1.3-01-fail-5 --nonpdfext 

    [ "$status" -eq 0 ]
    assert_output --partial 'batchSummary totalJobs="1"'
}

@test "--nonpdfext, Select files without .pdf extension, zip file" {
    skip "Need to be fixed"
    run verapdf/verapdf $BATS_TEST_DIRNAME/6.1.3-01-fail-5.zip --nonpdfext 

    [ "$status" -eq 0 ]
    assert_output --partial 'batchSummary totalJobs="1"'
}
