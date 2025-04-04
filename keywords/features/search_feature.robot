*** Settings ***
Resource    ../pages/import.robot

*** Keywords ***
Search
    home.Input search keyword
    home.Click search