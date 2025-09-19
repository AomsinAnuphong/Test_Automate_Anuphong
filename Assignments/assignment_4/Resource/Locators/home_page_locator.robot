*** Variables ***
&{home_page_locator}
...                     warning_popup=xpath=//android.widget.TextView[@text="${old_version_not_support}"]
...                     warning_ok_btn=xpath=//android.widget.Button[@text="${txt_ok}"]
...                     txt_minimal_title=//android.widget.TextView[@text="${app_title}"]
...                     add_todo_btn=id=${APP_PACKAGE}:id/addToDoItemFAB
...                     txt_empty_todo_msg=xpath=//android.widget.TextView[@text="${you_do_not_have_todos}"]
...                     todo_list_with_text=xpath=//android.widget.TextView[@resource-id="com.avjindersinghsekhon.minimaltodo:id/toDoListItemTextview" and @text="@#string@#"]
...                     todo_list_with_time=xpath=//android.widget.TextView[@text="@#date@#${SPACE}${SPACE}@#time@#"]
...                     full_todo_name_date_time=xpath=//android.widget.TextView[@resource-id="com.avjindersinghsekhon.minimaltodo:id/toDoListItemTextview" and @text="@#string@#"]//following-sibling::android.widget.TextView[@text="@#date@#${SPACE}${SPACE}@#time@#"]
...                     txt_delete_todo=xpath=//android.widget.TextView[@text="${deleted_todo}"]
