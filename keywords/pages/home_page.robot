*** Settings ***
#Resource    ../import.robot

*** Keywords ***
Click user icon
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.click_user_icon}    5s
    SeleniumLibrary.Click Element    ${home_locator.click_user_icon}

Input search keyword
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.input_search_keyword}    5s
    SeleniumLibrary.Input Text    ${home_locator.input_search_keyword}    ${home.search_keyword}

Click search
    SeleniumLibrary.Click Button  ${home_locator.click_search}

Select item
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.search_item}    5s
    SeleniumLibrary.Click Element    ${home_locator.search_item}


