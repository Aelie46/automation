*** Settings ***
#Resource    ../import.robot

*** Keywords ***
Search
    home_page.Input search keyword
    home_page.Click search