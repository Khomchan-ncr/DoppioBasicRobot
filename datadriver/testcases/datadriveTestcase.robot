*** Settings ***
Resource    ../keywords/importFile.robot
Library    DataDriver    file=testData.csv    dialect=excel
Test Template    Login Scenario
Test Teardown    Close Browser
*** Keywords ***

Login Scenario
    [Arguments]    ${username}    ${password}    ${expect_message}
    seleniumLibrary.Open browser    ${url}    ${browser.chrome}    options=add_argument("--headless")
    Maximize browser window
    ## tap manage account
    seleniumLibrary.Wait until page contains element    ${main_page_user_manage_button}    timeout=${GLOBAL_TIMOUT}
    seleniumLibrary.Click element    ${main_page_user_manage_button}
    ## login user
    seleniumLibrary.Wait until page contains element    ${login_page_username_field}    timeout=10s
    seleniumLibrary.Page should contain element    ${login_page_username_field}
    seleniumLibrary.Input text    ${login_page_username_field}    ${username}
    seleniumLibrary.Input text    ${login_page_password_field}    ${password}
    seleniumLibrary.Click element    ${login_page_login_button} 
    seleniumLibrary.Wait until page contains element    //div[@class="ant-modal-confirm-content"]
    seleniumLibrary.Page should contain element    //div[@class="ant-modal-confirm-content"]
    Sleep    0.3s    #wait text show on display
    Element text should be    //div[@class="ant-modal-confirm-content"]    ${expect_message}

*** Test cases ***
TEST


