*** Keywords ***

Tap product in list product main page
    [Arguments]    ${product}
    IF  '${platform}' == 'ios'
        Tap product in list    //XCUIElementTypeStaticText[@name="Product Name" and @label="${product}"]
    ELSE
        Tap product in list    //android.widget.TextView[@content-desc="Product Title" and @text="${product}"]/preceding-sibling::android.widget.ImageView
    END
