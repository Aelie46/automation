*** Settings ***
Resource    ./import.robot

*** Keywords ***
Click logout
    Wait Until Element Is Visible    ${account_locator.click_logout}    5s
    Click Button    ${account_locator.click_logout}

Click Pending Payment
    Wait Until Element Is Visible    ${account_locator.click_pending_payment}    10s
    Click Element                    ${account_locator.click_pending_payment}

Count order row
    ${order_rows}=    Get WebElements    ${account_locator.count_order_row}
    ${order_count}=   Get Length         ${order_rows}
    Should Be True    ${order_count} > 0    Order should be present