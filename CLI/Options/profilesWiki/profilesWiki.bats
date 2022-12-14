#!/usr/bin/env bats

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"

}

@test "--profilesWiki, Sets location of the Validation Profiles wiki" {
    
    run verapdf/verapdf $FILE_PATH/68_1_fail.pdf --format html --profilesWiki https://localhost/veraPDF/veraPDF-validation-profiles/wiki-new/

    [ "$status" -eq 1 ]
    assert_output --partial 'href="https://localhost/veraPDF/veraPDF-validation-profiles/wiki-new/'
}
