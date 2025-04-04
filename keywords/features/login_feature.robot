*** Settings ***
Resource    ../pages/import.robot

*** Keywords ***
login
    [Arguments]    ${EMAIL}
    login.Input email    ${EMAIL}
    login.Input password
    login.Click login button
    login.Click login successfully popup