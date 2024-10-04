*** Keywords ***

Verify product amount
    Wait until show on display    ${cart_page_my_cart_title}    timeout=${GLOBAL_TIMEOUT}
    AppiumLibrary.Element text should be       ${cart_page_product_amount}    1

Verify product price
    [Arguments]    ${price}
    Wait until show on display    ${cart_page_my_cart_title}    timeout=${GLOBAL_TIMEOUT}
    AppiumLibrary.Element text should be        ${cart_page_product_price}    ${price}

Verify product name
    [Arguments]    ${product}
    Wait until show on display    ${cart_page_my_cart_title}    timeout=${GLOBAL_TIMEOUT}
    AppiumLibrary.Element text should be        ${cart_page_product_name}    ${product}