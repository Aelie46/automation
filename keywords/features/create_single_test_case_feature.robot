*** Keywords ***
Create single test case
    home_page.Click Create New Case
    home_page.Click New Icon
    home_page.Input name
    home_page.Click product dropdown list
    home_page.Select Product    ${product}
    home_page.Select Priority    ${priority}
    home_page.Select Complexity    ${complexity}
    home_page.Select Automation Status    ${automation_status}
    home_page.Select Tags    @{tags_list}
    home_page.Select Test Case Status    ${status}
    home_page.Input test objective
    home_page.Input test steps
    home_page.Input test results
    home_page.Select Status    ${status_type}
    home_page.Select Files    ${file_path}
    home_page.Click Save Button
    home_page.Click outside New test case popup
    home_page.Verify if the test case is created