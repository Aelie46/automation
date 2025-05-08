*** Keywords ***
Input username
    [Arguments]    ${USERNAME} 
    SeleniumLibrary.Wait Until Element Is Visible    ${chat_login_locator.username}    5s
    SeleniumLibrary.Input Text    ${chat_login_locator.username}    ${USERNAME}

Input password
    [Arguments]    ${PASSWORD} 
    SeleniumLibrary.Input Text    ${chat_login_locator.password}    ${PASSWORD}

Click Login
    SeleniumLibrary.Click Element    ${chat_login_locator.login}