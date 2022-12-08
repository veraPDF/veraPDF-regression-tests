#!/usr/bin/env bats

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
    
}

@test "--debug, Outputs all processed file names." {

    run verapdf/verapdf $BATS_TEST_DIRNAME --debug --format text

    [ "$status" -eq 1 ]
    assert_output --partial "WARNING: $BATS_TEST_DIRNAME/a.pdf"
    assert_output --partial "WARNING: $BATS_TEST_DIRNAME/veraFixMd_a.pdf"
    assert_output --partial "WARNING: $BATS_TEST_DIRNAME/veraFixMd_a_(0).pdf"
}
