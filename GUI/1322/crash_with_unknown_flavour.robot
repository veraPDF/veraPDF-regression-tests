*** Settings ***
Library             RemoteSwingLibrary
Library             String
Library             Screenshot
Library             DateTime
Library             OperatingSystem
Library             XML

Suite Teardown      System Exit
Test Teardown       Run Keyword If Test Failed    Take Screenshot

Force Tags          regress


*** Test Cases ***
Check Crash on startup if config contains unknown flavour
    ${epoch}=    Get Time    epoch

    Create Directory    ${TEMPDIR}/${epoch}
    Directory Should Exist    ${TEMPDIR}/${epoch}

    Copy Directory    ${EXECDIR}/verapdf/    ${TEMPDIR}/${epoch}
    Copy File    ${EXECDIR}/GUI/1322/config/validator.xml    ${TEMPDIR}/${epoch}/verapdf/config/

    ${variable_xml_file}=    Parse XML    ${TEMPDIR}/${epoch}/verapdf/config/validator.xml
    ${result}=    Get Element Attribute    ${variable_xml_file}    flavour    .
    Should be equal    ${result}    NO_FLAVOUR_2
    Start Application    my_app    ${TEMPDIR}/${epoch}/verapdf/verapdf-gui    15 seconds
    Select Main Window
    ${selectedItem}=    getSelectedItemFromComboBox    1
    shouldBeEqual    Auto-detect    ${selectedItem}
