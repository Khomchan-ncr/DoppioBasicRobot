*** Settings ***
Resource    ../keywords/common/importFile.robot
Suite Setup    commonKeyword.Start Appium Server
Suite Teardown    Run Keywords    AppiumLibrary.Close Application    AND    commonKeyword.Stop Appium Server
*** Test Cases ***
TC-01 Open demo application
    commonKeyword.Open demo application

TC-02 Click on product "Sauce Labs Backpack"
    mainFeature.Tap product in list product main page    ${product.backpack}
    
TC-03 Add product to cart
    ${price}=    productFeature.Tap add to cart and get price in product
    Set suite variable    ${price_product}    ${price}

TC-04 Click on cart icon
    mainPage.Tap cart icon in main page

TC-05 Verify that in cart has only one product
    cartFeature.Verify product that in cart    ${price_product}    ${product.backpack}