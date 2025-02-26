*** Settings ***
Resource    ../Lab7_resource.robot
Library     SeleniumLibrary

*** Test Cases ***
Open Form
    [Documentation]
    Open Browser To Form Page
    Form Page Should Be Open
    Close Browser

Record Success
    [Documentation]
    Open Browser To Form Page
    Input Firstname    ${FIRST_NAME}
    Input Lastname    ${LAST_NAME}
    Input Destination    ${DESTINATION}
    Input Contact Person    ${CONTACT_PERSON}
    Input Relationship    ${RELATIONSHIP}
    Input Email    ${EMAIL}
    Input Phone    ${PHONE}
    Click Button    id=submitButton
    Complete Page Should Be Open
    Close Browser