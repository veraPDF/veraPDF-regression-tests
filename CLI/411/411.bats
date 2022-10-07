setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

# https://github.com/veraPDF/veraPDF-library/issues/411
@test '#411: XML documents must contain one header and one root element' {
    run echo $("verapdf"/verapdf $BATS_TEST_DIRNAME/159759.pdf | grep "?xml")
    assert_output --partial '<?xml version="1.0" encoding="utf-8"?>'

    run echo $(verapdf/verapdf $BATS_TEST_DIRNAME/159759.pdf | grep ?xml | wc -w)
    assert_equal $output '3'
}
