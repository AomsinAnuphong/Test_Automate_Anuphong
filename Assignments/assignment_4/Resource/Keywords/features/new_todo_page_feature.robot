*** Settings ***
Resource    ../../import.robot


*** Keywords ***
Add new todo
    [Arguments]    ${todo_name}    ${todo_date}    ${todo_time}
    home_page.Tap add new todo
    new_todo_page.Verify landing on new todo page
    new_todo_page.Input todo name    todo_name=${todo_name}
    new_todo_page.Toggle todo remind me
    new_todo_page.Input todo date    date=${todo_date}
    new_todo_page.Input todo time    time=${todo_time}
    new_todo_page.Tap set todo
    home_page.Verify landing on home page
