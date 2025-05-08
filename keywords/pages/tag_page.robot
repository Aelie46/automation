*** Keywords ***
Click Create New Tag Button
    SeleniumLibrary.Wait Until Element Is Visible    ${tag_locator.create_tag}    timeout=10s
    SeleniumLibrary.Click Element    ${tag_locator.create_tag}
    Sleep    3s

Input tag name
    ${random}=    Generate Random String    4    [LETTERS]
    ${TAG_NAME}=   Set Variable    tag-${random}
    Set Suite Variable    ${TAG_NAME}    ${TAG_NAME}
    SeleniumLibrary.Wait Until Element Is Visible    ${tag_locator.input_tag_name}    timeout=10s
    SeleniumLibrary.Input Text    ${tag_locator.input_tag_name}    ${TAG_NAME}

Click Save Button
    SeleniumLibrary.Wait Until Element Is Visible    ${tag_locator.save_button}    timeout=5s
    SeleniumLibrary.Click Element    ${tag_locator.save_button}
    Sleep    3s

Verify if the tag is created
    SeleniumLibrary.Wait Until Page Contains Element    xpath=//div[starts-with(@id, 'tag-id') and contains(@class, 'tag-name-text') and text()='${TAG_NAME}']    10s