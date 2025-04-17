*** Settings ***
Library    SeleniumLibrary
Library    String
Library    OperatingSystem
Library    Collections
Library    re

Variables    ../resources/testdata/testdata.yaml

Resource    ./pages/common_page.robot
Resource    ./pages/register_page.robot
Resource    ./pages/account_page.robot
Resource    ./pages/home_page.robot
Resource    ./pages/item_page.robot
Resource    ./pages/login_page.robot
Resource    ./pages/delivery_page.robot
Resource    ./pages/selectPayment_page.robot
Resource    ./pages/paymentDetail_page.robot
Resource    ./pages/paymentSuccess_page.robot

Resource    ./features/register_feature.robot
Resource    ./features/logout_feature.robot
Resource    ./features/login_feature.robot
Resource    ./features/search_feature.robot
Resource    ./features/addToCart_feature.robot
Resource    ./features/delivery_feature.robot
Resource    ./features/paymentDetail_feature.robot
Resource    ./features/checkOrder_feature.robot

Resource    ./locators/home_locator.robot
Resource    ./locators/account_locator.robot
Resource    ./locators/register_locator.robot
Resource    ./locators/login_location.robot
Resource    ./locators/item_locator.robot
Resource    ./locators/delivery_locator.robot
Resource    ./locators/selectPayment_locator.robot
Resource    ./locators/paymentDetail_locator.robot
Resource    ./locators/paymentSuccess_locator.robot