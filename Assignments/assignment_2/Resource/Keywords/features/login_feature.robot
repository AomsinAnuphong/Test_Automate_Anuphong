*** Settings ***
Resource        ../../import.robot

*** Keywords ***
Input username password and click login
    [Arguments]    ${username}    ${password}
    login_page.Verify if page login page load correctly
    login_page.Input username    username=${username}
    login_page.Input password    password=${password}
    login_page.Click login button