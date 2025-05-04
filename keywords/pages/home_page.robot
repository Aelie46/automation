*** Settings ***
#Resource    ../import.robot

*** Keywords ***
Click user icon
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.click_user_icon}    5s
    SeleniumLibrary.Click Element    ${home_locator.click_user_icon}

Input search keyword
    [Arguments]    ${KEYWORD}
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.input_search_keyword}    5s
    SeleniumLibrary.Input Text    ${home_locator.input_search_keyword}    ${KEYWORD}

Click search
    SeleniumLibrary.Click Button  ${home_locator.click_search}

Select item
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.search_item}    5s
    SeleniumLibrary.Click Element    ${home_locator.search_item}

Check if the amount is corrrect
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.Check if the amount is corrrect}    5s
    SeleniumLibrary.Element Text Should Be           ${home_locator.Check if the amount is corrrect}    ${productInfo.amount}

Check if the description is correct
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.Check if the description is correct}    5s
    SeleniumLibrary.Element Text Should Be           ${home_locator.Check if the description is correct}    ${productInfo.description}

Check if the discount price is correct
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.Check if the discount price is correct}    5s
    SeleniumLibrary.Element Text Should Be           ${home_locator.Check if the discount price is correct}    ${productInfo.discount}
