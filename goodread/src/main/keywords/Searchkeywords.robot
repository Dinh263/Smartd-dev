*** Settings ***
Resource             ../screens/HomeScreen.robot
Resource             ../screens/SearchScreen.robot
Library              String


*** Keywords ***
Search A Hotel Name
    [Documentation]    This keyword is used for search a hotel, first click the menu hotel at the home screen, then click icon search, and then input search hotel name.
    [Arguments]    ${p_hotel_name}
    Click Menu Hotel At Home Screen
    Click Search Icon At Search Screen
    Set Txt Search At Search Screen    ${p_hotel_name}

Assert Search Hotel Result Are Correct
    [Documentation]    This keyword is used for getting list hotel found, then try to verify found hotel name are started with the expected name.
    [Arguments]    ${p_expected_hotel_name}
    ${expected_hotel_name}=    Convert To Lower Case    ${p_expected_hotel_name}
    ${list_hotel}    Get List Hotel Found Searching
    FOR    ${element}    IN    @{list_hotel}
        ${text}=    Get Text    ${element}
        ${actual_hotel_name}=    Convert To Lower Case    ${text}
        Should Start With    ${actual_hotel_name}    ${expected_hotel_name}    msg=Hotel Search result not correct! Expected: ${expected_hotel_name} but actual: ${actual_hotel_name}
    END



