*** Keywords ***

Verify That In Cart
    [Arguments]    ${price}    ${product}
    AppiumLibrary.Wait Until Page Contains Element    ${cart_page_my_cart_title}    timeout=${GLOBAL_TIMOUT}
    ${amount}    AppiumLibrary.Get Text   ${cart_page_product_amount}
    AppiumLibrary.Element Text Should Be       ${cart_page_product_amount}    1
    AppiumLibrary.Element Text Should Be        ${cart_page_product_price}    ${price}
    AppiumLibrary.Element Text Should Be        ${cart_page_product_name}    ${product}
