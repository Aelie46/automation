*** Settings ***
Resource    ../pages/import.robot

*** Keywords ***
paymentDetail
    Input card number
    Input card exp
    Input card cvc
    Input card owner
    Click confirm
    Click payment successfully popup