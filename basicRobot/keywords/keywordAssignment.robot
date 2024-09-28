*** Keywords ***

Validate Age
    [Arguments]    ${age}
    Run Keyword If    ${age} > 18    Log to console    \n${age}${SPACE}Eligible for voting
    ...    ELSE    Log to console    \n${age}${SPACE}Not eligible for voting

Print Fruits
    [Arguments]    @{fruits}
    FOR    ${fruit}    IN    @{fruits}
        Log To Console   \n${fruit}
    END

Print User Info
    [Arguments]    &{user_info}
    Log To Console   \nName: ${user_info["name"]} \nAge: ${user_info["age"]} \nCity: ${user_info["city"]}

Greet User
    [Arguments]    ${name}=Guest
    Log To Console    \n"Hello, ${name}"

Print All Items
    [Arguments]    @{items}
    FOR    ${item}    IN    @{items}
        Log To Console    \n${item}
    END

Use Local Variable
    Set Local Variable    ${LOCAL_VAR}    Local Value
    Log To Console    \n${LOCAL_VAR}
    Log To Console    ${GLOBAL_VAR}

Calculate Square
    [Arguments]    ${number}
    ${result}=    Evaluate    ${number} * ${number}
    RETURN    ${result}

Create Fruit List
    [Arguments]
    ${fruits}=    Create List    apple    banana    cherry
    RETURN    ${fruits}

Create User Info
    [Arguments]
    ${user_info}=    Create Dictionary    name=John    age=30    city=Bangkok
    RETURN    ${user_info}

Calculate Factorial
    [Arguments]    ${number}
    Run Keyword If    ${number} == 1    Return From Keyword    1
    ${previous}=    Calculate Factorial    ${number - 1}
    ${result}=    Evaluate    ${number} * ${previous}
    RETURN    ${result}

Keyword With Teardown
    [Teardown]    Log To Console    Keyword Teardown is running
    Log To Console    Running the keyword