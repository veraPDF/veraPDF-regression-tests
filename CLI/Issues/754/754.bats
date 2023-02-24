#!/usr/bin/env bats

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

# https://github.com/veraPDF/veraPDF-library/issues/754
@test "#754: Unable to execute XML-report, letters with ÅÄÖ in filename" {

    run verapdf/verapdf $BATS_TEST_DIRNAME/a_ÅÄÖ.pdf 
    [ "$status" -eq 1 ]
    assert_output --partial 'Issues/754/a_ÅÄÖ.pdf'

}
