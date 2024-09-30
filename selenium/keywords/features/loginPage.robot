*** Keywords ***

Tap Sign Up Button To Login Page
    SeleniumLibrary.Page Should Contain Element    ${login_page_sign_up_button}
    Sleep    1s
    SeleniumLibrary.Click Element    ${login_page_sign_up_button}
