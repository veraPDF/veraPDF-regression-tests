#!/usr/bin/env bats

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

}

@test "--list. Lists built-in Validation Profiles" {

    run verapdf/verapdf --list

    [ "$status" -eq 0 ]
    assert_output --partial "veraPDF supported PDF/A and PDF/UA profiles:"
    assert_output --partial "1a - PDF/A-1A validation profile"
    assert_output --partial "1b - PDF/A-1B validation profile"
    assert_output --partial "2a - PDF/A-2A validation profile"
    assert_output --partial "2b - PDF/A-2B validation profile"
    assert_output --partial "2u - PDF/A-2U validation profile"
    assert_output --partial "3a - PDF/A-3A validation profile"
    assert_output --partial "3b - PDF/A-3B validation profile"
    assert_output --partial "3u - PDF/A-3U validation profile"
    assert_output --partial "4 - PDF/A-4 validation profile"
    assert_output --partial "4f - PDF/A-4F validation profile"
    assert_output --partial "4e - PDF/A-4E validation profile"
    assert_output --partial "ua1 - PDF/UA-1 validation profile"

}
