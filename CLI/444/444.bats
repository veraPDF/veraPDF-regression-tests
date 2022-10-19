setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

# https://github.com/veraPDF/veraPDF-library/issues/444
@test "#444: VeraPDF crashes when passed a non PDF file to validate" {
    run verapdf/verapdf -f 0 $BATS_TEST_DIRNAME/159759 --format text

    [ "$status" -eq 4 ]
    assert_output --partial 'SEVERE: There are no files to process.'
    assert_output --partial "SEVERE: File $BATS_TEST_DIRNAME/159759 doesn't have a .pdf extension. Try using --nonpdfext flag"
}
