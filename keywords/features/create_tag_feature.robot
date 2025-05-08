*** Keywords ***
Create tag
    tag_page.Click Create New Tag Button
    tag_page.Input tag name
    tag_page.Click Save Button
    tag_page.Verify if the tag is created