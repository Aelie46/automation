*** Variables ***
${product_locator.create_product}    id=btn-createproduct
${product_locator.input_product_name}    id=basic_name
${product_locator.save_button}    xpath=//button[contains(@class, "btn-save")]
${product_locator.product_name_created}    xpath=//span[starts-with(@id, 'product-id') and text()='${PRODUCT_NAME}']
