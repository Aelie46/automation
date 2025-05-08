*** Keywords ***
Click Create New Project Button
    SeleniumLibrary.Wait Until Element Is Visible    ${project_locator.create_project}    timeout=10s
    SeleniumLibrary.Click Element    ${project_locator.create_project}
    Sleep    3s

Input project name
    ${random}=    Generate Random String    4    [LETTERS]
    ${PROJECT_NAME}=   Set Variable    Project-${random}
    Set Suite Variable    ${PROJECT_NAME}    ${PROJECT_NAME}
    SeleniumLibrary.Wait Until Element Is Visible    ${project_locator.input_project_name}    timeout=10s
    SeleniumLibrary.Input Text    ${project_locator.input_project_name}    ${PROJECT_NAME}

Click Product tab
    Wait Until Element Is Visible    ${project_locator.product_tab}    5s
    Click Element    ${project_locator.product_tab}

Select Product
    [Arguments]    ${PRODUCT01}    ${PRODUCT02}
    Click Element    xpath=//span[contains(@class,"product-name") and text()='${PRODUCT01}']/preceding::input[@type="checkbox"][1]
    Click Element    xpath=//span[contains(@class,"product-name") and text()='${PRODUCT02}']/preceding::input[@type="checkbox"][1]

Click Save Button
    SeleniumLibrary.Wait Until Element Is Visible    ${project_locator.save_button}    timeout=5s
    SeleniumLibrary.Click Element    ${project_locator.save_button}
    Sleep    3s

Verify if the project is created
    SeleniumLibrary.Wait Until Page Contains Element    xpath=//div[starts-with(@id, 'project-id') and contains(@class, 'project-name-text') and text()='${PROJECT_NAME}']    timeout=10s