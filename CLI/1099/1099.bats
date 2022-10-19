setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

# https://github.com/veraPDF/veraPDF-library/issues/1099
@test "#1099: Support input files that do not end with ".pdf"" {
    run verapdf/verapdf $BATS_TEST_DIRNAME/159759 --nonpdfext

    [ "$status" -eq 0 ]
    
    assert_output --partial '<batchSummary totalJobs="1" failedToParse="0" encrypted="0" outOfMemory="0" veraExceptions="0">'
    assert_output --partial '<validationReports compliant="1" nonCompliant="0" failedJobs="0">1</validationReports>'
}
