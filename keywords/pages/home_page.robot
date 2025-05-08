*** Keywords ***
Click Create New Case
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.create_case}
    SeleniumLibrary.Click Element    ${home_locator.create_case}

Click New Icon
    SeleniumLibrary.Click Element    ${home_locator.new_icon}

Input name
    ${random}=    Generate Random String    4    [LETTERS]
    ${TC_NAME}=   Set Variable    TC01-${random}
    Set Suite Variable    ${TC_NAME}    ${TC_NAME}
    SeleniumLibrary.Input Text    ${home_locator.input_name}    ${TC_NAME}

Click product dropdown list
    SeleniumLibrary.Click Element    ${home_locator.product_dropdown_list}

Select Product
    [Arguments]    ${PRODUCT_NAME}
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.select_product}    5s
    SeleniumLibrary.Click Element    ${home_locator.select_product}

Select Priority
    [Arguments]    ${PRIORITY_NAME}
    Sleep    1s
    SeleniumLibrary.Click Element    ${home_locator.priority_dropdown_list}
    Sleep    1s
    SeleniumLibrary.Execute JavaScript    const opt = [...document.querySelectorAll("div.ant-select-item-option-content")].find(el => el.innerText.trim() === '${PRIORITY_NAME}' && el.offsetParent !== null); if (opt) opt.click();

Select Complexity
    [Arguments]    ${COMPLEXITY_NAME}
    Sleep    1s
    SeleniumLibrary.Click Element    ${home_locator.complexity_dropdown_list}
    Sleep    1s
    SeleniumLibrary.Execute JavaScript    const opt = [...document.querySelectorAll("div.ant-select-item-option-content")].find(el => el.innerText.trim() === '${COMPLEXITY_NAME}' && el.offsetParent !== null); if (opt) opt.click();

Select Automation Status
    [Arguments]    ${AUTOMATION_STATUS}
    Sleep    1s
    SeleniumLibrary.Click Element    ${home_locator.automation_status_dropdown_list}
    Sleep    1s
    SeleniumLibrary.Execute JavaScript    const opt = [...document.querySelectorAll("div.ant-select-item-option-content")].find(el => el.innerText.trim() === '${AUTOMATION_STATUS}' && el.offsetParent !== null); if (opt) opt.click();

Select Tags
    [Arguments]    @{TAGS}
    Sleep    1s
    SeleniumLibrary.Click Element    ${home_locator.tag_checkbox}
    Sleep    1s
    FOR    ${tag}    IN    @{TAGS}
        ${script}=    Set Variable    const el = [...document.querySelectorAll("label.ant-checkbox-wrapper")].find(el => el.innerText.trim() === '${tag}'); if (el) el.click();
        SeleniumLibrary.Execute JavaScript    ${script}
        Sleep    0.3s
    END

Select Test Case Status
    [Arguments]    ${STATUS_NAME}
    Sleep    1s
    SeleniumLibrary.Click Element    ${home_locator.test_case_status_dropdown_list}
    Sleep    1s
    SeleniumLibrary.Execute JavaScript    const opt = [...document.querySelectorAll("div.ant-select-item-option-content")].find(el => el.innerText.trim() === '${STATUS_NAME}' && el.offsetParent !== null); if (opt) opt.click();

Input test objective
    SeleniumLibrary.Input Text    ${home_locator.input_objective}    This is test objective
    Sleep    1s

Input test steps
    SeleniumLibrary.Input Text    ${home_locator.input_test_step}    This is test step
    Sleep    1s

Input test results
    SeleniumLibrary.Input Text    ${home_locator.input_expected_result}    This is test result
    Sleep    1s

Select Status
    [Arguments]    ${STATUS}
    Sleep    1s
    SeleniumLibrary.Click Element    ${home_locator.status_dropdown_list}
    Sleep    1s
    SeleniumLibrary.Execute JavaScript    const opt = [...document.querySelectorAll("div.ant-select-item-option-content")].find(el => el.innerText.trim().toLowerCase() === '${STATUS}'.toLowerCase() && el.offsetParent !== null);    if (opt) opt.click();
    Sleep    1s

Select Files
    [Arguments]    ${file_path}
    Sleep    1s
    SeleniumLibrary.Choose File    ${home_locator.upload_file}    ${file_path}
    Sleep    1s

Click Save Button
    SeleniumLibrary.Click Button    ${home_locator.save_button}
    Sleep    1s

Click outside New test case popup
    Sleep    1s
    SeleniumLibrary.Execute JavaScript    document.querySelector("div.ant-modal-mask")?.click()
    Sleep    7s

Verify if the test case is created
    SeleniumLibrary.Wait Until Page Contains Element    xpath=//div[contains(@class, 'testcase-name-text') and text()='${TC_NAME}']    10s
    SeleniumLibrary.Page Should Contain Element    ${home_locator.test_case_name_created}    ${TC_NAME}

Click Product Menu
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.product_page_menu}    timeout=10s
    SeleniumLibrary.Click Element    ${home_locator.product_page_menu}

Click Project Menu
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.project_page_menu}    timeout=10s
    SeleniumLibrary.Click Element    ${home_locator.project_page_menu}

Click Tag Menu
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.tag_page_menu}    timeout=10s
    SeleniumLibrary.Click Element    ${home_locator.tag_page_menu}

Click Organization Menu
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.organization_page_menu}    timeout=10s
    SeleniumLibrary.Click Element    ${home_locator.organization_page_menu}

Click Generate Test Case Menu
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.chat_page_menu}    timeout=10s
    SeleniumLibrary.Click Element    ${home_locator.chat_page_menu}

Click Run Management Menu
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.run_page_menu}    timeout=10s
    SeleniumLibrary.Click Element    ${home_locator.run_page_menu}