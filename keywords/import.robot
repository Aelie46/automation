*** Settings ***
Library    SeleniumLibrary
Library    String

Variables    ../resources/testdata.yaml

Resource    ./pages/login_page.robot
Resource    ./pages/home_page.robot
Resource    ./pages/product_page.robot
Resource    ./pages/project_page.robot
Resource    ./pages/tag_page.robot
Resource    ./pages/organization_page.robot
Resource    ./pages/chat_login_page.robot
Resource    ./pages/chat_page.robot
Resource    ./pages/run_page.robot

Resource    ./features/create_single_test_case_feature.robot
Resource    ./features/create_product_feature.robot
Resource    ./features/login_feature.robot
Resource    ./features/create_project_feature.robot
Resource    ./features/create_tag_feature.robot
Resource    ./features/create_organization_feature.robot
Resource    ./features/chat_login_feature.robot
Resource    ./features/chat_upload_file_feature.robot

Resource    ./locators./login_locator.robot
Resource    ./locators/home_locator.robot
Resource    ./locators/product_locator.robot
Resource    ./locators/project_locator.robot
Resource    ./locators/tag_locator.robot
Resource    ./locators/organization_locator.robot
Resource    ./locators/chat_login_locator.robot
Resource    ./locators/chat_locator.robot
Resource    ./locators/run_locator.robot