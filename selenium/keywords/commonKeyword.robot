*** Keywords ***

Open Web Browser
    [Arguments]    ${url}    ${browser}
    SeleniumLibrary.Open Browser    ${url}    ${browser}
    Maximize Browser Window

Click Ok Button
    SeleniumLibrary.Wait Until Page Contains Element    ${login_page_ok_button}    timeout=${GLOBAL_TIMOUT}
    SeleniumLibrary.Page Should Contain Element    ${login_page_ok_button}
    SeleniumLibrary.Click Element    ${login_page_ok_button}
