#!/usr/bin/env bats
FILES_TO_CHECK=(
    "68_1_fail.pdf"
    "68_1_fail.zip")

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"
    assert [ ${#FILES_TO_CHECK[@]} != 0 ]
}

@test "--profilesWiki, Sets location of the Validation Profiles wiki" {

    for file in "${FILES_TO_CHECK[@]}"; do
        profilesWiki_check $file
    done
}

profilesWiki_check() {
    echo "Running: $1" >&3
    run verapdf/verapdf $FILE_PATH/$1 --format html --profilesWiki https://localhost/veraPDF/veraPDF-validation-profiles/wiki-new/
    assert_output --partial 'href="https://localhost/veraPDF/veraPDF-validation-profiles/wiki-new/'
    [ "$status" -eq 1 ]
}
