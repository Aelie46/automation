*** Settings ***
Resource    ./import.robot

*** Keywords ***
Open doppio-training website
    Open Browser    ${tc01.url}    ${tc01.browser}
    Maximize Browser Window