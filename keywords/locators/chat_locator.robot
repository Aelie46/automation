*** Variables ***
${chat_locator.belonged_assistant}    xpath=//div[contains(@class, 'bg-primary') and contains(text(), 'Test Nimble')]
${chat_locator.assistant}    xpath=//div[contains(@class, 'bg-primary')]
${chat_locator.robot_icon}    xpath=//a[@href='/assistant']/button
${chat_locator.assistant_name_field}    xpath=//input[@placeholder='Assistant name...']
${chat_locator.chat_icon}    xpath=//button[.//span[@aria-label="message"]]
${chat_locator.how_can_I_help_you_text}    xpath=//p[text()='Hello, how can I help you today?']
${chat_locator.Test_and_Edge_Case_Generation_text}    xpath=//span[text()='Test and Edge Case Generation']
${chat_locator.Execution_Time_Suggestion_text}    xpath=//span[text()='Execution Time Suggestion']
${chat_locator.Test_Data_Generation_text}    xpath=//span[text()='Test Data Generation']
${chat_locator.upload_file_button}    xpath=//span[contains(text(),'+ Files')]
${chat_locator.file_path}    xpath=//input[@type="file"]
${chat_locator.uploaded_file}    xpath=//*[contains(text(),'single_create.json')]
${chat_locator.confirm_uploaded_file_button}    xpath=//button[.//span[text()='Upload Files']]\