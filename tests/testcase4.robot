*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    file:///absolute/path/to/web/login.html
${BROWSER}    Chrome

*** Test Cases ***
Verify Page Elements
    Open Browser    ${URL}    ${BROWSER}
    Page Should Contain Element    id:username
    Page Should Contain Element    id:password
    Page Should Contain Element    xpath://button[text()='Login']
    Close Browser