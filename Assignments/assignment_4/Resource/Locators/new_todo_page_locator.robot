*** Variables ***
&{new_todo_page_locator}
...            txt_todo_page_title=xpath=//bi[@text="${title}"]
...            txt_input_todo=xpath=//*[@resource-id="com.avjindersinghsekhon.minimaltodo:id/userToDoEditText"]
...            set_todo_btn=xpath=//*[@resource-id="com.avjindersinghsekhon.minimaltodo:id/makeToDoFloatingActionButton"]
...            todo_remind_me_stw=xpath=//*[@resource-id="com.avjindersinghsekhon.minimaltodo:id/toDoHasDateSwitchCompat"]
...            txt_input_date=xpath=//*[@resource-id="com.avjindersinghsekhon.minimaltodo:id/newTodoDateEditText"]
...            txt_input_time=xpath=//*[@resource-id="com.avjindersinghsekhon.minimaltodo:id/newTodoTimeEditText"]
...            txt_waring_time_in_past=//android.widget.TextView[@text="${time_in_past_warning}"]
...            cancel_btn=xpath=//android.widget.ImageButton[@content-desc="Navigate up"]