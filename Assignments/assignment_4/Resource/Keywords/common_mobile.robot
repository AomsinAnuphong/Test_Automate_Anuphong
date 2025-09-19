*** Settings ***
Resource    ../import.robot


*** Keywords ***
Close warning popup if it appears
    [Documentation]    Close warning popup on old android version
    ${is_appears}=    BuiltIn.Run Keyword And Return Status
    ...    AppiumLibrary.Wait Until Element Is Visible
    ...    locator=${home_page_locator['warning_popup']}
    ...    timeout=${10s_TIMEOUT}
    IF    ${is_appears}
        AppiumLibrary.Click Element    locator=${home_page_locator['warning_ok_btn']}
    END

Open mobile application
    ${App_path}=    BuiltIn.Evaluate    os.path.abspath(os.path.join(r"${CURDIR}/../../", r"${APP_PATH}"))    os
    AppiumLibrary.Open Application
    ...    remote_url=${APPIUM_SERVER}
    ...    platformName=${PLATFORM_NAME}
    ...    platformVersion=${PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    automationName=${AUTOMATION_NAME}
    ...    app=${App_path}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    common_mobile.Close warning popup if it appears

Close all application
    AppiumLibrary.Close All Applications

Input text
    [Arguments]    ${locator}    ${text}
    AppiumLibrary.Wait Until Element Is Visible    ${locator}    timeout=${10s_TIMEOUT}
    AppiumLibrary.Clear Text    locator=${locator}
    AppiumLibrary.Input Text    ${locator}    ${text}

Get Time Minus 30 Minutes In AMPM Format
    ${current}=    DateTime.Get Current Date    result_format=datetime
    ${new_time}=    DateTime.Subtract Time From Date    ${current}    30 minutes
    ${formatted}=    DateTime.Convert Date    ${new_time}    result_format=%I:%M %p
    RETURN    ${formatted}
