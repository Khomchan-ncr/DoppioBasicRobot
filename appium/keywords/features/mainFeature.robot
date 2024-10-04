*** Keywords ***

Tap product in list product main page
    [Arguments]    ${product}
    IF  '${platform}' == 'ios'
        Tap Product In List    //XCUIElementTypeStaticText[@name="Product Name" and @label="${product}"]
    ELSE
        Tap Product In List    //android.widget.TextView[@content-desc="Product Title" and @text="${product}"]/preceding-sibling::android.widget.ImageView
    END
