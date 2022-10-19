setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

# https://github.com/veraPDF/veraPDF-library/issues/643
@test "#643: Crash on running feature extraction, 01_07 Papers.pdf" {
    run verapdf/verapdf -x actions,annotations,colorSpace,ds,embeddedFile,exGSt,font,formXobject,iccProfile,imageXobject,informationDict,interactiveFormField,lowLevelInfo,metadata,outlines,outputIntent,page,pattern,postscriptXobject,properties,shading,signature,error $BATS_TEST_DIRNAME/'01_07 Papers.pdf'
    
    [ "$status" -eq 1 ]
    assert_output --partial '
        <informationDict>
          <entry key="Title">SHADOW TRUST BOARD MEETING</entry>
          <entry key="Author">Christine Baldwin</entry>
          <entry key="Creator">Adobe Acrobat 8.0 Combine Files</entry>
          <entry key="Producer">Acrobat Distiller 8.0.0 (Windows)</entry>
          <entry key="CreationDate">2007-03-28T14:04:57.000+01:00</entry>
          <entry key="ModDate">2007-03-28T14:04:57.000+01:00</entry>
        </informationDict>'

    assert_output --partial '<featureReports failedJobs="0">1</featureReports>'
}

# https://github.com/veraPDF/veraPDF-library/issues/643
@test "#643: Crash on running feature extraction, 14_01_08_ayrshire.pdf" {
    run verapdf/verapdf -x actions,annotations,colorSpace,ds,embeddedFile,exGSt,font,formXobject,iccProfile,imageXobject,interactiveFormField,lowLevelInfo,metadata,outlines,outputIntent,page,pattern,postscriptXobject,properties,shading,signature,error,informationDict $BATS_TEST_DIRNAME/14_01_08_ayrshire.pdf

    [ "$status" -eq 1 ]
    assert_output --partial '
        <informationDict>
          <entry key="Title">REPORT BY THE INDEPENDENT SCRUTINY PANEL</entry>
          <entry key="Author">Sandra McDougall</entry>
          <entry key="Creator">Acrobat PDFMaker 8.0 for Word</entry>
          <entry key="Producer">Acrobat Distiller 8.0.0 (Windows)</entry>
          <entry key="CreationDate">2008-01-14T10:41:15.000Z</entry>
          <entry key="ModDate">2008-01-14T10:41:30.000Z</entry>
          <entry key="Company"> </entry>
        </informationDict>'

    assert_output --partial '<featureReports failedJobs="0">1</featureReports>'
}

# https://github.com/veraPDF/veraPDF-library/issues/643
@test "#643: Crash on running feature extraction, 14_01_08_lanarkshire.pdf" {
    run verapdf/verapdf -x actions,annotations,colorSpace,ds,embeddedFile,exGSt,font,formXobject,iccProfile,imageXobject,informationDict,interactiveFormField,lowLevelInfo,metadata,outlines,outputIntent,page,pattern,postscriptXobject,properties,shading,signature,error $BATS_TEST_DIRNAME/14_01_08_lanarkshire.pdf

    [ "$status" -eq 1 ]
    assert_output --partial '
        <informationDict>
          <entry key="Title">REPORT BY THE INDEPENDENT SCRUTINY PANEL</entry>
          <entry key="Author">Sandra McDougall</entry>
          <entry key="Creator">Acrobat PDFMaker 8.0 for Word</entry>
          <entry key="Producer">Acrobat Distiller 8.0.0 (Windows)</entry>
          <entry key="CreationDate">2008-01-14T10:43:51.000Z</entry>
          <entry key="ModDate">2008-01-14T10:44:09.000Z</entry>
          <entry key="Company"> </entry>
        </informationDict>'

    assert_output --partial '<featureReports failedJobs="0">1</featureReports>'
}

# https://github.com/veraPDF/veraPDF-library/issues/643
@test "#643: Crash on running feature extraction, 260308lacmfinalsubmission.pdf" {
    run verapdf/verapdf -x actions,annotations,colorSpace,ds,embeddedFile,exGSt,font,formXobject,iccProfile,imageXobject,informationDict,interactiveFormField,lowLevelInfo,metadata,outlines,outputIntent,page,pattern,postscriptXobject,properties,shading,signature,error $BATS_TEST_DIRNAME/260308lacmfinalsubmission.pdf

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
