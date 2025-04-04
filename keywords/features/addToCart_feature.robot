*** Settings ***
Resource    ../pages/import.robot

*** Keywords ***
addToCart
    home.Select item
    item.Click add to cart
    item.Click add product successfully popup
    item.Click cart icon