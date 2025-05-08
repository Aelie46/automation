*** Keywords ***
Click Create New Organization Button
    SeleniumLibrary.Wait Until Element Is Visible    ${organization_locator.create_organization}    timeout=10s
    SeleniumLibrary.Click Element    ${organization_locator.create_organization}
    Sleep    3s

Input organization name
    ${random}=    Generate Random String    4    [LETTERS]
    ${ORGANIZATION_NAME}=   Set Variable    Organization-${random}
    Set Suite Variable    ${ORGANIZATION_NAME}    ${ORGANIZATION_NAME}
    SeleniumLibrary.Wait Until Element Is Visible    ${organization_locator.input_organization_name}    timeout=10s
    SeleniumLibrary.Input Text    ${organization_locator.input_organization_name}    ${ORGANIZATION_NAME}

Click Save Button
    SeleniumLibrary.Wait Until Element Is Visible    ${organization_locator.save_button}    timeout=5s
    SeleniumLibrary.Click Element    ${organization_locator.save_button}
    Sleep    3s

Verify if the organization is created
    SeleniumLibrary.Wait Until Page Contains Element    xpath=//div[starts-with(@id, 'org-id') and contains(@class, 'overflow-name') and text()='${ORGANIZATION_NAME}']    10s