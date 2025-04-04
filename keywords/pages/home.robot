*** Settings ***
Resource    ./import.robot

*** Keywords ***
Click user icon
    Wait Until Element Is Visible    ${home_locator.click_user_icon}    5s
    Click Element    ${home_locator.click_user_icon}

Input search keyword
    Wait Until Element Is Visible    ${home_locator.input_search_keyword}    5s
    Input Text    ${home_locator.input_search_keyword}    phone

Click search
    Click Button  ${home_locator.click_search}

Select item
    Wait Until Element Is Visible    ${home_locator.search_item}    5s
    Click Element    ${home_locator.search_item}


