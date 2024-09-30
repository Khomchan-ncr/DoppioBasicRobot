*** Keywords ***

Input Username To Register Page
    SeleniumLibrary.Wait Until Page Contains Element    ${sign_up_page_email_field}    timeout=${GLOBAL_TIMOUT}
    SeleniumLibrary.Page Should Contain Element    ${sign_up_page_email_field}
    ${username}=    Generate Random String    8    [LOWER]
    ${username}    Set Variable  ${username}01@hotmail.com
    Log To Console    \nuser:${username}
    SeleniumLibrary.Input Text    ${sign_up_page_email_field}    ${username}

Input Password To Register Page
    SeleniumLibrary.Page Should Contain Element    ${sign_up_page_password_field}
    ${password}=    Generate Random String    10    [LETTERS][NUMBERS]
    ${password}    Set Variable  ${password}@01
    SeleniumLibrary.Input Text    ${sign_up_page_password_field}    ${password}
    Log To Console    \npw:${password}
    RETURN    ${password}

Input Confirm Password To Register Page
    [Arguments]    ${confirm_password}
    SeleniumLibrary.Page Should Contain Element    ${sign_up_page_confirm_password_field}
    Sleep    30ms
    SeleniumLibrary.Input Text    ${sign_up_page_confirm_password_field}    ${confirmPassword}

Tap Sign Up Button To Register Page
    SeleniumLibrary.Page Should Contain Element    ${sign_up_page_sign_up_button}
    SeleniumLibrary.Click Element    ${sign_up_page_sign_up_button}

The System Show Register Success Message
    SeleniumLibrary.Wait Until Page Contains Element   ${sign_up_page_register_success_msg}    timeout=${GLOBAL_TIMOUT}
    SeleniumLibrary.Page Should Contain Element    ${sign_up_page_register_success_msg}
