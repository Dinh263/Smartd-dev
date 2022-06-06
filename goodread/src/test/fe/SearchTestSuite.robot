*** Settings ***
Documentation       This testsuite is used for testing feature searching.
Resource            ../../../Variables.robot
Resource            ../../main/keywords/AppiumServerkeywords.robot
Resource            ../../main/keywords/Commonkeywords.robot
Resource            ../../main/keywords/Loginkeywords.robot
Resource            ../../main/keywords/Searchkeywords.robot

Suite Setup    Start Appium Server
Test Setup    Open App On Android Device
Test Teardown    Close The Application


*** Test Cases ***
As a user I want to login successfully with valid credential
    [Documentation]    This test case is used to test the search function.
    ...    Step 1: user open app
    ...    Step 2: user click login and click skip button
    ...    Step 3: user click icon search
    ...    Step 4: user input a hotel name to search
    ...    Step 5: verify all the found hotel name start with the hotel search name.
    [Tags]    fe    search
    ${hotel_name}=    Set Variable    EROS HOTEL
    Use App Without Log In
    Search A Hotel Name    ${hotel_name}
    Assert Search Hotel Result Are Correct    ${hotel_name}




