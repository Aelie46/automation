*** Variables ***
${paymentDetail_locator.click_confirm}    xpath=//button[@type='submit' and contains(., 'Confirm Payment')]
${paymentDetail_locator.input_card_number}    id=basic_bin
${paymentDetail_locator.input_card_exp}    id=basic_exp
${paymentDetail_locator.input_card_cvc}    id=basic_cvc
${paymentDetail_locator.input_card_owner}    id=basic_owner
${paymentDetail_locator.click_payment_successfully_popup}    xpath=//div[contains(@class, 'ant-modal-confirm-btns')]//button[.//span[text()='OK']]
