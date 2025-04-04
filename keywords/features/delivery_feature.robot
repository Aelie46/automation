*** Settings ***
Resource    ../pages/import.robot

*** Keywords ***
delivery
    [Arguments]    ${EMAIL}
    delivery.Input name
    delivery.Input surname
    delivery.Input address
    delivery.Input phone
    delivery.Input email    ${EMAIL}
    delivery.Click pay