*** Keywords ***
Click Create New Product Button
    SeleniumLibrary.Wait Until Element Is Visible    ${product_locator.create_product}    timeout=10s
    SeleniumLibrary.Click Element    ${product_locator.create_product}
    Sleep    3s

Input product name
    ${random}=    Generate Random String    4    [LETTERS]
    ${PRODUCT_NAME}=   Set Variable    Product-${random}
    Set Suite Variable    ${PRODUCT_NAME}    ${PRODUCT_NAME}
    SeleniumLibrary.Wait Until Element Is Visible    ${product_locator.input_product_name}    timeout=10s
    SeleniumLibrary.Input Text    ${product_locator.input_product_name}    ${PRODUCT_NAME}

Click Save Button
    SeleniumLibrary.Wait Until Element Is Visible    ${product_locator.save_button}    timeout=5s
    SeleniumLibrary.Click Element    ${product_locator.save_button}
    Sleep    3s

Verify if the product is created
    SeleniumLibrary.Wait Until Page Contains Element    xpath=//span[starts-with(@id, 'product-id') and text()='${PRODUCT_NAME}']    10s