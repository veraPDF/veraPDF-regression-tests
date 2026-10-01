bats_require_minimum_version 1.5.0

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

# https://github.com/veraPDF/veraPDF-library/issues/1602
@test "#1602: invalid content stream is reported as WARNING" {
    run verapdf/verapdf --format xml --addlogs "$BATS_TEST_DIRNAME/InvalidHexStrings.pdf"

    [ "$status" -eq 0 ]
    assert_output --partial '<logMessage occurrences="1" level="WARNING">Error while parsing content stream. invalid pdf dictionary</logMessage>'
}
