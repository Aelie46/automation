*** Settings ***
Resource    ./import.robot

*** Keywords ***
click next
    Click Button    ${selectPayment_locator.click_next}
    Wait Until Element Is Not Visible    ${selectPayment_locator.click_next}    10s
    Sleep    2s