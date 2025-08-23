*** Settings ***
Resource   ./Resource/import.robot

*** Test Cases ***
Login success
    common.Open web url      url=${URL}
    login_feature.Input username password and click login    username=${VALID_USER}    password=${VALID_PASS}
    login_page.Verify flash popup text    verify_text=${txt_login_into_secure_area}
    login_page.Click logout button     
    login_page.Verify flash popup text    verify_text=${txt_logout_of_secure_area}
    common.Close all browser

Login failed - Password incorrect
    common.Open web url      url=${URL}
    login_feature.Input username password and click login      username=${VALID_USER}    password=${INVALID_PASS}
    login_page.Verify flash popup text    verify_text=${txt_pass_invalid}
    common.Close all browser

Login failed - Username not found
    common.Open web url      url=${URL}
    login_feature.Input username password and click login      username=${INVALID_USER}    password=${INVALID_PASS}
    login_page.Verify flash popup text    verify_text=${txt_user_invalid}
    common.Close all browser