*** Keywords ***
Start appium server
    Start arocess    ${appium_server}    --port    ${appium_port}
    Sleep    3s    # Wait for the server to start

Stop appium server
    Terminate Process

Open demo application
    IF  '${platform}' == 'ios'
        AppiumLibrary.Open application    ${urlHost}    automationName=${${platform}.automationName}    platformName=${${platform}.platformName}    platformVersion=${${platform}.platformVersion}
    ...    app=${${platform}.app}    udid=${${platform}.udid}
    ELSE
        AppiumLibrary.Open application    ${urlHost}    automationName=${${platform}.automationName}    platformName=${${platform}.platformName}    platformVersion=${${platform}.platformVersion}
    ...    appPackage=${${platform}.appPackage}    appActivity=${${platform}.appActivity}
    END
    Wait until show on display    ${main_page_cart_icon}    ${GLOBAL_TIMEOUT}

Swipe until page contain element
    [Arguments]                       ${locator}
    ${status}                         Set Variable                              false
    WHILE                             '${status}' == 'false'
        Sleep                             1s
        ${result}                         AppiumLibrary.Get Matching Xpath Count    ${locator}
        IF                                ${result} > 0
            ${status}                         Set Variable                              true
        END
        IF                                '${status}' == 'true'
            BREAK
        END
        AppiumLibrary.Swipe by percent    50                                        50            50    0.5    1000
    END

Wait until show on display
    [Arguments]    ${locator}    ${timeout}=${None}
    AppiumLibrary.Wait until page contains element    ${locator}    ${timeout}
    AppiumLibrary.Page should contain element    ${locator}

Click element when element show on display
    [Arguments]    ${locator}
    Wait until show on display    ${locator}    ${GLOBAL_TIMEOUT}
    AppiumLibrary.Click element    ${locator}

Input data in box field when box show on display
    [Arguments]    ${locator}    ${text}
    Wait until show on display    ${locator}    ${GLOBAL_TIMEOUT}
    AppiumLibrary.Input text    ${locator}    ${text}


    