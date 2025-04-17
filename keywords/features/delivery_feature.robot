*** Settings ***
#Resource    ../import.robot

*** Keywords ***
delivery
    [Arguments]    ${EMAIL}
    delivery_page.Input name
    delivery_page.Input surname
    delivery_page.Input address
    delivery_page.Input phone
    delivery_page.Input email    ${EMAIL}
    delivery_page.Click pay