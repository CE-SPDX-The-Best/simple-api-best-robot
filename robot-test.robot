*** Settings ***
Library    RequestsLibrary
Library    BuiltIn

*** Variables ***
${BASE_URL}    http://localhost:5000

*** Test Cases ***
Test_x_is_3dot7
    [Tags]    prime
    Create Session    myapi    ${BASE_URL}
    ${response}=    GET On Session    myapi    /is2honor/3.7
    Should Be Equal    ${response.json()['message']}    ${False}

Test_x_is_3dot4
    [Tags]    prime
    Create Session    myapi    ${BASE_URL}
    ${response}=    GET On Session    myapi    /is2honor/3.4
    Should Be Equal    ${response.json()['message']}    ${True}

Test_x_is_3dot1
    [Tags]    prime
    Create Session    myapi    ${BASE_URL}
    ${response}=    GET On Session    myapi    /is2honor/3.1
    Should Be Equal    ${response.json()['message']}    ${False}
