*** Settings ***
Library          AppiumLibrary    timeout=30s
Resource         ../keywords/Commonkeywords.robot




*** Keywords ***
Click Menu Hotel At Home Screen
    [Documentation]    This key word is used for clicking the menu hotel at the home screen
    ${menu_hotel}=    Set Variable    xpath=//*[@text='Hotel']
    Click On Element    ${menu_hotel}

