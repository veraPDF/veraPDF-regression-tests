setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

# https://github.com/veraPDF/veraPDF-library/issues/399
@test "#399, CLI: --profile argument, external options check" {
    run echo $(verapdf/verapdf -p verapdf/profiles/veraPDF-validation-profiles-integration/PDF_A/PDFA-4.xml --policyfile $BATS_TEST_DIRNAME/a.sch $BATS_TEST_DIRNAME/a.pdf)
    assert_output --partial 'failedChecks="0"'
}

# https://github.com/veraPDF/veraPDF-library/issues/399
@test "#399, CLI: --profile argument, internal options check" {
    run echo $(verapdf/verapdf -f 4 --policyfile $BATS_TEST_DIRNAME/a.sch $BATS_TEST_DIRNAME/a.pdf)
    assert_output --partial 'failedChecks="0"'
    assert_output --partial 'outOfMemory="0"'
    assert_output --partial 'encrypted="0"'
    assert_output --partial 'veraExceptions="0"'
}
