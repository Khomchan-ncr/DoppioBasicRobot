*** Settings ***
Library    AppiumLibrary

*** Keywords ***

Tap add to cart and get price in product
    Swipe until page contain element    ${product_page_add_to_cart}
    ${price_product}=    Get price product
    Click element when element show on display    ${product_page_add_to_cart}
    RETURN    ${price_product}
