*** Settings ***
Library    AppiumLibrary

*** Keywords ***

Tap add to cart
    Swipe until page contain element    ${product_page_add_to_cart}
    ${price_product}=    Get price product
    # Log     \nprice:${price_product}
    Click element when element show on display    ${product_page_add_to_cart}
    RETURN    ${price_product}

Get price product
    Wait until show on display    ${product_page_price}    ${GLOBAL_TIMEOUT}
    ${price}    AppiumLibrary.Get text    ${product_page_price}
    RETURN    ${price}