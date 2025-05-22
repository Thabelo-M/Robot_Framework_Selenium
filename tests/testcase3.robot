#Demonstrates capturing screenshots for failed test results
*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser To Login Page
Suite Teardown    Close Browser

*** Variables ***
${URL}    file:///absolute/path/to/web/login.html
${BROWSER}    Chrome

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

*** Test Cases ***
Wrong Password With Screenshot
    Input Text    id:username    admin
    Input Text    id:password    wrong
    Click Button    xpath://button[text()='Login']
    Run Keyword And Ignore Error    Page Should Contain    Login successful!
    Capture Page Screenshot