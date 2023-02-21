setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

# https://github.com/veraPDF/veraPDF-library/issues/803
@test "#803: Invoking verapdf without arguments, echo \"\" " {

    run echo $(echo "" | ./verapdf/verapdf)
    assert_output --partial "STDIN is not a valid PDF document"
    [ "$status" -eq 0 ]
}

# https://github.com/veraPDF/veraPDF-library/issues/803
@test "#803: Invoking verapdf without arguments, echo >/dev/null 2>&1 " {

    run echo $(echo >/dev/null 2>&1 | ./verapdf/verapdf)
    assert_output --partial 'Usage: veraPDF [options]'
    [ "$status" -eq 0 ]
}
