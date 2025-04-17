*** Settings ***
#Resource    ../import.robot

*** Keywords ***
Input username
    [Arguments]    ${EMAIL}
    SeleniumLibrary.Input Text    ${register_locator.input_username}    ${EMAIL}

Input password
    SeleniumLibrary.Input Text    ${register_locator.input_password}    ${global.password}

Confirm password
    SeleniumLibrary.Input Text    ${register_locator.input_confirm_password}    ${global.password}

Click signup button
    Click Button    ${register_locator.click_signup_button}

Click signup successfully popup
    SeleniumLibrary.Wait Until Element Is Visible    ${register_locator.click_signup_successfully_popup}    5s
    Click Button    ${register_locator.click_signup_successfully_popup}