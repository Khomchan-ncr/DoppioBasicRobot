*** Keywords ***

Tap Manage User Icon
    SeleniumLibrary.Wait Until Page Contains Element    ${main_page_user_manage_button}    timeout=${GLOBAL_TIMOUT}
    SeleniumLibrary.Click Element    ${main_page_user_manage_button}

Tap Cart Icon
    SeleniumLibrary.Wait Until Page Contains Element    ${main_page_cart_button}    timeout=${GLOBAL_TIMOUT}
    SeleniumLibrary.Page Should Contain Element    ${main_page_cart_button}
    SeleniumLibrary.Click Element    ${main_page_cart_button}
