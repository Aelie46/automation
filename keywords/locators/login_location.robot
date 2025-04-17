*** Variables ***
${login_locator.input_email}    xpath=(//input[@type='text'])[1]
${login_locator.input_password}    xpath=(//input[@type='password'])[1]
${login_locator.click_login_button}    xpath=//button[contains(@class,'button-login')]
${login_locator.click_login_successfully_popup}    xpath=//button[.//span[text()='OK']]
${login_locator.click_signup_button}    xpath=//button[span[text()='Sign up']]
