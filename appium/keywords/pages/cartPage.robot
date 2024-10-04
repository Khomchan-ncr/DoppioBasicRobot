*** Keywords ***

Verify Product Amount
    Wait Until Show On Display    ${cart_page_my_cart_title}    timeout=${GLOBAL_TIMEOUT}
    appiumLibrary.Element text should be       ${cart_page_product_amount}    1

Verify Product Price
    [Arguments]    ${price}
    Wait Until Show On Display    ${cart_page_my_cart_title}    timeout=${GLOBAL_TIMEOUT}
    appiumLibrary.Element text should be        ${cart_page_product_price}    ${price}

Verify Product Name
    [Arguments]    ${product}
    Wait Until Show On Display    ${cart_page_my_cart_title}    timeout=${GLOBAL_TIMEOUT}
    appiumLibrary.Element text should be        ${cart_page_product_name}    ${product}