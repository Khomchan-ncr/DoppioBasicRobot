*** Settings ***
Resource    ../keywords/importFile.robot
Suite Teardown    Close All Browsers

*** Test Cases ***
TC-001 Open Web Doppio Test
    Open Web Browser    ${url.${env}}    ${browser.chrome}

TC-002 Sign Up User
    Tap Manage User Icon
    Tap Sign Up Button To Login Page
    Input Username To Register Page
    ${confirm_password}=    Input Password To Register Page
    Input Confirm Password To Register Page    ${confirm_password}
    Tap Sign Up Button To Register Page
    The System Show Register Success Message

TC-002 Login With The Register Account
    Click Ok Button

TC-004 Search Product Phone
    Search Product    ${product.phone}
    The System Show Name Product    ${product.phone}

TC-005 Add Product To Cart
    Tap Product    ${product.phone}
    Tap Add To Cart
    The System Show Add To Cart Message Success
    Click Ok Button
    Tap Cart Icon

TC-006 Fill Delivery info field
    Input Name In Address    ${user.name}
    Input Surname In Address    ${user.surname}
    Input Shipping In Address    ${address.shipping_address}
    Input Phone In Address    ${user.phone}
    Tap Pay Button

TC-007 Purchase The Product With Credit Card
    Tap Pay With Credit Card
    Tap Next Button
    Input Credit Card    ${credit.number}    ${credit.exp}    ${credit.cvc}    ${user.name}
    Tap Confirm Payment
    The System Show Payment Message Success   
    Click Ok Button
    ${order_id}=    Get Order Id
    Set Suite Variable    ${order_id}

TC-008 Navigate Order Management
    Tap Manage User Icon
    Navigate To My Order

TC-009 Verify Order To Created
    The order should be created    ${order_id}

    
    
    

    

    
    
