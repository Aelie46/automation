*** Settings ***
Resource    ../pages/import.robot

*** Keywords ***
Register
    [Arguments]    ${EMAIL}
    register.Input username    ${EMAIL}
    register.Input password
    register.Confirm password
    register.Click signup button
    register.Click signup successfully popup