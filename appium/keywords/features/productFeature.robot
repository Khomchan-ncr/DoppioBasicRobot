*** Settings ***
Library    AppiumLibrary

*** Keywords ***

Tap add to cart and get price in product
    Swipe Until Page Contain Element    ${product_page_add_to_cart}
    ${price_product}=    Get Price Product
    Click element When Element Show On Display    ${product_page_add_to_cart}
    RETURN    ${price_product}
