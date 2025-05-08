*** Keywords ***
Check if there is an assistant which belongs to the account
    SeleniumLibrary.Wait Until Element Is Visible    ${chat_locator.belonged_assistant}    timeout=10s

Check that no AI assistant that doesn't belong to the account appear
    SeleniumLibrary.Wait Until Element Is Visible    ${chat_locator.assistant}    timeout=10s
    ${assistants}=    SeleniumLibrary.Get WebElements    ${chat_locator.assistant}
    Length Should Be    ${assistants}    1

    ${text}=    SeleniumLibrary.Get Text    ${chat_locator.assistant}
    Should Be Equal As Strings    ${text}    ${assistant_name}

Check that AI assistant name is correct
    SeleniumLibrary.Wait Until Element Is Visible    ${chat_locator.assistant}    timeout=10s
    ${name}=    SeleniumLibrary.Get Text    ${chat_locator.assistant}
    Should Be Equal As Strings    ${name}    ${assistant_name}

Click robot icon
    SeleniumLibrary.Wait Until Element Is Visible    ${chat_locator.robot_icon}    timeout=10s
    SeleniumLibrary.Click Element    ${chat_locator.robot_icon}

Check that assistant name field is non-edible
    SeleniumLibrary.Wait Until Element Is Visible    ${chat_locator.assistant_name_field}    timeout=10s
    SeleniumLibrary.Element Should Be Disabled    ${chat_locator.assistant_name_field}

Click chat icon
    SeleniumLibrary.Wait Until Element Is Visible    ${chat_locator.chat_icon}    timeout=10s
    SeleniumLibrary.Click Element    ${chat_locator.chat_icon}

Select an assistant
    SeleniumLibrary.Wait Until Element Is Visible    ${chat_locator.belonged_assistant}    timeout=10s
    SeleniumLibrary.Click Element    ${chat_locator.belonged_assistant}

Check if chat response correctly
    SeleniumLibrary.Wait Until Element Is Visible    ${chat_locator.how_can_I_help_you_text}    timeout=10s
    SeleniumLibrary.Page Should Contain Element    ${chat_locator.how_can_I_help_you_text}
    SeleniumLibrary.Page Should Contain Element    ${chat_locator.Test_and_Edge_Case_Generation_text}
    SeleniumLibrary.Page Should Contain Element    ${chat_locator.Execution_Time_Suggestion_text}
    SeleniumLibrary.Page Should Contain Element    ${chat_locator.Test_Data_Generation_text}

Click "Test and Edge Case Generation"
    SeleniumLibrary.Wait Until Element Is Visible    ${chat_locator.Test_and_Edge_Case_Generation_text}    timeout=10s
    SeleniumLibrary.Click Element    ${chat_locator.Test_and_Edge_Case_Generation_text}

Check if the message appear correctly after clicking "Test and Edge Case Generation"
    SeleniumLibrary.Wait Until Page Contains    ${Test and Edge Case Generation_response message}    timeout=15s

Click Upload File Button
    Wait Until Element Is Visible    ${chat_locator.upload_file_button}    timeout=10s
    Click Element    ${chat_locator.upload_file_button}

Upload File
    Choose File    ${chat_locator.file_path}    ${file_path}

Click Confirm Upload Files Button
    Wait Until Element Is Visible    ${chat_locator.uploaded_file}    timeout=15s
    Click Button                     ${chat_locator.confirm_uploaded_file_button}

Check if the uploaded file is appear
    Wait Until Element Is Visible    ${chat_locator.uploaded_file}    timeout=10s

