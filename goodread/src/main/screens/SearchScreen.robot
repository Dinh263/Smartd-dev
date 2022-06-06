*** Settings ***
Library          AppiumLibrary    timeout=30s
Resource         ../keywords/Commonkeywords.robot




*** Keywords ***
Click Search Icon At Search Screen
    [Documentation]    This key word is used for clicking the search icon at the search screen
    ${icon_search}=    Set Variable    xpath=//*[@text='Hotel']/../android.view.ViewGroup[@index=2]/android.widget.ImageView
    Click On Element    ${icon_search}

Set Txt Search At Search Screen
    [Documentation]    This key word is used for setting the search value at the search screen
    [Arguments]    ${p_hotel_name}
    ${txt_search}=    Set Variable    xpath=//*[@text='Thành phố, khách sạn, điểm đến']
    Input Text On Element    ${txt_search}    ${p_hotel_name}

Get List Hotel Found Searching
    ${xpath}=    Set Variable    xpath=//*[@text='Khách sạn']/../../android.widget.TextView[@index=1]
    wait until element is visible    ${xpath}
    ${list_hotel_found}=    Get Webelements    ${xpath}
    [Return]    ${list_hotel_found}

