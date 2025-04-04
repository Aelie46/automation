*** Settings ***
Resource    ./import.robot

*** Keywords ***
Input card number
    Wait Until Element Is Visible    id=basic_bin    10s
    Input Text    id=basic_bin    4111111111111111

Input card exp
    Input Text    id=basic_exp    12/2030

Input card cvc
    Input Text    id=basic_cvc    123

Input card owner
    Input Text    id=basic_owner    Alice Wonderland

Click confirm
    Click Button    ${paymentDetail_locator.click_confirm}

Click payment successfully popup
    Wait Until Element Is Visible    xpath=//div[contains(@class, 'ant-modal-confirm-btns')]//button[.//span[text()='OK']]    5s
    Click Button    xpath=//div[contains(@class, 'ant-modal-confirm-btns')]//button[.//span[text()='OK']]