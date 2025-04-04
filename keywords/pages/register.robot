*** Settings ***
Resource    ./import.robot

*** Keywords ***
Input username
    [Arguments]    ${EMAIL}
    Input Text    id=basic_username    ${EMAIL}

Input password
    Input Text    id=basic_password    ${tc01.password}

Confirm password
    Input Text    id=basic_confirmPassword    ${tc01.password}

Click signup button
    Click Button    ${register_locator.click_signup_button}

Click signup successfully popup
    Wait Until Element Is Visible    ${register_locator.click_signup_successfully_popup}    5s
    Click Button    ${register_locator.click_signup_successfully_popup}