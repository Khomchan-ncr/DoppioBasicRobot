*** Keywords ***

Verify product that in cart
    [Arguments]    ${price}    ${product}
    Verify product amount
    Verify product price    ${price}
    Verify product name    ${product}
