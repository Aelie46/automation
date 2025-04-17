*** Settings ***
#Resource    ../import.robot

*** Keywords ***
paymentDetail
    paymentDetail_page.Input card number
    paymentDetail_page.Input card exp
    paymentDetail_page.Input card cvc
    paymentDetail_page.Input card owner
    paymentDetail_page.Click confirm
    paymentDetail_page.Click payment successfully popup