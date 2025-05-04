*** Settings ***
#Resource    ../import.robot

*** Keywords ***
Input name
    SeleniumLibrary.Wait Until Page Contains Element    ${delivery_locator.input_name}
    SeleniumLibrary.Press Keys            ${delivery_locator.input_name}    A
    SeleniumLibrary.Press Keys            ${delivery_locator.input_name}    l
    SeleniumLibrary.Press Keys            ${delivery_locator.input_name}    i
    SeleniumLibrary.Press Keys            ${delivery_locator.input_name}    c
    SeleniumLibrary.Press Keys            ${delivery_locator.input_name}    e
    SeleniumLibrary.Wait Until Element Is Visible    ${delivery_locator.input_surname}    10s

Input surname
    SeleniumLibrary.Input Text    ${delivery_locator.input_surname}      ${delivery.surname}

Input address
    SeleniumLibrary.Input Text    ${delivery_locator.input_address}      ${delivery.address}

Input phone
    SeleniumLibrary.Input Text    ${delivery_locator.input_phone}        ${delivery.phone}

Input email
    [Arguments]    ${EMAIL}
    SeleniumLibrary.Input Text    ${delivery_locator.input_email}        ${EMAIL}

Click pay
    SeleniumLibrary.Click Button    xpath=//button[contains(., 'PAY')]
    SeleniumLibrary.Wait Until Page Contains Element    ${selectPayment_locator.click_next}    15s