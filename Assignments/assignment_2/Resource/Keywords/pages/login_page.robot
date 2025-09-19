*** Settings ***
Resource    ../../import.robot


*** Keywords ***
Verify if page login page load correctly
    SeleniumLibrary.Wait Until Element Is Visible
    ...    locator=${web_locator['txt_login_page_header']}
    ...    timeout=${60s_TIMEOUT}

Input username
    [Arguments]    ${username}
    common.Input text    locator=${web_locator['input_username']}    input_text=${username}

Input password
    [Arguments]    ${password}
    common.Input text    locator=${web_locator['input_password']}    input_text=${password}

Click login button
    SeleniumLibrary.Wait Until Element Is Visible    locator=${web_locator['btn_login']}    timeout=${5s_TIMEOUT}
    SeleniumLibrary.Click Element    ${web_locator['btn_login']}

Click logout button
    SeleniumLibrary.Wait Until Element Is Visible    locator=${web_locator['btn_logout']}    timeout=${5s_TIMEOUT}
    SeleniumLibrary.Click Element    ${web_locator['btn_logout']}

Verify flash popup text
    [Arguments]    ${verify_text}
    common.Verify text    locator=${web_locator['flash_popup']}    text_verify=${verify_text}
