*** Keywords ***

Navigate To My Order
    SeleniumLibrary.Wait Until Page Contains Element    ${manage_user_page_my_order_preparing}    timeout=${GLOBAL_TIMOUT}
    Sleep    1s
    SeleniumLibrary.Scroll Element Into View    ${manage_user_page_my_order_preparing}
    SeleniumLibrary.Page Should Contain Element    ${manage_user_page_my_order_preparing}

Tap To Preparing My Order
    SeleniumLibrary.Page Should Contain Element    ${manage_user_page_my_order_preparing}
    SeleniumLibrary.Click Element    ${manage_user_page_my_order_preparing}

The order should be created
    [Arguments]    ${order_id}
    SeleniumLibrary.Wait Until Page Contains Element    //td[text()='${order_id}']
    SeleniumLibrary.Scroll Element Into View    //td[text()='${order_id}']