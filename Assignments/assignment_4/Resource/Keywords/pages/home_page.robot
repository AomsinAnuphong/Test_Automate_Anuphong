*** Settings ***
Resource        ../../import.robot

*** Keywords ***
Verify empty todo list
    AppiumLibrary.Wait Until Element Is Visible       locator=${home_page_locator['txt_empty_todo_msg']}    timeout=${10s_TIMEOUT}

Tap add new todo
    AppiumLibrary.Tap    element=${home_page_locator['add_todo_btn']}

Verify landing on home page
    AppiumLibrary.Wait Until Element Is Visible        locator=${home_page_locator['txt_minimal_title']}    timeout=${10s_TIMEOUT}

Verify todo name
    [Arguments]    ${todo_name}
    ${new_locator}=     String.Replace String    string=${home_page_locator['todo_list_with_text']}    search_for=@#string@#    replace_with=${todo_name}
    AppiumLibrary.Wait Until Element Is Visible     locator=${new_locator}    timeout=${10s_TIMEOUT}

verify todo date and time
    [Arguments]    ${todo_date}    ${todo_time}
    ${new_locator}=    String.Replace String    string=${home_page_locator['todo_list_with_time']}    search_for=@#date@#    replace_with=${todo_date}
    ${new_locator}=    String.Replace String        string=${new_locator}    search_for=@#time@#    replace_with=${todo_time}
    AppiumLibrary.Wait Until Element Is Visible     locator=${new_locator}    timeout=${10s_TIMEOUT}

Delete todo by name
    [Arguments]    ${todo_name}
    ${new_locator}=     String.Replace String    string=${home_page_locator['todo_list_with_text']}    search_for=@#string@#    replace_with=${todo_name}
    ${loc}=    AppiumLibrary.Get Element Location    locator=${new_locator}
    ${size}=    AppiumLibrary.Get Element Size    locator=${new_locator}

    ${start_x}=    BuiltIn.Set Variable    ${loc["x"]}
    ${start_y}=    BuiltIn.Evaluate    ${loc["y"]} + (${size["height"]} // 2)
    ${end_x}=      BuiltIn.Evaluate    ${start_x} + ${size["width"]}
    ${end_y}=      BuiltIn.Set Variable    ${start_y}
    AppiumLibrary.Swipe    start_x=${start_x}    start_y=${start_y}    end_x=${end_x}    end_y=${end_y}    duration=500ms

Verify deleted todo sucess
    AppiumLibrary.Wait Until Element Is Visible    locator=${home_page_locator['txt_delete_todo']}    timeout=${10s_TIMEOUT}
