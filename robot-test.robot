*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    http://192.168.1.35:5000

*** Test Cases ***
# Plus API Should Return Correct Sum
#     [Tags]    plus
#     Create Session    myapi    ${BASE_URL}
#     ${response}=    GET On Session    myapi    /plus/3/5
#     Should Be Equal As Integers    ${response.json()['message']}    8

# Plus API With Negative Numbers
#     [Tags]    plus
#     Create Session    myapi    ${BASE_URL}
#     ${response}=    GET On Session    myapi    /plus/-2/7
#     Should Be Equal As Integers    ${response.json()['message']}    5

# Plus API With Zero
#     [Tags]    plus
#     Create Session    myapi    ${BASE_URL}
#     ${response}=    GET On Session    myapi    /plus/5/6
#     Should Be Equal As Integers    ${response.json()['message']}    11

Minus API Should Return Correct Sum
    [Tags]    minus
    Create Session    myapi    ${BASE_URL}
    ${response}=    GET On Session    myapi    /minus/3/5
    Should Be Equal As Integers    ${response.json()['message']}    -2

Minus API With Negative Numbers
    [Tags]    minus
    Create Session    myapi    ${BASE_URL}
    ${response}=    GET On Session    myapi    /minus/-2/7
    Should Be Equal As Integers    ${response.json()['message']}    -9

Minus API With Zero
    [Tags]    minus
    Create Session    myapi    ${BASE_URL}
    ${response}=    GET On Session    myapi    /minus/5/0
    Should Be Equal As Integers    ${response.json()['message']}    5
    
# Prime API test 17
#     [Tags]     Prime
#     Create Session    myapi    ${BASE_URL}
#     ${response}=    GET On Session     myapi    /is_prime/17
#     Should Be Equal    ${response.json()['message']}   ${TRUE}

# Prime API test 36
#     [Tags]     Prime
#     Create Session    myapi    ${BASE_URL}
#     ${response}=    GET On Session     myapi    /is_prime/36
#     Should Be Equal    ${response.json()['message']}   ${FALSE}

# Prime API test 13219
#     [Tags]     Prime
#     Create Session    myapi    ${BASE_URL}
#     ${response}=    GET On Session     myapi    /is_prime/13219
#     Should Be Equal    ${response.json()['message']}   ${TRUE}

