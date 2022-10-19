setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

# https://github.com/veraPDF/veraPDF-library/pull/1286
@test "#1286, Added logs output to html report, CLI check" {

    run verapdf/verapdf --format html --addlogs $BATS_TEST_DIRNAME/6.1.3-01-fail-5.pdf

    [ "$status" -eq 0 ]

    assert_output --partial 'WARNING</b></font></b></td><td width="650" style="word-break: break-all">Value of ID is not an array of two byte strings'
    assert_output --partial 'SEVERE</b></font></b></td><td width="650" style="word-break: break-all">Value of ID key is not a string. Ignoring ID'
}
