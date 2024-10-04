*** Keywords ***
Start Appium Server
    Start Process    ${appium_server}    --port    ${appium_port}
    Sleep    3s    # Wait for the server to start

Stop Appium Server
    Terminate Process

Open Demo Application
    IF  '${platform}' == 'ios'
        appiumLibrary.Open Application    ${urlHost}    automationName=${${platform}.automationName}    platformName=${${platform}.platformName}    platformVersion=${${platform}.platformVersion}
    ...    app=${${platform}.app}    udid=${${platform}.udid}
    ELSE
        appiumLibrary.Open Application    ${urlHost}    automationName=${${platform}.automationName}    platformName=${${platform}.platformName}    platformVersion=${${platform}.platformVersion}
    ...    appPackage=${${platform}.appPackage}    appActivity=${${platform}.appActivity}
    END
    Wait Until Show On Display    ${main_page_cart_icon}    ${GLOBAL_TIMEOUT}

Swipe Until Page Contain Element
    [Arguments]                       ${locator}
    ${status}                         Set Variable                              false
    WHILE                             '${status}' == 'false'
        Sleep                             1s
        ${result}                         appiumLibrary.Get Matching Xpath Count    ${locator}
        IF                                ${result} > 0
            ${status}                         Set Variable                              true
        END
        IF                                '${status}' == 'true'
            BREAK
        END
        appiumLibrary.Swipe By Percent    50                                        50            50    0.5    1000
    END

Wait Until Show On Display
    [Arguments]    ${locator}    ${timeout}=${None}
    appiumLibrary.Wait until page contains element    ${locator}    ${timeout}
    appiumLibrary.Page should contain element    ${locator}

Click element When Element Show On Display
    [Arguments]    ${locator}
    Wait Until Show On Display    ${locator}    ${GLOBAL_TIMEOUT}
    appiumLibrary.Click element    ${locator}

Input Data In Box Field When Box Show On Display
    [Arguments]    ${locator}    ${text}
    Wait Until Show On Display    ${locator}    ${GLOBAL_TIMEOUT}
    appiumLibrary.Input text    ${locator}    ${text}


    