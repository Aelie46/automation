*** Variables ***
${run_locator.run_name}    xpath=//div[@class='run-name-text' and text()='pandaperapat1']
${run_locator.status_dropdown}    xpath=//span[contains(@class, 'ant-select-selection-item') and text()='PENDING']
${run_locator.run_result}    xpath=//div[contains(@class, 'ant-select-item-option-content') and text()='PASSED']
${run_locator.close_button}    xpath=//button[contains(@class, 'btn-cancel')]//span[normalize-space(text())='Close']
${run_locator.updated_result}    xpath=//label[normalize-space(text())='EXECUTOR']/following-sibling::div/following-sibling::div//span[contains(@class,'ant-select-selection-item')]