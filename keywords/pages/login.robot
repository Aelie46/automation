*** Settings ***
Resource    ./import.robot

*** Keywords ***
Input email
    [Arguments]    ${EMAIL}
    Wait Until Element Is Visible    ${login_locator.input_email}    5s
    Input Text    ${login_locator.input_email}    ${EMAIL}

Input password
    Input Text    ${login_locator.input_password}    ${tc01.password}

Click login button
    Click Button  ${login_locator.click_login_button}

Click login successfully popup
    Wait Until Element Is Visible    ${login_locator.click_login_successfully_popup}    5s
    Click Button    ${login_locator.click_login_successfully_popup}
