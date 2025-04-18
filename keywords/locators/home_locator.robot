*** Variables ***
${home_locator.click_user_icon}    css=span.anticon-user.icon-size
${home_locator.input_search_keyword}    xpath=//input[@placeholder='input search text']
${home_locator.click_search}    xpath=//button[contains(@class, 'ant-input-search-button')]
${home_locator.search_item}    xpath=//div[@class='ant-card-meta-title' and text()='Doppee phone']
${home_locator.Check if the amount is corrrect}    xpath=//span[contains(text(), "ชิ้น")]
${home_locator.Check if the description is correct}    xpath=//div[contains(@class, "ant-card-meta-description")]
${home_locator.Check if the discount price is correct}    xpath=//span[contains(text(), "discount")]