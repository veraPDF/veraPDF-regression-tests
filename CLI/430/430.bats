bats_require_minimum_version 1.5.0

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

# https://github.com/veraPDF/veraPDF-library/issues/430
@test "#430: CLI: Reporting of internal errors/warnings to STDOUT results in invalid XML/HTML output" {

    run --separate-stderr -- verapdf/verapdf --format xml $BATS_TEST_DIRNAME/6.1.3-01-fail-5.pdf

    [ "$status" -eq 0 ]

    [ "${stderr_lines[1]}" = "WARNING: Value of ID is not an array of two byte strings" ]
    [ "${stderr_lines[3]}" = "SEVERE: Value of ID key is not a string. Ignoring ID" ]
}
