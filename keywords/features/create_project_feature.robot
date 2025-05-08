*** Keywords ***
Create project
    project_page.Click Create New Project Button
    project_page.Input project name
    project_page.Click Product tab
    project_page.Select Product    ${project.product01}    ${project.product02}    
    project_page.Click Save Button
    project_page.Verify if the project is created