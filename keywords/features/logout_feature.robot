*** Settings ***
Resource    ../pages/import.robot

*** Keywords ***
logout
    home.Click user icon
    account.Click logout
    home.Click user icon