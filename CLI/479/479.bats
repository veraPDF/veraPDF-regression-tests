setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

# https://github.com/veraPDF/veraPDF-library/issues/479
@test "#479: Add directory and recursive processing to CLI" {
    run echo $(verapdf/verapdf $BATS_TEST_DIRNAME/recursive_folder -r -v --format text 2>&1)
    assert_output --partial 'MS2016.pdf'
    assert_output --partial 'Example.pdf'
    assert_output --partial 'recursive_folder/68_1_pass.pdf '
    assert_output --partial 'Sub_folder/68_1_fail.pdf '
}
