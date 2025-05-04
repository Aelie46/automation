*** Settings ***
#Resource    ../import.robot

*** Keywords ***
Input email
    [Arguments]    ${EMAIL}
    SeleniumLibrary.Wait Until Element Is Visible    ${login_locator.input_email}    5s
    SeleniumLibrary.Input Text    ${login_locator.input_email}    ${EMAIL}

Input password
    SeleniumLibrary.Input Text    ${login_locator.input_password}    ${global.password}

Click login button
    SeleniumLibrary.Click Button  ${login_locator.click_login_button}

Click login successfully popup
    SeleniumLibrary.Wait Until Element Is Visible    ${login_locator.click_login_successfully_popup}    5s
    SeleniumLibrary.Click Button    ${login_locator.click_login_successfully_popup}

Click signup button
    SeleniumLibrary.Click Element    ${login_locator.click_signup_button}