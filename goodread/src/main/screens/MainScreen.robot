*** Settings ***
Library          AppiumLibrary    timeout=30s
Resource         ../keywords/Commonkeywords.robot




*** Keywords ***
Click Btn Sign In Now At Main Screen
    [Documentation]    This key word is used for clicking the button Sign at the main screen
    ${btn_sign_in_now}=    Set Variable    xpath=//*[@text='Sign-in now']
    Click On Element    ${btn_sign_in_now}

Click Skip Button At Main Screen
    [Documentation]    This keyword is used for clicking button skip login at login screen
    ${btn_skip}=    Set Variable    xpath=//*[@text='Skip']
    Click On Element    ${btn_skip}