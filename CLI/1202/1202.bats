setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

# https://github.com/veraPDF/veraPDF-library/pull/1202
@test "#1202, --nonpdfext ignored when --processes > 1, --processes 2, --format text" {
    run verapdf/verapdf --processes 2 --maxfailures 1 -f 1b --format text --nonpdfext $BATS_TEST_DIRNAME/6.1.3-01-fail-5

    [ "$status" -eq 1 ]

    assert_output --partial "FAIL $BATS_TEST_DIRNAME/6.1.3-01-fail-5"
}

# https://github.com/veraPDF/veraPDF-library/pull/1202
@test "#1202, --nonpdfext ignored when --processes > 1, --processes 1, --format text" {
    run verapdf/verapdf --processes 1 --maxfailures 1 -f 1b --format text --nonpdfext $BATS_TEST_DIRNAME/6.1.3-01-fail-5

    [ "$status" -eq 1 ]

    assert_output --partial "FAIL $BATS_TEST_DIRNAME/6.1.3-01-fail-5"
}
