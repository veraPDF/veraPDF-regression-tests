#!/usr/bin/env bats

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"
}

@test "--password, Sets the password for an encrypted documen, correct password" {

    run verapdf/verapdf $FILE_PATH/1_ªµ_Hello_World_12345_Hello.pdf --password 12345_Hello

    [ "$status" -eq 1 ]
    refute_output --partial "encrypted pdf is not supported"
}

@test "--password, Sets the password for an encrypted documen, correct password, zip file" {
    skip "Need to be fixed"
    run verapdf/verapdf $FILE_PATH/1_ªµ_Hello_World_12345_Hello.zip --password 12345_Hello

    echo $status >&3
    [ "$status" -eq 1 ]
    refute_output --partial "encrypted pdf is not supported"
}

@test "--password, Sets the password for an encrypted document, incorrect password" {

    run verapdf/verapdf $FILE_PATH/1_ªµ_Hello_World_12345_Hello.pdf --password 12345_Hello2

    [ "$status" -eq 8 ]
    assert_output --partial "encrypted pdf is not supported"
}

@test "--password, Sets the password for an encrypted document, incorrect password, zip file" {
    skip "Need to be fixed"
    run verapdf/verapdf $FILE_PATH/1_ªµ_Hello_World_12345_Hello.zip --password 12345_Hello2

    [ "$status" -eq 8 ]
    assert_output --partial "encrypted pdf is not supported"
}
