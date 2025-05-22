#Simulates a user clicking login with empty fields
robot
Library    SeleniumLibrary

*** Variables ***
${URL}    file:///absolute/path/to/web/login.html
${BROWSER}    Chrome

*** Test Cases ***
Empty Fields
    Open Browser    ${URL}    ${BROWSER}
    Click Button    xpath://button[text()='Login']
    Page Should Contain    Invalid credentials.
    Close Browser