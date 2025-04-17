*** Settings ***
#Resource    ../import.robot

*** Keywords ***
Click continue shopping
    SeleniumLibrary.Wait Until Element Is Visible    ${paymentSuccess_locator.click_continue_shopping}    10s
    Wait Until Keyword Succeeds    10s    1s    Click Element    ${paymentSuccess_locator.click_continue_shopping}

Get order id
    SeleniumLibrary.Execute Javascript    document.querySelector('.success-description')?.scrollIntoView()
    Wait Until Keyword Succeeds    15s    1s    Verify Order Text Contains Order ID
    ${order_text}=    SeleniumLibrary.Execute Javascript    return document.body.innerText
    Log    ORDER TEXT = ${order_text}
    ${ORDER_ID}=    Evaluate    re.findall(r'\\b\\d{5}\\b', '''${order_text}''')[0]    re
    Log    EXTRACTED ORDER ID = ${ORDER_ID}
    Return From Keyword    ${ORDER_ID}
    Log To Console    ✅ Extracted Order ID = ${ORDER_ID}

Verify Order Text Contains Order ID
    ${text}=    SeleniumLibrary.Execute Javascript    return document.body.innerText
    Should Match Regexp    ${text}    (?i)order id