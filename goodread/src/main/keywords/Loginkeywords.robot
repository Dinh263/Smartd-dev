*** Settings ***
Resource             ../screens/MainScreen.robot


*** Keywords ***
Log In To App
    Click Btn Sign In Now At Welcome Screen

Use App Without Log In
    Click Btn Sign In Now At Main Screen
    Click Skip Button At Main Screen