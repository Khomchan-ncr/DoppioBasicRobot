*** Settings ***
Resource    ../keywords/importFile.robot
Suite Setup    Start Appium Server
Suite Teardown    Stop Appium Server
*** Test Cases ***
TC-01 Open Demo Application
    Open Demo Application

TC-02 Click On Product "Sauce Labs Backpack"
    Tap Product In List Product Main Page    ${product.backpack}
    
TC-03 Add Product To Cart
    ${price}=    Tap Add To Cart In Product
    Set Suite Variable    ${price_product}    ${price}
    Log To Console    \n::${price_product}

TC-04 Click On Cart Icon
    Tap Cart Icon In Main Page

TC-05 Verify That In Cart Has Only One Product
    Verify That In Cart    ${price_product}    ${product.backpack}