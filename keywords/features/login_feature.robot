*** Settings ***
#Resource    ../import.robot

*** Keywords ***
login
    [Arguments]    ${EMAIL}
    login_page.Input email    ${EMAIL}
    login_page.Input password
    login_page.Click login button
    login_page.Click login successfully popup