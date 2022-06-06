*** Settings ***
Resource         ../../env/${env}/mobile_config.robot
Library          String
Library          ../libs/CustomizeMobileLibs.py
Library          AppiumLibrary    timeout=30s

*** Keywords ***
Open App On Android Device
    [Documentation]    This keyword is used for open app on device
    ${path}=    Set Variable    ${CURDIR}
    ${path}=    Replace String    ${path}    keywords    app    #get path of apk file.
    Open Application    ${MB_REMOTE_URL}
    ...    platformName=${MB_PLATFORM_NAME}
    ...    platformVersion=${MB_PLATFORM_VERSION}
    ...    deviceName=${MB_DEVICE_NAME}
    ...    app=${path}/${MB_APK_FILENAME}
    ...    appPackage=${MB_APP_PACKAGE}
    ...    appActivity=${MB_APP_ACTIVITY}
    ...    newCommandTimeout=${MB_NEWCOMMANDTIMEOUT}
    ...    adbExecTimeout=${MB_NEWCOMMANDTIMEOUT}

Click On Element
    [Documentation]    This keyword is used for waiting an element is visible and click it on mobile
    [Arguments]    ${p_element}
    Wait Until Element Is Visible    ${p_element}
    Click Element    ${p_element}

Input Text On Element
    [Documentation]    This keyword is used for waiting an element is visible and click it on mobile
    [Arguments]    ${p_element}    ${p_value}
    Wait Until Element Is Visible    ${p_element}
    Input Text    ${p_element}    ${p_value}

Close The Application
    [Documentation]   This keyword is used for closing app after test
    Close Application