*** Keywords ***

Input Phone In Address
    [Arguments]    ${phone_no}
    SeleniumLibrary.Wait Until Page Contains Element    ${payment_page_address_phone_field}    timeout=${GLOBAL_TIMOUT}
    SeleniumLibrary.Page Should Contain Element    ${payment_page_address_phone_field}
    SeleniumLibrary.Input Text    ${payment_page_address_phone_field}    ${phone_no}

Input Name In Address
    [Arguments]    ${name}
    Sleep    1s
    SeleniumLibrary.Page Should Contain Element    ${payment_page_address_name_field}
    SeleniumLibrary.Input Text    ${payment_page_address_name_field}    ${name}

Input Surname In Address
    [Arguments]    ${surname}
    SeleniumLibrary.Page Should Contain Element    ${payment_page_address_surname_field}
    SeleniumLibrary.Input Text    ${payment_page_address_surname_field}    ${surname}

Input Shipping In Address
    [Arguments]    ${shipping}
    SeleniumLibrary.Page Should Contain Element    ${payment_page_address_shipping_field}
    SeleniumLibrary.Input Text    ${payment_page_address_shipping_field}    ${shipping}

Tap Pay Button
    SeleniumLibrary.Wait Until Page Contains Element    ${payment_page_pay_button}    timeout=${GLOBAL_TIMOUT}
    SeleniumLibrary.Scroll Element Into View    ${payment_page_pay_button}
    SeleniumLibrary.Page Should Contain Element    ${payment_page_pay_button}
    SeleniumLibrary.Click Element    ${payment_page_pay_button}

Tap Pay With Credit Card
    SeleniumLibrary.Wait Until Page Contains Element    ${payment_page_credit_type}    timeout=${GLOBAL_TIMOUT}
    SeleniumLibrary.Page Should Contain Element    ${payment_page_credit_type}
    SeleniumLibrary.Click Element    ${payment_page_credit_type}

Tap Next Button
    SeleniumLibrary.Wait Until Page Contains Element    ${payment_page_next_button}    timeout=${GLOBAL_TIMOUT}
    SeleniumLibrary.Page Should Contain Element    ${payment_page_next_button}
    SeleniumLibrary.Click Element    ${payment_page_next_button}

Input Credit Card
    [Arguments]    ${card_number}    ${exp}    ${cvc}    ${holder}
    SeleniumLibrary.Wait Until Page Contains Element    ${payment_page_card_number_field}    timeout=${GLOBAL_TIMOUT}
    SeleniumLibrary.Page Should Contain Element    ${payment_page_card_number_field}
    SeleniumLibrary.Input Text    ${payment_page_card_number_field}    ${card_number}
    SeleniumLibrary.Input Text    ${payment_page_expiration_date_field}    ${exp}
    SeleniumLibrary.Input Text    ${payment_page_cv_code_field}    ${cvc}
    SeleniumLibrary.Input Text    ${payment_page_card_holder_field}    ${holder}

Tap Confirm Payment
    SeleniumLibrary.Wait Until Page Contains Element    ${payment_page_confirm_payment_button}    timeout=${GLOBAL_TIMOUT}
    SeleniumLibrary.Page Should Contain Element    ${payment_page_confirm_payment_button}
    SeleniumLibrary.Click Element    ${payment_page_confirm_payment_button}

The System Show Payment Message Success
    SeleniumLibrary.Wait Until Page Contains Element    ${payment_page_order_success_msg}    timeout=${GLOBAL_TIMOUT}
    SeleniumLibrary.Page Should Contain Element    ${payment_page_order_success_msg}

Get Order Id
    SeleniumLibrary.Wait Until Page Contains Element    //*[contains(text(),' ORDER ID')]    timeout=${GLOBAL_TIMOUT}
    ${order_id}    Get Text    //*[contains(text(),'ORDER ID')]
    ${order_id}=    Get Lines Containing String    ${order_id}    ORDER ID:
    ${order_id}=    Remove String    ${order_id}    ${SPACE}    ORDERID:
    RETURN    ${order_id}
    