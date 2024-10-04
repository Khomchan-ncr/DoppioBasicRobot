*** Settings ***
Resource    ../keywords/importFile.robot
Library    DataDriver    file=testData.csv    dialect=excel
Test Template    Login Scenario
Test Teardown    Close Browser
*** Keywords ***

Login Scenario
    [Arguments]    ${username}    ${password}    ${expect_message}
    SeleniumLibrary.Open browser    ${url}    ${browser.chrome}    options=add_argument("--headless")
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
    SeleniumLibrary.Wait until page contains element    //div[@class="ant-modal-confirm-content"]
    SeleniumLibrary.Page should contain element    //div[@class="ant-modal-confirm-content"]
    Sleep    0.3s    #wait text show on display
    Element text should be    //div[@class="ant-modal-confirm-content"]    ${expect_message}

*** Test cases ***
TEST


