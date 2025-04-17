*** Settings ***
Library     DatabaseLibrary
Library     Collections


*** Variables ***
${connection_string}    database='training_platform_db', user='doppio-training-user', password='Doppio123*', host='125.26.15.143', port=10004
${db_type}              psycopg2
${product_name}         Bicycle wheel


*** Test Cases ***
TC01
    Connect to database
    Check If Product Exists In Database    ${product_name}
    Get Product ID From Name    ${product_name}
    Verify Product Columns
    Delete Product From Database
    Verify Product Deleted

TC02
    Connect to database
    Check If Product Exists In Database    ${product_name}
    Get Product ID From Name    ${product_name}
    Buy Product Using ID
    Verify Quantity Decreased By 1
    Delete Product From Database
    Verify Product Deleted


*** Keywords ***
Connect to database
    DatabaseLibrary.Connect To Database Using Custom Params    ${db_type}    ${connection_string}

Check If Product Exists In Database
    [Arguments]    ${product_name}
    ${query}=    Set Variable    SELECT COUNT(*) FROM product WHERE name='${product_name}'
    ${result}=    DatabaseLibrary.Query    ${query}
    ${product_count}=    Get From List    ${result}    0
    ${product_count}=    Get From List    ${product_count}    0
    IF    ${product_count} == 0    Add Product To Database

Add Product To Database
    ${add_query}=    Set Variable
    ...    INSERT INTO product (name, qty, description, price, rec_status) VALUES ('${product_name}', 10, 'No description', 0.00, 'a')
    DatabaseLibrary.Execute Sql String    ${add_query}

Get Product ID From Name
    [Arguments]    ${product_name}
    ${query}=    Set Variable    SELECT id FROM product WHERE name='${product_name}'
    ${result}=    DatabaseLibrary.Query    ${query}
    ${product_id}=    Get From List    ${result}    0
    ${product_id}=    Get From List    ${product_id}    0
    Log    Product ID is ${product_id}
    Set Suite Variable    ${product_id}

Verify Product Columns
    ${query}=    Set Variable    SELECT * FROM product WHERE id=${product_id}
    ${result}=    DatabaseLibrary.Query    ${query}
    Should Not Be Empty    ${result}
    Log    Product Data: ${result}

Buy Product Using ID
    # ตรวจสอบ qty ก่อน
    ${query}=    Set Variable    SELECT qty FROM product WHERE id=${product_id}
    ${result}=    DatabaseLibrary.Query    ${query}
    ${current_qty}=    Get From List    ${result}    0
    ${current_qty}=    Get From List    ${current_qty}    0
    Set Suite Variable    ${original_qty}    ${current_qty}
    IF    ${current_qty} > 0
        Update Product Quantity
    ELSE
        Fail    Quantity is 0, cannot buy product
    END

Update Product Quantity
    ${new_qty}=    Evaluate    ${original_qty} - 1
    ${update_query}=    Set Variable    UPDATE product SET qty=${new_qty} WHERE id=${product_id}
    DatabaseLibrary.Execute Sql String    ${update_query}

Verify Quantity Decreased By 1
    ${query}=    Set Variable    SELECT qty FROM product WHERE id=${product_id}
    ${result}=    DatabaseLibrary.Query    ${query}
    ${current_qty}=    Get From List    ${result}    0
    ${current_qty}=    Get From List    ${current_qty}    0
    ${expected_qty}=    Evaluate    ${original_qty} - 1
    Should Be Equal As Numbers    ${current_qty}    ${expected_qty}

Delete Product From Database
    ${query}=    Set Variable    DELETE FROM product WHERE id=${product_id}
    DatabaseLibrary.Execute Sql String    ${query}

Verify Product Deleted
    ${query}=    Set Variable    SELECT COUNT(*) FROM product WHERE id=${product_id}
    ${result}=    DatabaseLibrary.Query    ${query}
    ${product_count}=    Get From List    ${result}    0
    ${product_count}=    Get From List    ${product_count}    0
    Should Be Equal As Numbers    ${product_count}    0
