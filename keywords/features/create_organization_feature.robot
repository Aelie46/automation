*** Keywords ***
Create organization
    organization_page.Click Create New Organization Button
    organization_page.Input organization name
    organization_page.Click Save Button
    organization_page.Verify if the organization is created