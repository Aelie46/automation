*** Settings ***
#Resource    ../import.robot

*** Keywords ***
Open doppio-training website
    SeleniumLibrary.Open Browser    ${global.url}    ${global.browser}
    SeleniumLibrary.Maximize Browser Window