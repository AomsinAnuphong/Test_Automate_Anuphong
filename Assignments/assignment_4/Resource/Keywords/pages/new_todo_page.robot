*** Settings ***
Resource    ../../import.robot


*** Keywords ***
Verify landing on new todo page
    AppiumLibrary.Wait Until Element Is Visible
    ...    locator=${new_todo_page_locator['txt_todo_page_title']}
    ...    timeout=${10s_TIMEOUT}

Input todo name
    [Arguments]    ${todo_name}
    common_mobile.Input text    locator=${new_todo_page_locator['txt_input_todo']}    text=${todo_name}

Tap set todo
    AppiumLibrary.Wait Until Element Is Visible
    ...    locator=${new_todo_page_locator['set_todo_btn']}
    ...    timeout=${10s_TIMEOUT}
    AppiumLibrary.Click Element    locator=${new_todo_page_locator['set_todo_btn']}

Toggle todo remind me
    AppiumLibrary.Wait Until Element Is Visible
    ...    locator=${new_todo_page_locator['todo_remind_me_stw']}
    ...    timeout=${10s_TIMEOUT}
    AppiumLibrary.Click Element    locator=${new_todo_page_locator['todo_remind_me_stw']}

Input todo date
    [Arguments]    ${date}
    common_mobile.Input text    locator=${new_todo_page_locator['txt_input_date']}    text=${date}

Input todo time
    [Arguments]    ${time}
    common_mobile.Input text    locator=${new_todo_page_locator['txt_input_time']}    text=${time}

Verify enter time in past warning
    AppiumLibrary.Wait Until Element Is Visible
    ...    locator=${new_todo_page_locator['txt_waring_time_in_past']}
    ...    timeout=${10s_TIMEOUT}

Tap cancel button
    AppiumLibrary.Wait Until Element Is Visible
    ...    locator=${new_todo_page_locator['cancel_btn']}
    ...    timeout=${10s_TIMEOUT}
    AppiumLibrary.Click Element    locator=${new_todo_page_locator['cancel_btn']}
