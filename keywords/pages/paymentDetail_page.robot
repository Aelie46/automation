*** Settings ***
#Resource    ../import.robot

*** Keywords ***
Input card number
    SeleniumLibrary.Wait Until Element Is Visible    ${paymentDetail_locator.input_card_number}    10s
    SeleniumLibrary.Input Text    ${paymentDetail_locator.input_card_number}    ${paymentDetail.card_number}

Input card exp
    SeleniumLibrary.Input Text    ${paymentDetail_locator.input_card_exp}    ${paymentDetail.card_exp}

Input card cvc
    SeleniumLibrary.Input Text    ${paymentDetail_locator.input_card_cvc}    ${paymentDetail.card_cvc}

Input card owner
    SeleniumLibrary.Input Text    ${paymentDetail_locator.input_card_owner}    ${paymentDetail.card_owner}

Click confirm
    SeleniumLibrary.Click Button    ${paymentDetail_locator.click_confirm}

Click payment successfully popup
    SeleniumLibrary.Wait Until Element Is Visible    ${paymentDetail_locator.click_payment_successfully_popup}    5s
    SeleniumLibrary.Click Button    ${paymentDetail_locator.click_payment_successfully_popup}