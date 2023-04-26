bats_require_minimum_version 1.5.0

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup



    cp -r verapdf/* $BATS_TEST_TMPDIR
    cp -r $BATS_TEST_DIRNAME/config/* $BATS_TEST_TMPDIR/config/
}

# https://github.com/veraPDF/veraPDF-library/issues/1160
@test "#1160: javax.xml.bind.UnmarshalException check" {

    run --separate-stderr -- $BATS_TEST_TMPDIR/verapdf $BATS_TEST_DIRNAME/c_.pdf --off --extract error

    run echo $stderr
    assert_output --partial "WARNING: The application config file $BATS_TEST_TMPDIR/config/app.xml is missing or damaged"
    [ "$status" -eq 0 ]
}
