*** Settings ***
Resource    ../pages/import.robot

*** Keywords ***
checkOrder
    home.Click user icon
    account.Click Pending Payment
    account.Count order row