*** Settings ***
Library          Process
Library          OperatingSystem
Library          String
Library          ../libs/CustomizeMobileLibs.py
Resource         ../../env/${env}/mobile_config.robot



*** Keywords ***
Start Appium Server
    [Documentation]    This keyword is used for starting appium server
    Terminate All Current Session
    ${current_os}=    Get Current OS
    ${window}=    Evaluate    "window" in """${current_os}"""
    Run Keyword if    '${window}'=='True'    Start Appium On Window
    Run Keyword if     '${window}'!='True'    Start Appium On Mac
    Process Should Be Running    appiumserver
    Sleep    15s

Start Appium On Window
    [Documentation]    This keyword is used for starting appium on window
    ${log_dir}=    Replace String    ${CURDIR}    /src/main/keywords    ${EMPTY}
    Start Process    %{APPIUM_PATH}    -p    ${MB_APPIUM_PORT}    shell=True    alias=appiumserver    stdout=${log_dir}/log/appium_stdout.txt    stderr=${log_dir}/appium_stderr.txt

Start Appium On Mac
    [Documentation]    This keyword is used for starting appium on mac
    ${log_dir}=    Replace String    ${CURDIR}    /src/main/keywords    ${EMPTY}
    Start Process    appium    -p    ${MB_APPIUM_PORT}    shell=True    alias=appiumserver    stdout=${log_dir}/log/appium_stdout.txt    stderr=${log_dir}/log/appium_stderr.txt
