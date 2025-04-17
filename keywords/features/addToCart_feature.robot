*** Settings ***
#Resource    ../import.robot

*** Keywords ***
addToCart
    home_page.Select item
    item_page.Click add to cart
    item_page.Click add product successfully popup
    item_page.Click cart icon