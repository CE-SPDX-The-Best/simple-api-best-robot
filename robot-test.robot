*** Settings ***
Library    RequestsLibrary
Library    BuiltIn

*** Variables ***
${BASE_URL}    http://localhost:5000

*** Test Cases ***
Plus API Should Return Correct Sum
    [Tags]    prime
    Create Session    myapi    ${BASE_URL}
    ${response}=    GET On Session    myapi    /is_prime/17
    Should Be Equal    ${response.json()['message']}    ${TRUE}

Plus API With Negative Numbers
    [Tags]    prime
    Create Session    myapi    ${BASE_URL}
    ${response}=    GET On Session    myapi    /is_prime/36
    Should Be Equal    ${response.json()['message']}    ${FALSE}

Plus API With Zero
    [Tags]    prime
    Create Session    myapi    ${BASE_URL}
    ${response}=    GET On Session    myapi    /is_prime/13219
    Should Be Equal    ${response.json()['message']}    ${TRUE}
