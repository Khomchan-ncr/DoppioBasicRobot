*** Settings ***
Resource    ../keywords/importFile.robot
Library    DataDriver    file=testData.csv    dialect=excel
Test Template    Login Scenario
Test Teardown    Close Browser
*** Keywords ***

Login Scenario
    [Arguments]    ${username}    ${password}    ${expect_message}
    SeleniumLibrary.Open Browser    ${url}    ${browser.chrome}
    Maximize Browser Window
    ## tap manage account
    SeleniumLibrary.Wait Until Page Contains Element    ${main_page_user_manage_button}    timeout=${GLOBAL_TIMOUT}
    SeleniumLibrary.Click Element    ${main_page_user_manage_button}
    ## login user
    SeleniumLibrary.Wait Until Page Contains Element    ${login_page_username_field}    timeout=10s
    SeleniumLibrary.Page Should Contain Element    ${login_page_username_field}
    SeleniumLibrary.Input Text    ${login_page_username_field}    ${username}
    SeleniumLibrary.Input Text    ${login_page_password_field}    ${password}
    SeleniumLibrary.Click Element    ${login_page_login_button} 
    SeleniumLibrary.Wait Until Page Contains Element    //div[@class="ant-modal-confirm-content"]
    SeleniumLibrary.Page Should Contain Element    //div[@class="ant-modal-confirm-content"]
    Element Text Should Be    //div[@class="ant-modal-confirm-content"]    ${expect_message}
    Log To Console    @{TEST_NAME}${TEST_TAGS}
*** Test Cases ***
TEST