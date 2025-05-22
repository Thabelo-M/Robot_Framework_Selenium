#Introduces data-driven testing using variables and loops.
*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${URL}    file:///absolute/path/to/web/login.html
${BROWSER}    Chrome
@{CREDENTIALS}
...    admin    1234
...    admin    wrong
...    test     1234
...    test     test

*** Test Cases ***
Try Multiple Logins
    :FOR    ${i}    IN RANGE    0    4
    \    ${username}=    Get From List    ${CREDENTIALS}    ${i * 2}
    \    ${password}=    Get From List    ${CREDENTIALS}    ${i * 2 + 1}
    \    Open Browser    ${URL}    ${BROWSER}
    \    Input Text    id:username    ${username}
    \    Input Text    id:password    ${password}
    \    Click Button    xpath://button[text()='Login']
    \    Sleep    1s
    \    Capture Page Screenshot
    \    Close Browser