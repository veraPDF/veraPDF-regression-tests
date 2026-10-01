bats_require_minimum_version 1.5.0

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

# https://github.com/veraPDF/veraPDF-library/issues/1632
@test "#1632: AES-256 R6 encrypted PDF is parsed successfully" {
    run verapdf/verapdf --format xml "$BATS_TEST_DIRNAME/verapdf-hash-loop.pdf"

    assert_output --partial 'encrypted="0"'
    assert_output --partial 'failedJobs="0"'
}