*** Keywords ***
Login
    chat_login_page.Input username    ${chat.username}
    chat_login_page.Input password    ${chat.password}
    chat_login_page.Click Login