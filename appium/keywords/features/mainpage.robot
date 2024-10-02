*** Keywords ***

Tap Product In List Product Main Page
    [Arguments]    ${product}
    IF  '${platform}' == 'ios'
        Swipe Until Page Contain Element    //XCUIElementTypeStaticText[@name="Product Name" and @label="${product}"]
        AppiumLibrary.Page Should Contain Element    //XCUIElementTypeStaticText[@name="Product Name" and @label="${product}"]
        AppiumLibrary.Click Element    //XCUIElementTypeStaticText[@name="Product Name" and @label="${product}"]
        AppiumLibrary.Wait Until Page Contains Element    //XCUIElementTypeStaticText[@name="Sauce Labs Backpack"]    timeout=${GLOBAL_TIMOUT}
        
    ELSE
        Swipe Until Page Contain Element    //android.widget.TextView[@content-desc="Product Title" and @text="${product}"]/preceding-sibling::android.widget.ImageView
        AppiumLibrary.Page Should Contain Element    //android.widget.TextView[@content-desc="Product Title" and @text="${product}"]/preceding-sibling::android.widget.ImageView
        AppiumLibrary.Click Element    //android.widget.TextView[@content-desc="Product Title" and @text="${product}"]/preceding-sibling::android.widget.ImageView
        AppiumLibrary.Wait Until Page Contains Element    //android.widget.TextView[@text="${product}"]    timeout=${GLOBAL_TIMOUT}
    END

Tap Cart Icon In Main Page
    AppiumLibrary.Wait Until Page Contains Element    ${main_page_cart_icon}    timeout=${GLOBAL_TIMOUT}
    AppiumLibrary.Click Element    ${main_page_cart_icon}