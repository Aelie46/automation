*** Settings ***
Library    SeleniumLibrary

Variables    ../../resources/testdata/testdata.yaml

Resource    ./common.robot
Resource    ./register.robot
Resource    ./account.robot
Resource    ./home.robot
Resource    ./item.robot
Resource    ./login.robot
Resource    ./delivery.robot
Resource    ./selectPayment.robot
Resource    ./paymentDetail.robot
Resource    ./paymentSuccess.robot

Resource    ../features/register_feature.robot
Resource    ../features/logout_feature.robot
Resource    ../features/login_feature.robot
Resource    ../features/search_feature.robot
Resource    ../features/addToCart_feature.robot
Resource    ../features/delivery_feature.robot
Resource    ../features/paymentDetail_feature.robot
Resource    ../features/checkOrder_feature.robot

Resource    ../locators/home_locator.robot
Resource    ../locators/account_locator.robot
Resource    ../locators/register_locator.robot
Resource    ../locators/login_location.robot
Resource    ../locators/item_locator.robot
Resource    ../locators/delivery_locator.robot
Resource    ../locators/selectPayment_locator.robot
Resource    ../locators/paymentDetail_locator.robot
Resource    ../locators/paymentSuccess_locator.robot