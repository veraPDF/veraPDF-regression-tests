#!/usr/bin/env bats
bats_require_minimum_version 1.5.0

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"
}

@test "--password, Sets the password for an encrypted document, correct password" {

    run verapdf/verapdf $FILE_PATH/1_ªµ_Hello_World_12345_Hello.pdf --password 12345_Hello

    [ "$status" -eq 1 ]
    refute_output --partial "encrypted PDF with unknown or wrong password"
}

@test "--password, Sets the password for an encrypted document, incorrect password" {

    run verapdf/verapdf $FILE_PATH/1_ªµ_Hello_World_12345_Hello.pdf --password 12345_Hello2

    [ "$status" -eq 8 ]
    assert_output --partial "encrypted PDF with unknown or wrong password"
}

@test "--password, Password option should not work for zip processing, ignore password option" {

    run --separate-stderr -- verapdf/verapdf $FILE_PATH/1_ªµ_Hello_World_12345_Hello.zip --password 12345_Hello

    assert_output --partial "Exception: The PDF stream appears to be encrypted. caused by exception: encrypted PDF with unknown or wrong password"
    [ "$status" -eq 8 ]

    run echo $stderr
    assert_output --partial "WARNING: Password handling for encrypted files is not supported for zip processing."
}

@test "--password, Password option should not work for batch processing, ignore password option" {

    run --separate-stderr -- verapdf/verapdf -r $FILE_PATH/1_ªµ_Hello_World_12345_Hello.* --password 12345_Hello
    [ "$status" -eq 8 ]

    run echo $stderr
    assert_output --partial "WARNING: Password handling for encrypted files is not supported for batch processing."
    assert_output --partial "WARNING: $FILE_PATH/1_ªµ_Hello_World_12345_Hello.pdf appears to be an encrypted PDF."
    assert_output --partial "WARNING: $FILE_PATH/1_ªµ_Hello_World_12345_Hello.zip/1_ªµ_Hello_World_12345_Hello.pdf appears to be an encrypted PDF."
}
