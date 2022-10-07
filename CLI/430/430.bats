setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

# https://github.com/veraPDF/veraPDF-library/issues/430
@test "#430: Errors or warnings are reported in the output XML file" {
    run echo $(verapdf/verapdf $BATS_TEST_DIRNAME/6.1.3-01-fail-5.pdf --policyfile $BATS_TEST_DIRNAME/6.1.3-01-fail-5.sch 2>&1)
    assert_output --partial 'WARNING: Value of ID is not an array of two byte strings'
    assert_output --partial 'SEVERE: Value of ID key is not a string. Ignoring ID'
    assert_output --partial 'policyReport passedChecks="0" failedChecks="0"'
}
