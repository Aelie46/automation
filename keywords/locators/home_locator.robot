*** Variables ***
${home_locator.create_case}    id=btn-createcase
${home_locator.new_icon}    xpath=//div[@class='new']/a
${home_locator.input_name}    id=basic_name
${home_locator.product_dropdown_list}    xpath=(//div[@class='ant-form-item-control-input'])[2]//span[contains(@class, 'ant-select-selection-item')]
${home_locator.select_product}    xpath=//div[@class='ant-select-item-option-content' and text()='${PRODUCT_NAME}']
${home_locator.priority_dropdown_list}    xpath=//label[@for='basic_priority']/ancestor::div[contains(@class, 'ant-form-item')]//div[contains(@class, 'ant-select-selector')]
${home_locator.complexity_dropdown_list}    xpath=//label[@for='basic_complexity']/ancestor::div[contains(@class, 'ant-form-item')]//div[contains(@class, 'ant-select-selector')]
${home_locator.automation_status_dropdown_list}    xpath=//label[@for='basic_automation_status']/ancestor::div[contains(@class, 'ant-form-item')]//div[contains(@class, 'ant-select-selector')]
${home_locator.tag_checkbox}    xpath=//label[@for='basic_tags']/parent::div/following-sibling::div//span[contains(@class, 'text-select')]
${home_locator.test_case_status_dropdown_list}    xpath=//label[@for='basic_test_case_status']/ancestor::div[contains(@class, 'ant-form-item')]//div[contains(@class, 'ant-select-selector')]
${home_locator.input_objective}    id=basic_test_objective
${home_locator.input_test_step}    id=basic_teststeps
${home_locator.input_expected_result}    id=basic_expected_result
${home_locator.status_dropdown_list}    xpath=//label[text()='Status']/parent::div/following-sibling::div//div[contains(@class, 'ant-select-selector')]
${home_locator.upload_file}    id=basic_upload_testcase
${home_locator.save_button}    xpath=//button[contains(@class, 'btn-save')]//span[text()='Save']/..
${home_locator.test_case_name_created}    xpath=//div[contains(@class, 'testcase-name-text')]
${home_locator.product_page_menu}    id=mnu-product
${home_locator.project_page_menu}    id=mnu-project
${home_locator.tag_page_menu}    id=mnu-tag
${home_locator.organization_page_menu}    id=mnu-org
${home_locator.chat_page_menu}    id=mnu-chat
${home_locator.run_page_menu}    id=mnu-run
