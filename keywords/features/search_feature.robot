*** Settings ***
#Resource    ../import.robot

*** Keywords ***
Search
    [Arguments]    ${SEARCH_KEYWORD}
    home_page.Input search keyword    ${SEARCH_KEYWORD}
    home_page.Click search