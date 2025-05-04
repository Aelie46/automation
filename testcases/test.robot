*** Settings ***
Resource    ../keywords/import.robot

*** Test Cases ***
TC01
    ${RANDOM}=    Generate Random String    6
    ${EMAIL}=     Set Variable    test${RANDOM}@gmail.com
    
    common_page.Open doppio-training website
    register_feature.Register with username and password    ${EMAIL}
    logout_feature.logout
    login_feature.login    ${EMAIL}
    search_feature.Search    ${home.search_keyword}
    addToCart_feature.addToCart
    delivery_feature.Input delivery information    ${EMAIL}
    selectPayment_page.click next
    paymentDetail_feature.Input paymentDetail information
    paymentSuccess_page.Click continue shopping
    checkOrder_feature.checkOrder

TC02
    ${RANDOM}=    Generate Random String    6
    ${EMAIL}=     Set Variable    test${RANDOM}@gmail.com
    
    common_page.Open doppio-training website
    register_feature.Register with username and password    ${EMAIL}
    logout_feature.logout
    login_feature.login    ${EMAIL}
    search_feature.Search    ${productInfo.search_keyword}
    checkProductInfo_feature.checkProductInfo