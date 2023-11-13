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
${versionLabel}         $You are currently running the latest version of veraPDF

*** Test Cases ***
Check for Updates in Main Menu
    Select From Main Menu    Help|Check for Updates...
    Set Jemmy Timeout    DialogWaiter.WaitDialogTimeout    120

    Select Dialog    Check for Updates...

    ${retrievedContent}=    getLabelContent  0
    Should Contain   ${versionLabel}    ${retrievedContent}

    Push Button  0





