*** Variables ***
&{web_locator}
...                 txt_login_page_header=xpath=//h2[text()="${txt_login_page_header}"]
...                 input_username=id=username
...                 input_password=id=password
...                 btn_login=xpath=//i[contains(text(), ${txt_login})]/parent::button
...                 flash_popup=id=flash-messages
...                 btn_logout=xpath=//i[contains(text(), ${txt_logout})]/parent::a
