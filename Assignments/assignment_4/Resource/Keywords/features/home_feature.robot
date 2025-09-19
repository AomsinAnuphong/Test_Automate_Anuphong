*** Settings ***
Resource    ../../import.robot


*** Keywords ***
Verify todo name date and time
    [Arguments]    ${todo_name}    ${todo_date}    ${todo_time}
    ${new_locator}=    String.Replace String
    ...    string=${home_page_locator['full_todo_name_date_time']}
    ...    search_for=@#string@#
    ...    replace_with=${todo_name}
    ${new_locator}=    String.Replace String
    ...    string=${new_locator}
    ...    search_for=@#date@#
    ...    replace_with=${todo_date}
    ${new_locator}=    String.Replace String
    ...    string=${new_locator}
    ...    search_for=@#time@#
    ...    replace_with=${todo_time}
    AppiumLibrary.Wait Until Element Is Visible    locator=${new_locator}    timeout=${10s_TIMEOUT}

Delete todo by name and verify delete success
    [Arguments]    ${todo_name}
    home_page.Delete todo by name    todo_name=${todo_name}
    home_page.Verify deleted todo sucess
