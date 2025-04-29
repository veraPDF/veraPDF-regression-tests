*** Settings ***
Library             RemoteSwingLibrary
Library             String
Library             Collections
Library             Screenshot

Suite Setup         Start Application    my_app    ${EXECDIR}/verapdf/verapdf-gui    15 seconds
Suite Teardown      System Exit
Test Teardown       Run Keyword If Test Failed    Take Screenshot

Force Tags          Regress


*** Variables ***
${labelOnTop}
...                 ${SPACE}${SPACE}${SPACE}${SPACE}${SPACE}Choose a PDF and a PDF flavour or a custom validation profile, then press "Execute"
${checkBox}         ${SPACE}${SPACE}${SPACE}${SPACE}${SPACE}${SPACE}${SPACE}Fix metadata:


*** Test Cases ***
Check Buttons on startup
    Select Main Window

    Button Should Be Enabled    Choose PDF
    Button Should Be Disabled    Choose Profile
    Button Should Be Disabled    Choose Policy
    Button Should Be Disabled    Execute

    Button Should Be Disabled    Save XML
    Button Should Be Disabled    Save HTML
    Button Should Be Disabled    View XML
    Button Should Be Disabled    View HTML

Check Labels on startup
    Select Main Window

    ${retrievedContent}=    getLabelContent    0
    shouldBeEqual    ${labelOnTop}    ${retrievedContent}

    ${retrievedContent}=    getLabelContent    1
    Should Contain    ${retrievedContent}    Report type:

    ${retrievedContent}=    getLabelContent    2
    Should Contain    ${retrievedContent}    PDF flavour:

    ${retrievedContent}=    getLabelContent    3
    Should Contain    ${retrievedContent}    ${EMPTY}

Check TextFields on startup
    Select Main Window
    ${textFieldContents}=    getTextFieldValue    0
    Should Contain    ${textFieldContents}    PDF file not chosen

    ${textFieldContents}=    getTextFieldValue    1
    Should Contain    ${textFieldContents}    Validation profile not chosen

    ${textFieldContents}=    getTextFieldValue    2
    Should Contain    ${textFieldContents}    Policy file not chosen

Check CheckBox on startup
    Select Main Window
    Check Box Should Be Enabled    ${checkBox}

Check Comboxes on startup
    Select Main Window
    Combo Box Should Be Enabled    0
    ${selectedItem}=    getSelectedItemFromComboBox    0
    shouldBeEqual    Validation    ${selectedItem}

    Combo Box Should Be Enabled    1
    ${selectedItem}=    getSelectedItemFromComboBox    1
    shouldBeEqual    Auto-detect    ${selectedItem}

Check Report Type combox values on startup
    Select Main Window

    ${expectedList}=    createList    Validation    Features    Validation and Features    Policy
    ${values}=    getComboboxValues    0
    logMany    ${values}
    Lists Should Be Equal    ${expectedList}    ${values}

Check PDF Flavour combox values on startup
    Select Main Window
    ${expectedList}=    createList
    ...    Custom profile
    ...    Auto-detect
    ...    PDF/A-1A
    ...    PDF/A-1B
    ...    PDF/A-2A
    ...    PDF/A-2B
    ...    PDF/A-2U
    ...    PDF/A-3A
    ...    PDF/A-3B
    ...    PDF/A-3U
    ...    PDF/A-4
    ...    PDF/A-4E
    ...    PDF/A-4F
    ...    PDF/UA-1
    ...    PDF/UA-2
    ...    WTPDF 1.0 Accessibility
    ...    WTPDF 1.0 Reuse
    ${values}=    getComboboxValues    1
    Lists Should Be Equal    ${expectedList}    ${values}
