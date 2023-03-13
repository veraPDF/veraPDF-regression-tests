*** Settings ***
Library   RemoteSwingLibrary

*** Variables ***
${fileChooserButton}    Choose PDF

*** Test Cases ***
Choose File Checking  
    Start Application    my_app    ${EXECDIR}/verapdf/verapdf-gui 5 seconds
    Select Main Window
    List Components In Context
    Push Button    ${fileChooserButton}
    Select Dialog    regexp=.*
    List Components In Context
    Push Button    Cancel
    [Teardown]    System Exit
