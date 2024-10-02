*** Keywords ***
Start Appium Server
    Start Process    ${appium_server}    --port    ${appium_port}
    Sleep    3s    # Wait for the server to start

Stop Appium Server
    Terminate Process

Open Demo Application
    IF  '${platform}' == 'ios'
        AppiumLibrary.Open Application    ${urlHost}    automationName=${${platform}.automationName}    platformName=${${platform}.platformName}    platformVersion=${${platform}.platformVersion}
    ...    app=${${platform}.app}    udid=${${platform}.udid}
    ELSE
        AppiumLibrary.Open Application    ${urlHost}    automationName=${${platform}.automationName}    platformName=${${platform}.platformName}    platformVersion=${${platform}.platformVersion}
    ...    appPackage=${${platform}.appPackage}    appActivity=${${platform}.appActivity}
    END
    AppiumLibrary.Wait Until Page Contains Element    ${main_page_cart_icon}    timeout=30s
    AppiumLibrary.Page Should Contain Element    ${main_page_cart_icon}

Swipe Until Page Contain Element
    [Arguments]                       ${locator}
    ${status}                         Set Variable                              false
    WHILE                             '${status}' == 'false'
        Sleep                             1s
        ${result}                         AppiumLibrary.Get Matching Xpath Count    ${locator}
            Log To Console                    \nresult: ${result}
        IF                                ${result} > 0
            ${status}                         Set Variable                              true
        END
         # Log To Console                    \nStatus: ${status}\n
        IF                                '${status}' == 'true'
            BREAK
        END
        AppiumLibrary.Swipe By Percent    50                                        50            50    0.5    1000
    END



    