*** Settings ***
#Resource    ../import.robot

*** Keywords ***
checkOrder
    home_page.Click user icon
    ${order_id}=    Get order id
    account_page.Wait for pending payment
    account_page.Check order number    ${order_id}