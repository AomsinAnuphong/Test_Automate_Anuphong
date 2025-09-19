*** Settings ***
Resource    ../import.robot


*** Keywords ***
Open web url
    [Arguments]    ${url}    ${browser}=${DEFAULT_BROWSER}
    IF    '${headless}' == 'True'
        SeleniumLibrary.Open Browser    ${url}    headlesschrome
    ELSE
        SeleniumLibrary.Open Browser    ${url}    ${browser}
    END

Input text
    [Arguments]    ${locator}    ${input_text}
    SeleniumLibrary.Wait Until Element Is Visible    locator=${locator}    timeout=${5s_TIMEOUT}
    SeleniumLibrary.Input Text    locator=${locator}    text=${input_text}

Verify text
    [Arguments]    ${locator}    ${text_verify}
    SeleniumLibrary.Wait Until Element Contains    locator=${locator}    text=${text_verify}    timeout=${10s_TIMEOUT}

Close all browser
    SeleniumLibrary.Close All Browsers
