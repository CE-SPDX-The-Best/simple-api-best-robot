*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    http://localhost:5000

*** Test Cases ***
Plus API Should Return Correct Sum
    [Tags]    plus
    Create Session    myapi    ${BASE_URL}
    ${response}=    GET    myapi    /plus/3/5
    Should Be Equal As Integers    ${response.json()['message']}    8

Plus API With Negative Numbers
    [Tags]    plus
    Create Session    myapi    ${BASE_URL}
    ${response}=    GET    myapi    /plus/-2/7
    Should Be Equal As Integers    ${response.json()['message']}    5

Plus API With Zero
    [Tags]    plus
    Create Session    myapi    ${BASE_URL}
    ${response}=    GET    myapi    /plus/5/6
    Should Be Equal As Integers    ${response.json()['message']}    11
