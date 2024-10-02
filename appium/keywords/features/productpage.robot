*** Settings ***
Library    AppiumLibrary

*** Keywords ***

Tap Add To Cart In Product
    Swipe Until Page Contain Element    ${product_page_add_to_cart}
    ${price_product}=    Get Price Product
    Log To Console     \nprice:${price_product}
    AppiumLibrary.Page Should Contain Element    ${product_page_add_to_cart}
    AppiumLibrary.Click Element        ${product_page_add_to_cart}
    RETURN    ${price_product}

Get Price Product
    AppiumLibrary.Page Should Contain Element    ${product_page_price}    timeout=${GLOBAL_TIMOUT}
    ${price}    AppiumLibrary.Get Text    ${product_page_price}
    RETURN    ${price}