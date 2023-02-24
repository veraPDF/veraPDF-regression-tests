#!/usr/bin/env bats
setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"

}

@test "— Support validation of pdfs in zip" {
    skip 'Waiting for to be fixed'
    run verapdf/verapdf $FILE_PATH/recurse_next_level_a.zip

    [ "$status" -eq 0 ]

    assert_output --partial 'recurse_next_level.zip\a.pdf'
    assert_output --partial 'recurse_next_level.zip\recurse_next_level\next_a.pdf'
    assert_output --partial 'recurse_next_level.zip\recurse_next_level\final_level\final_a.pdf'
    refute_output --partial 'without_pdf'

}
