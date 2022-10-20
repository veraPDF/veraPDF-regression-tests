bats_require_minimum_version 1.5.0

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

# https://github.com/veraPDF/veraPDF-library/issues/479
@test "#1272: Support encrypted pdf files, --format text and password, En" {
    
    run verapdf/verapdf $BATS_TEST_DIRNAME/1_ªµ_Hello_World_12345_Hello.pdf --format text --password 12345_Hello

    #[ "$status" -eq 1 ]
    assert_output --partial "FAIL $BATS_TEST_DIRNAME/1_ªµ_Hello_World_12345_Hello.pdf"
}

# https://github.com/veraPDF/veraPDF-library/issues/479
@test "#1272: Support encrypted pdf files, --format text and password, Ru" {
    
    run verapdf/verapdf $BATS_TEST_DIRNAME/1_ªµ_Hello_World_12345_Привет.pdf --format text --password 12345_Привет

    [ "$status" -eq 1 ]
    assert_output --partial "FAIL $BATS_TEST_DIRNAME/1_ªµ_Hello_World_12345_Привет.pdf"
}

# https://github.com/veraPDF/veraPDF-library/issues/479
@test "#1272: Support encrypted pdf files, without password veraExceptions="1" check" {
    
    run --separate-stderr -- verapdf/verapdf $BATS_TEST_DIRNAME/1_ªµ_Hello_World_12345_Привет.pdf

    [ "$status" -eq 8 ]

    assert_output --partial '<batchSummary totalJobs="1" failedToParse="0" encrypted="1" outOfMemory="0" veraExceptions="1">'
    [ "${stderr_lines[1]}" = "WARNING: $BATS_TEST_DIRNAME/1_ªµ_Hello_World_12345_Привет.pdf appears to be an encrypted PDF." ]
}
