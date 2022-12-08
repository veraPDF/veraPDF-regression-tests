#!/usr/bin/env bats

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"
}

@test "--flavour, Chooses built-in Validation Profile flavour. Default: 0" {

    run verapdf/verapdf $FILE_PATH/a.pdf

    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-1B validation profile"'
}

@test "--flavour, Chooses built-in Validation Profile flavour. 1a" {

    run verapdf/verapdf $FILE_PATH/a.pdf --flavour 1a

    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-1A validation profile"'
}

@test "--flavour, Chooses built-in Validation Profile flavour. 1b" {

    run verapdf/verapdf $FILE_PATH/a.pdf --flavour 1b

    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-1B validation profile"'
}

@test "--flavour, Chooses built-in Validation Profile flavour. 2a" {

    run verapdf/verapdf $FILE_PATH/a.pdf --flavour 2a

    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-2A validation profile"'
}

@test "--flavour, Chooses built-in Validation Profile flavour. 2b" {

    run verapdf/verapdf $FILE_PATH/a.pdf --flavour 2b

    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-2B validation profile"'
}

@test "--flavour, Chooses built-in Validation Profile flavour. 2u" {

    run verapdf/verapdf $FILE_PATH/a.pdf --flavour 2u

    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-2U validation profile"'
}

@test "--flavour, Chooses built-in Validation Profile flavour. 3a" {

    run verapdf/verapdf $FILE_PATH/a.pdf --flavour 3a

    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-3A validation profile"'
}

@test "--flavour, Chooses built-in Validation Profile flavour. 3b" {

    run verapdf/verapdf $FILE_PATH/a.pdf --flavour 3b

    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-3B validation profile"'
}

@test "--flavour, Chooses built-in Validation Profile flavour. 3u" {

    run verapdf/verapdf $FILE_PATH/a.pdf --flavour 3u

    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-3U validation profile"'
}

@test "--flavour, Chooses built-in Validation Profile flavour. 4" {

    run verapdf/verapdf $FILE_PATH/a.pdf --flavour 4

    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-4 validation profile"'
}

@test "--flavour, Chooses built-in Validation Profile flavour. 4f" {

    run verapdf/verapdf $FILE_PATH/a.pdf --flavour 4f

    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-4F validation profile"'
}

@test "--flavour, Chooses built-in Validation Profile flavour. 4e" {

    run verapdf/verapdf $FILE_PATH/a.pdf --flavour 4e

    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-4E validation profile"'
}

@test "--flavour, Chooses built-in Validation Profile flavour. ua1" {

    run verapdf/verapdf $FILE_PATH/a.pdf --flavour ua1

    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/UA-1 validation profile"'
}
