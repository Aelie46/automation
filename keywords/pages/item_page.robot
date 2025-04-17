*** Settings ***
#Resource    ../import.robot

*** Keywords ***
Click add to cart
    SeleniumLibrary.Wait Until Element Is Visible    ${item_locator.click_add_to_cart}    5s
    SeleniumLibrary.Click Button    ${item_locator.click_add_to_cart}

Click add product successfully popup
    #Wait Until Element Is Visible    ${item_locator.click_add_product_successfully_popup}    5s
    SeleniumLibrary.Click Button    ${item_locator.click_add_product_successfully_popup}
    SeleniumLibrary.Wait Until Element Is Not Visible    ${item_locator.click_add_product_successfully_popup}

Click cart icon
    SeleniumLibrary.Click Element    ${item_locator.click_cart_icon}


