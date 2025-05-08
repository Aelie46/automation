*** Keywords ***
Create product
    product_page.Click Create New Product Button
    product_page.Input product name
    product_page.Click Save Button
    product_page.Verify if the product is created