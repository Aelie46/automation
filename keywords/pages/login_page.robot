*** Keywords ***
Open browser
    [Arguments]    ${URL}    ${BROWSER}   
    SeleniumLibrary.Open Browser    ${URL}    ${BROWSER}

Input username
    [Arguments]    ${USERNAME} 
    SeleniumLibrary.Wait Until Element Is Visible    ${login_locator.username}    5s
    SeleniumLibrary.Input Text    ${login_locator.username}    ${USERNAME}

Input password
    [Arguments]    ${PASSWORD} 
    SeleniumLibrary.Input Text    ${login_locator.password}    ${PASSWORD}

Click signin
    SeleniumLibrary.Click Element    ${login_locator.signin}