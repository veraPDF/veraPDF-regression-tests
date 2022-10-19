setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

# https://github.com/veraPDF/veraPDF-library/issues/802
@test "#802: Non-existing file on verapdf command line" {
    run verapdf/verapdf no_68_1_fail.pdf --format text 2>&1

    [ "$status" -eq 4 ]

    assert_output --partial "pdf doesn't exist."
    assert_output --partial 'SEVERE: There are no files to process.'
}
