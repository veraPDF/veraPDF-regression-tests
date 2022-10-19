setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

# https://github.com/veraPDF/veraPDF-library/issues/449
@test "#449: VeraPDF command line parameter parsing failure should be handled gracefully" {
    run verapdf/verapdf --sdggdf

    [ "$status" -eq 4 ]
    assert_output --partial "--sdggdf doesn't exist"
}

# https://github.com/veraPDF/veraPDF-library/issues/449
@test "#449: VeraPDF command line parameter parsing failure should be handled gracefully, with a file name - show a report" {
    run verapdf/verapdf --sdggdf $BATS_TEST_DIRNAME/159759.pdf

    [ "$status" -eq 0 ]

    assert_output --partial "--sdggdf doesn't exist"
    assert_output --partial '<validationReport profileName="PDF/A-1A validation profile" statement="PDF file is compliant with Validation Profile requirements." isCompliant="true">'
}
