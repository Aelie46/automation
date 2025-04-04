*** Settings ***
Resource    ./import.robot

*** Keywords ***
Click continue shopping
    Wait Until Element Is Visible    ${paymentSuccess_locator.click_continue_shopping}    10s
    Sleep                            1s
    Click Element                    ${paymentSuccess_locator.click_continue_shopping}