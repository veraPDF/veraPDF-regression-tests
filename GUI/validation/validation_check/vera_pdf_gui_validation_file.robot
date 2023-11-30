*** Settings ***
Library             RemoteSwingLibrary
Library             String
Library             XML
Library             OperatingSystem
Library             Screenshot

Suite Setup         Start Application    my_app    ${EXECDIR}/verapdf/verapdf-gui    15 seconds
Suite Teardown      System Exit

Force Tags          Regress


*** Variables ***
${fileChooserButton}        Choose PDF
${fileToChoose}             ${EXECDIR}/CLI/Resources/a.pdf

${buttonChoosePDF}          Choose PDF
${buttonChooseProfile}      Choose Profile
${buttonChoosePolicy}       Choose Policy
${buttonExecute}            Execute
${buttonOK}                 OK


*** Test Cases ***
Validate compliant pdf file and check xml
    Select Main Window

    Push Button    ${fileChooserButton}
    Log    ${fileToChoose}
    Choose From File Chooser    ${fileToChoose}
    Button Should Be Enabled    Execute
    Push Button    Execute

    ${retrievedContent}=    getLabelContent    3
    Should Contain    ${retrievedContent}    PDF file is not compliant with Validation Profile requirements

    Push Button    Save XML

    Select Dialog    regexp=.*
    ${contextAsString}=    Get Current Context
    Log    ${contextAsString}
    Scroll Component To View  regexp=.*
    Push Button    Save

    ${variable_xml_file}=    Parse XML    ${EXECDIR}/xmlReport.xml
    ${text}=    Get Element Text    ${variable_xml_file}    jobs/job//name
    Should Contain    ${text}    a.pdf
    Remove Files    ${EXECDIR}/xmlReport.xml

    [Teardown]    Run Keyword If Test Failed    Take Screenshot
