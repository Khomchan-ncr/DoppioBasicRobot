*** Keywords ***

Tap Product In List
    [Arguments]    ${locator}
    Wait Until Show On Display    ${locator}    ${GLOBAL_TIMEOUT}
    Swipe Until Page Contain Element    ${locator}
    Click element When Element Show On Display    ${locator}

Tap cart icon in main page
    Click element When Element Show On Display    ${main_page_cart_icon}