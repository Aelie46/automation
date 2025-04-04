*** Settings ***
Resource    ./import.robot

*** Keywords ***
Input name
    Wait Until Page Contains Element    id=form_item_name
    Input Text    id=form_item_name         Alice

Input surname
    Input Text    id=form_item_surName      Wonderland

Input address
    Input Text    id=form_item_address      123 Magic Street

Input phone
    Input Text    id=form_item_phone        0812345678

Input email
    [Arguments]    ${EMAIL}
    Input Text    id=form_item_email        ${EMAIL}

Click pay
    Click Button    xpath=//button[contains(., 'PAY')]
    Sleep    4s