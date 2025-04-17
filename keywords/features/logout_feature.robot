*** Settings ***
#Resource    ../import.robot

*** Keywords ***
logout
    home_page.Click user icon
    account_page.Click logout
    home_page.Click user icon