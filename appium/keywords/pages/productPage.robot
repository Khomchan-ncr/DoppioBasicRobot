*** Settings ***
Library    AppiumLibrary

*** Keywords ***

Tap Add To Cart
    Swipe Until Page Contain Element    ${product_page_add_to_cart}
    ${price_product}=    Get Price Product
    # Log     \nprice:${price_product}
    Click element When Element Show On Display    ${product_page_add_to_cart}
    RETURN    ${price_product}

Get Price Product
    Wait Until Show On Display    ${product_page_price}    ${GLOBAL_TIMEOUT}
    ${price}    appiumLibrary.Get text    ${product_page_price}
    RETURN    ${price}