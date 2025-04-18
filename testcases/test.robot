*** Settings ***
Resource    ../keywords/import.robot

*** Test Cases ***
TC01
    ${RANDOM}=    Generate Random String    6
    ${EMAIL}=     Set Variable    test${RANDOM}@gmail.com
    
    common_page.Open doppio-training website
    register_feature.Register    ${EMAIL}
    logout_feature.logout
    login_feature.login    ${EMAIL}
    search_feature.Search    phone
    addToCart_feature.addToCart
    delivery_feature.delivery    ${EMAIL}
    selectPayment_page.click next
    paymentDetail_feature.paymentDetail
    paymentSuccess_page.Click continue shopping
    checkOrder_feature.checkOrder

TC02
    ${RANDOM}=    Generate Random String    6
    ${EMAIL}=     Set Variable    test${RANDOM}@gmail.com
    
    common_page.Open doppio-training website
    register_feature.Register    ${EMAIL}
    logout_feature.logout
    login_feature.login    ${EMAIL}
    search_feature.Search    coppee
    checkProductInfo_feature.checkProductInfo