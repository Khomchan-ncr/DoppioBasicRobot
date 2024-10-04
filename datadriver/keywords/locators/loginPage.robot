*** Variables ***

### Login Page ###
${login_page_username_field}                   xpath=//input[@type="text"]
${login_page_password_field}                   xpath=//input[@type="password"]
${login_page_login_button}                     xpath=//button[@type="submit"]
${login_page_sign_up_button}                   xpath=//span[text()="Sign up"]
${login_page_login_error_msg}                  xpath=//div[text()='Login Failed']
${login_page_login_success_msg}                xpath=//div[text()='Login successfully']
${login_page_ok_button}                        xpath=//span[text()='OK']
