bats_require_minimum_version 1.5.0

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    cp -r verapdf/* $BATS_TEST_TMPDIR
    cp -r $BATS_TEST_DIRNAME/config/* $BATS_TEST_TMPDIR/config/
}

# https://github.com/veraPDF/veraPDF-library/issues/1278
@test "#1278: consistency between cli and gui outputs, Add option to cli for using config, features.xml check" {

    run $BATS_TEST_TMPDIR/verapdf $BATS_TEST_DIRNAME/260308lacmfinalsubmission.pdf --config
    
    [ "$status" -eq 1 ]

    assert_output --partial '
        <informationDict>
          <entry key="Title">LACM</entry>
          <entry key="Author">The Carbon Trust</entry>
          <entry key="Subject">Release Version 1.3</entry>
          <entry key="Creator">Acrobat PDFMaker 8.1 for Word</entry>
          <entry key="Producer">Acrobat Distiller 8.1.0 (Windows)</entry>
          <entry key="CreationDate">2008-03-28T16:29:43.000Z</entry>
          <entry key="ModDate">2008-03-28T16:30:00.000Z</entry>
          <entry key="Company">ESD LTD</entry>
        </informationDict>'

    assert_output --partial '<featureReports failedJobs="0">1</featureReports>'
}

@test "#1278: consistency between cli and gui outputs, Add option to cli for using config, CLI option check" {

    run $BATS_TEST_TMPDIR/verapdf $BATS_TEST_DIRNAME/6.1.3-01-fail-5.pdf --config --addlogs

    [ "$status" -eq 0 ]
    assert_output --partial '<logMessage occurrences="2" level="WARNING">Value of ID is not an array of two byte strings</logMessage>'
}
