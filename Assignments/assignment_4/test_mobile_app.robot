*** Settings ***
Resource    ./Resource/import.robot


*** Test Cases ***
TC-001
    [Documentation]    Open "Minimal Todo" app first time check no todo list
    common_mobile.Open mobile application
    home_page.Verify landing on home page
    home_page.Verify empty todo list
    common_mobile.Close all application

TC-002
    [Documentation]    Add new todo list
    common_mobile.Open mobile application
    home_page.Verify landing on home page
    home_page.Verify empty todo list
    home_page.Tap add new todo
    new_todo_page.Verify landing on new todo page
    new_todo_page.Input todo name    todo_name=${TODO_NAME}
    new_todo_page.Toggle todo remind me
    new_todo_page.Input todo date    date=${TODO_DATE}
    new_todo_page.Input todo time    time=${TODO_TIME}
    new_todo_page.Tap set todo
    home_page.Verify landing on home page
    home_feature.Verify todo name date and time
    ...    todo_name=${TODO_NAME}
    ...    todo_date=${TODO_DATE_VERIFY}
    ...    todo_time=${TODO_TIME}
    common_mobile.Close all application

TC-003
    [Documentation]    Delete all todo list
    common_mobile.Open mobile application
    new_todo_page_feature.Add new todo    todo_name=${TODO_NAME}    todo_date=${TODO_DATE}    todo_time=${TODO_TIME}
    home_page.Delete todo by name    todo_name=${TODO_NAME}
    home_page.Verify deleted todo sucess
    home_page.Verify empty todo list
    common_mobile.Close all application

TC-004
    [Documentation]    Add new todo list with date time in the past
    ${past_time}=    common_mobile.Get Time Minus 30 Minutes In AMPM Format
    common_mobile.Open mobile application
    home_page.Verify landing on home page
    home_page.Tap add new todo
    new_todo_page.Verify landing on new todo page
    new_todo_page.Input todo name    todo_name=${TODO_NAME}
    new_todo_page.Toggle todo remind me
    new_todo_page.Input todo time    time=${past_time}
    new_todo_page.Verify enter time in past warning
    common_mobile.Close all application

TC-006
    [Documentation]    Add new todo without date time
    common_mobile.Open mobile application
    home_page.Verify landing on home page
    home_page.Tap add new todo
    new_todo_page.Verify landing on new todo page
    new_todo_page.Input todo name    todo_name=${TODO_NAME}
    new_todo_page.Tap set todo
    home_page.Verify landing on home page
    home_page.Verify todo name    todo_name=${TODO_NAME}
    common_mobile.Close all application

TC-007
    [Documentation]    Cancel add new todo list
    common_mobile.Open mobile application
    home_page.Verify landing on home page
    home_page.Tap add new todo
    new_todo_page.Verify landing on new todo page
    new_todo_page.Input todo name    todo_name=${TODO_NAME}
    new_todo_page.Tap cancel button
    home_page.Verify landing on home page
    home_page.Verify empty todo list
    common_mobile.Close all application
