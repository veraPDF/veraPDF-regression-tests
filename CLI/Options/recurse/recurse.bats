#!/usr/bin/env bats

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"

}

@test "--recurse, Recurses through directories. Only files with .pdf extensions are processed." {

    run verapdf/verapdf --format text --recurse $BATS_TEST_DIRNAME/

    assert_output --partial 'recurse/a.pdf'
    assert_output --partial 'recurse_next_level/next_a.pdf'
    assert_output --partial 'final_level/final_a.pdf'

    refute_output --partial 'without_pdf'
    [ "$status" -eq 0 ]
}
