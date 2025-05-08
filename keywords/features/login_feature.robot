*** Keywords ***
Login
    login_page.Open browser    ${url}    ${browser}
    login_page.Input username    ${username}
    login_page.Input password    ${password}
    login_page.Click signin