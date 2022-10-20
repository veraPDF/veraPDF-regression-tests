bats_require_minimum_version 1.5.0

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

# https://github.com/veraPDF/veraPDF-library/issues/1214
@test "#1214: Online REST API (demo.verapdf.org), server response check" {
    skip
    run curl -F "file=@$BATS_TEST_DIRNAME/6.1.3-01-fail-5.pdf" demo.verapdf.org/api/validate/1b

    [ "$status" -eq 0 ]

    assert_output --partial '<head><title>'
}
