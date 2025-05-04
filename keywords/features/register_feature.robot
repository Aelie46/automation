*** Settings ***
#Resource    ../import.robot

*** Keywords ***
Register
    [Arguments]    ${EMAIL}
    home_page.Click user icon
    login_page.Click signup button
    register_page.Input username    ${EMAIL}
    register_page.Input password
    register_page.Confirm password
    register_page.Click signup button
    register_page.Click signup successfully popup