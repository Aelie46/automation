*** Settings ***
Resource    ../keywords/import.robot


*** Test Cases ***
TC01 - Login
    login_feature.Login

TC02 - Verify that user can create single test case
    login_feature.Login
    create_single_test_case_feature.Create single test case

TC03 - Verify that user can create product
    login_feature.Login
    home_page.Click Product Menu
    create_product_feature.Create product

TC04 - Verify that user can create project
    login_feature.Login
    home_page.Click Project Menu
    create_project_feature.Create project

TC05 - Verify that user can create tag
    login_feature.Login
    home_page.Click Tag Menu
    create_tag_feature.Create tag

TC06 - Verify that user can create organization
    login_feature.Login
    home_page.Click Organization Menu
    create_organization_feature.Create organization

TC07 - Verify that user can login with existed account on generate test case page
    login_feature.Login
    home_page.Click Generate Test Case Menu
    chat_login_feature.Login

TC08 - Verify that AI assistants appear follows the logged in account
    login_feature.Login
    home_page.Click Generate Test Case Menu
    chat_login_feature.Login
    chat_page.Check if there is an assistant which belongs to the account

TC09 - Verify that no AI assistant that doesn't belong to the account appear
    login_feature.Login
    home_page.Click Generate Test Case Menu
    chat_login_feature.Login
    chat_page.Check that no AI assistant that doesn't belong to the account appear

TC010 - Verify that AI assistant name is correct
    login_feature.Login
    home_page.Click Generate Test Case Menu
    chat_login_feature.Login
    chat_page.Check that AI assistant name is correct

TC011 - Verify that AI assistant name field is non-editable
    login_feature.Login
    home_page.Click Generate Test Case Menu
    chat_login_feature.Login
    chat_page.Click robot icon
    chat_page.Check that assistant name field is non-edible

TC012 - Verify that chat icon is clikcable and chatbot response correctly
    login_feature.Login
    home_page.Click Generate Test Case Menu
    chat_login_feature.Login
    chat_page.Select an assistant
    chat_page.Click chat icon
    chat_page.Check if chat response correctly

TC013 - Verify that chat response correctly when click "Test and Edge Case Generation"
    login_feature.Login
    home_page.Click Generate Test Case Menu
    chat_login_feature.Login
    chat_page.Select an assistant
    chat_page.Click chat icon
    chat_page.Click "Test and Edge Case Generation"
    chat_page.Check if the message appear correctly after clicking "Test and Edge Case Generation"

TC014 - Verify that upload button is clickable
    login_feature.Login
    home_page.Click Generate Test Case Menu
    chat_login_feature.Login
    chat_page.Click robot icon
    chat_page.Select an assistant
    chat_upload_file_feature.Upload file
    chat_page.Check if the uploaded file is appear

TC015 - Verify that run status can be updated as passed
    login_feature.Login
    home_page.Click Run Management Menu
    run_page.Select Run Name
    run_page.Click Status Dropdown
    run_page.Select Result Status
    run_page.Click Close button
    run_page.Select Run Name


    
