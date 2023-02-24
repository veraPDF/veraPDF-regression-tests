#!/usr/bin/env bats

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"
}

@test "--defaultflavour, Chooses built-in Validation Profile default flavour. Default: 1b" {

    run verapdf/verapdf $FILE_PATH/a.pdf
    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-1B validation profile"'
}

@test "--defaultflavour, Chooses built-in Validation Profile default flavour. Default: 1b, zip file" {
    skip "Need to be fixed"
    run verapdf/verapdf $FILE_PATH/a.zip
    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-1B validation profile"'
}

@test "--defaultflavour, Chooses built-in Validation Profile default flavour. 1a" {

    run verapdf/verapdf $FILE_PATH/a.pdf --defaultflavour 1a
    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-1A validation profile"'

}

@test "--defaultflavour, Chooses built-in Validation Profile default flavour. 1a, zip file" {
    skip "Need to be fixed"
    run verapdf/verapdf $FILE_PATH/a.zip --defaultflavour 1a
    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-1A validation profile"'
}

@test "--defaultflavour, Chooses built-in Validation Profile default flavour. 1b" {
 
    run verapdf/verapdf $FILE_PATH/a.pdf --defaultflavour 1b
    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-1B validation profile"'
}

@test "--defaultflavour, Chooses built-in Validation Profile default flavour. 1b, zip file" {
    skip "Need to be fixed"
    run verapdf/verapdf $FILE_PATH/a.zip --defaultflavour 1b
    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-1B validation profile"'
}

@test "--defaultflavour, Chooses built-in Validation Profile default flavour. 2a" {

    run verapdf/verapdf $FILE_PATH/a.pdf --defaultflavour 2a
    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-2A validation profile"'
}

@test "--defaultflavour, Chooses built-in Validation Profile default flavour. 2a, zip file" {
    skip "Need to be fixed"
    run verapdf/verapdf $FILE_PATH/a.zip --defaultflavour 2a
    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-2A validation profile"'partial
}

@test "--defaultflavour, Chooses built-in Validation Profile default flavour. 2b" {

    run verapdf/verapdf $FILE_PATH/a.pdf --defaultflavour 2b
    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-2B validation profile"'
}

@test "--defaultflavour, Chooses built-in Validation Profile default flavour. 2b, zip file" {
    skip "Need to be fixed"
    run verapdf/verapdf $FILE_PATH/a.zip --defaultflavour 2b
    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-2B validation profile"'
}

@test "--defaultflavour, Chooses built-in Validation Profile default flavour. 2u" {

    run verapdf/verapdf $FILE_PATH/a.pdf --defaultflavour 2u
    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-2U validation profile"'
}

@test "--defaultflavour, Chooses built-in Validation Profile default flavour. 2u, zip file" {
    skip "Need to be fixed"
    run verapdf/verapdf $FILE_PATH/a.zip --defaultflavour 2u
    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-2U validation profile"'
}

@test "--defaultflavour, Chooses built-in Validation Profile default flavour. 3a" {

    run verapdf/verapdf $FILE_PATH/a.pdf --defaultflavour 3a
    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-3A validation profile"'

}

@test "--defaultflavour, Chooses built-in Validation Profile default flavour. 3a, zip file" {
    skip "Need to be fixed"
    run verapdf/verapdf $FILE_PATH/a.zip --defaultflavour 3a
    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-3A validation profile"'
}

@test "--defaultflavour, Chooses built-in Validation Profile default flavour. 3b" {

    run verapdf/verapdf $FILE_PATH/a.pdf --defaultflavour 3b
    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-3B validation profile"'
}

@test "--defaultflavour, Chooses built-in Validation Profile default flavour. 3b, zip file" {
    skip "Need to be fixed"
    run verapdf/verapdf $FILE_PATH/a.zip --defaultflavour 3b
    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-3B validation profile"'
}

@test "--defaultflavour, Chooses built-in Validation Profile default flavour. 3u" {

    run verapdf/verapdf $FILE_PATH/a.pdf --defaultflavour 3u
    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-3U validation profile"'
}

@test "--defaultflavour, Chooses built-in Validation Profile default flavour. 3u, zip file" {
    skip "Need to be fixed"
    run verapdf/verapdf $FILE_PATH/a.zip --defaultflavour 3u
    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-3U validation profile"'
}

@test "--defaultflavour, Chooses built-in Validation Profile default flavour. 4" {

    run verapdf/verapdf $FILE_PATH/a.pdf --defaultflavour 4
    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-4 validation profile"'
}

@test "--defaultflavour, Chooses built-in Validation Profile default flavour. 4, zip file" {
    skip "Need to be fixed"
    run verapdf/verapdf $FILE_PATH/a.zip --defaultflavour 4
    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-4 validation profile"'
}

@test "--defaultflavour, Chooses built-in Validation Profile default flavour. 4f" {

    run verapdf/verapdf $FILE_PATH/a.pdf --defaultflavour 4f
    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-4F validation profile"'
}

@test "--defaultflavour, Chooses built-in Validation Profile default flavour. 4f, zip file" {
    skip "Need to be fixed"
    run verapdf/verapdf $FILE_PATH/a.zip --defaultflavour 4f
    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-4F validation profile"'
}

@test "--defaultflavour, Chooses built-in Validation Profile default flavour. 4e" {

    run verapdf/verapdf $FILE_PATH/a.pdf --defaultflavour 4e
    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-4E validation profile"'
}

@test "--defaultflavour, Chooses built-in Validation Profile default flavour. 4e, zip file" {
    skip "Need to be fixed"
    run verapdf/verapdf $FILE_PATH/a.zip --defaultflavour 4e
    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/A-4E validation profile"'
}

@test "--defaultflavour, Chooses built-in Validation Profile default flavour. ua1" {

    run verapdf/verapdf $FILE_PATH/a.pdf --defaultflavour ua1
    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/UA-1 validation profile"'
}

@test "--defaultflavour, Chooses built-in Validation Profile default flavour. ua1, zip file" {
    skip "Need to be fixed"
    run verapdf/verapdf $FILE_PATH/a.zip --defaultflavour ua1
    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/UA-1 validation profile"'
}
