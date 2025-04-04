*** Settings ***
Resource    ./import.robot

*** Keywords ***
Click add to cart
    Wait Until Element Is Visible    css=button.cart-button    5s
    Click Button    css=button.cart-button

Click add product successfully popup
    Wait Until Element Is Visible    ${item_locator.click_add_product_successfully_popup}    5s
    Click Button    ${item_locator.click_add_product_successfully_popup}
    Wait Until Element Is Not Visible    ${item_locator.click_add_product_successfully_popup}

Click cart icon
    Click Element    ${item_locator.click_cart_icon}


