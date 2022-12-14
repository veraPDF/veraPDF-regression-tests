#!/usr/bin/env bats

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"

    cp -r verapdf/* $BATS_TEST_TMPDIR
}

@test "--config, Sets settings from the config files, if no cli parameters are specified. app.xml check" {

    cp -r $BATS_TEST_DIRNAME/config_app/app* $BATS_TEST_TMPDIR/config/

    # update app.xml with a path to a policy file
    sed -i "5 c\    <policyFile>$BATS_TEST_DIRNAME/TestList.sch</policyFile>" $BATS_TEST_TMPDIR/config/app.xml

    run $BATS_TEST_TMPDIR/verapdf $FILE_PATH/TestList.pdf --config
    
    [ "$status" -eq 0 ]
    assert_output --partial '<policyReport passedChecks="0" failedChecks="0" xmlns:vera="http://www.verapdf.org/MachineReadableReport">'
}

@test "--config, Sets settings from the config files, if no cli parameters are specified. features.xml check" {

    cp -r $BATS_TEST_DIRNAME/config_features/app* $BATS_TEST_TMPDIR/config/
    cp -r $BATS_TEST_DIRNAME/config_features/features* $BATS_TEST_TMPDIR/config/

    run $BATS_TEST_TMPDIR/verapdf $FILE_PATH/TestList.pdf --config

    [ "$status" -eq 0 ]
    assert_output --partial '<informationDict>'
    assert_output --partial '<entry key="Author">Tassadar</entry>'
    assert_output --partial '<entry key="Creator">Microsoft Office Word</entry>'
    assert_output --partial '<entry key="Producer">Aspose.Words for .NET 17.4.0.0</entry>'
    assert_output --partial '<entry key="CreationDate">2017-04-08T10:44:00.000Z</entry>'
    assert_output --partial '<entry key="ModDate">2017-04-08T10:54:00.000Z</entry>'
    assert_output --partial '</informationDict>'
}

@test "--config, Sets settings from the config files, if no cli parameters are specified. fixer.xml check" {

    cp -r $BATS_TEST_DIRNAME/config_fixer/app* $BATS_TEST_TMPDIR/config/
    cp -r $BATS_TEST_DIRNAME/config_fixer/validator* $BATS_TEST_TMPDIR/config/
    cp -r $BATS_TEST_DIRNAME/config_fixer/fixer* $BATS_TEST_TMPDIR/config/
    cp -r $FILE_PATH/TestList.pdf $BATS_TEST_TMPDIR/

    run $BATS_TEST_TMPDIR/verapdf $BATS_TEST_TMPDIR/TestList.pdf --config

    [ "$status" -eq 1 ]
    assert_output --partial '<fix>Identification schema added</fix>'
    assert_output --partial '<fix>Set new modification date to metadata</fix>'
    assert_output --partial '<fix>Set new modification date to info dictionary</fix>'
    assert_output --partial '<fix>Metadata stream filtered with FlateDecode</fix>'

    FILE=$BATS_TEST_TMPDIR/veraFixMd_to_check_TestList.pdf
    assert [ -f "$FILE" ] # Check if File exists
}

@test "--config, Sets settings from the config files, if no cli parameters are specified. plugins.xml check" {
    skip "Need to be added later"
}

@test "--config, Sets settings from the config files, if no cli parameters are specified. validator.xml check" {

    cp -r $BATS_TEST_DIRNAME/config_validator/app* $BATS_TEST_TMPDIR/config/
    cp -r $BATS_TEST_DIRNAME/config_validator/validator* $BATS_TEST_TMPDIR/config/

    run $BATS_TEST_TMPDIR/verapdf $FILE_PATH/TestList.pdf --config

    [ "$status" -eq 1 ]
    assert_output --partial 'profileName="PDF/UA-1 validation profile"'
}
