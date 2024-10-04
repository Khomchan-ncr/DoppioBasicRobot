*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Login Scenario
    [Arguments]    ${username}    ${password}    ${expect_message}
    SeleniumLibrary.Open browser    https://training-platform.doppio-tech.com    gc
    Maximize browser window
    ## tap manage account
    SeleniumLibrary.Wait until page contains element    ${main_page_user_manage_button}    timeout=${GLOBAL_TIMOUT}
    SeleniumLibrary.Click element    ${main_page_user_manage_button}
    ## login user
    SeleniumLibrary.Wait until page contains element    ${login_page_username_field}    timeout=10s
    SeleniumLibrary.Page should contain element    ${login_page_username_field}
    SeleniumLibrary.Input text    ${login_page_username_field}    ${username}
    SeleniumLibrary.Input text    ${login_page_password_field}    ${password}
    SeleniumLibrary.Click element    ${login_page_login_button}
    Log    ${DataDriver_DATA_DICT}[${TESTNAME}]
    
       