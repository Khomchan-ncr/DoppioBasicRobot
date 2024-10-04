*** Keywords ***

Tap product in list
    [Arguments]    ${locator}
    Wait until show on display    ${locator}    ${GLOBAL_TIMEOUT}
    Swipe until page contain element    ${locator}
    Click element when element show on display    ${locator}

Tap cart icon in main page
    Click element when element show on display    ${main_page_cart_icon}