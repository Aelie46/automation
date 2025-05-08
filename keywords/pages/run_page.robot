*** Keywords ***
Select Run Name
    Wait Until Element Is Visible    ${run_locator.run_name}    timeout=10s
    Click Element                   ${run_locator.run_name}

Click Status Dropdown
    Wait Until Element Is Visible    ${run_locator.status_dropdown}    timeout=10s
    Click Element                   ${run_locator.status_dropdown}

Select Result Status
    Wait Until Element Is Visible    ${run_locator.run_result}    timeout=10s
    Click Element                   ${run_locator.run_result}

Click Close button
    Wait Until Element Is Visible    ${run_locator.close_button}    timeout=10s
    Click Element                    ${run_locator.close_button}

Verify That Run Status Is Correct
    Wait Until Element Is Visible    ${run_locator.updated_result}    timeout=10s
    ${result}=    Get Text    ${run_locator.updated_result}
    Log To Console    >>> ${result} <<<
    Should Be Equal As Strings    ${result.strip()}    ${run_status}