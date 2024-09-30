*** Keywords ***
Search Product
    [Arguments]    ${product}
    SeleniumLibrary.Wait Until Page Contains Element    ${main_page_search_field}    timeout=${GLOBAL_TIMOUT}
    SeleniumLibrary.Page Should Contain Element    ${main_page_search_field}
    SeleniumLibrary.Input Text    ${main_page_search_field}    ${product}
    SeleniumLibrary.Click Element    ${main_page_search_button}

The System Show Name Product
    [Arguments]    ${name}
    SeleniumLibrary.Wait Until Page Contains Element    //div[text()='${name}']    timeout=${GLOBAL_TIMOUT}
    SeleniumLibrary.Page Should Contain Element    //div[text()='${name}']

Tap Product
    [Arguments]    ${name}
    SeleniumLibrary.Click Element    //div[text()='${name}']

Tap Add To Cart
    SeleniumLibrary.Wait Until Page Contains Element    ${market_page_add_to_cart_button}
    SeleniumLibrary.Page Should Contain Element    ${market_page_add_to_cart_button}
    SeleniumLibrary.Click Element    ${market_page_add_to_cart_button}


The System Show Add To Cart Message Success
    SeleniumLibrary.Wait Until Page Contains Element    ${market_page_add_to_cart_success_msg}    timeout=${GLOBAL_TIMOUT}
    SeleniumLibrary.Page Should Contain Element    ${market_page_add_to_cart_success_msg}
