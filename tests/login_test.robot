*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    file:///C:/Users/ThabeloMuthuvhukuma/Downloads/robot-login-test/web/login.html
${BROWSER}    Chrome

*** Test Cases ***
Valid Login
    Open Browser    ${URL}    ${BROWSER}
    Input Text    id:username    admin
    Input Text    id:password    1234
    Click Button    xpath://button[text()='Login']
    Page Should Contain    Login successful!
    Close Browser

Invalid Login
    Open Browser    ${URL}    ${BROWSER}
    Input Text    id:username    test
    Input Text    id:password    wrong
    Click Button    xpath://button[text()='Login']
    Page Should Contain    Invalid credentials.
    Close Browser