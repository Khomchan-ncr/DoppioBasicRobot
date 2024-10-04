*** Keywords ***

Verify product that in cart
    [Arguments]    ${price}    ${product}
    Verify Product Amount
    Verify Product Price    ${price}
    Verify Product Name    ${product}
