setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

# https://github.com/veraPDF/veraPDF-library/issues/444
@test "#444: VeraPDF crashes when passed a non PDF file to validate" {
    run echo $(verapdf/verapdf -f 0 $BATS_TEST_DIRNAME/159759_default.sh --format text 2>&1)
    assert_output --partial 'SEVERE: There are no files to process.'
}
