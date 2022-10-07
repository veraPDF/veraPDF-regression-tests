setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

# https://github.com/veraPDF/veraPDF-library/issues/1099
@test "#1099: Support input files that do not end with ".pdf"." {
    run echo $(verapdf/verapdf $BATS_TEST_DIRNAME/159759 --nonpdfext --policyfile $BATS_TEST_DIRNAME/159759.sch)
    assert_output --partial 'batchSummary totalJobs="1" failedToParse="0"'
}
