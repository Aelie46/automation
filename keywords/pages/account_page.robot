*** Settings ***
#Resource    ../import.robot

*** Keywords ***
Click logout
    SeleniumLibrary.Wait Until Element Is Visible    ${account_locator.click_logout}    5s
    SeleniumLibrary.Click Button    ${account_locator.click_logout}

Wait for pending payment
    SeleniumLibrary.Wait Until Element Is Visible    ${account_locator.click_pending_payment}    10s

Check order number
    [Arguments]    ${ORDER_ID}
    ${order_found}=    Run Keyword And Return Status    SeleniumLibrary.Element Should Be Visible    xpath=//td[contains(text(), '${ORDER_ID}')]
    Should Be True    ${order_found}    Order ID should be present in the table