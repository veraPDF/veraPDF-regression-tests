setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

# https://github.com/veraPDF/veraPDF-library/issues/1289
@test "#1289: Add feature report to json report" {

    run verapdf/verapdf -x informationDict --format json $BATS_TEST_DIRNAME/14_01_08_ayrshire.pdf
    
    [ "$status" -eq 1 ]
    
    assert_output --partial '"featuresReport":{"informationDict":{"entry":{"key":"Title","value":"REPORT BY THE INDEPENDENT SCRUTINY PANEL"},"entry":{"key":"Author","value":"Sandra McDougall"},"entry":{"key":"Creator","value":"Acrobat PDFMaker 8.0 for Word"},"entry":{"key":"Producer","value":"Acrobat Distiller 8.0.0 (Windows)"},"entry":{"key":"CreationDate","value":"2008-01-14T10:41:15.000Z"},"entry":{"key":"ModDate","value":"2008-01-14T10:41:30.000Z"},"entry":{"key":"Company","value":" "}}}'
}
