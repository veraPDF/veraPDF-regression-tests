bats_require_minimum_version 1.5.0

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

# https://github.com/veraPDF/veraPDF-library/issues/1308
@test "#1308: verapdf --format json produces empty features report" {

    run verapdf/verapdf --extract page --format json --off $BATS_TEST_DIRNAME/6.1.3-01-fail-5.pdf

    [ "$status" -eq 0 ]
    assert_output --partial '"orderNumber":"1"'
    assert_output --partial '"width":"300.000"'
    assert_output --partial '"height":"400.000"'
    assert_output --partial '"rotation":"0"'
}
