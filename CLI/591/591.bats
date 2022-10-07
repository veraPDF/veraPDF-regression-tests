setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

# https://github.com/veraPDF/veraPDF-library/issues/591
@test "#591: Specifying --passed or --success options in combination with verbosity -v (--verbose)" {

    run echo $(verapdf/verapdf $BATS_TEST_DIRNAME/68_1_fail.pdf -v --passed --format text 2>&1 | grep -w -c FAIL)
    assert_equal $output '3'

    run echo $(verapdf/verapdf $BATS_TEST_DIRNAME/68_1_fail.pdf -v --passed --format text 2>&1 | grep -w -c PASS)
    assert_equal $output '68'
}
