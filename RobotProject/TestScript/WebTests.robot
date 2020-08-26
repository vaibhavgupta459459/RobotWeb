*** Settings ***
Documentation    This is Test Suite for Web Application to execute on Jenkins

Library    SeleniumLibrary
Test Setup    Open Google on Chrome Browser
Test Teardown    Close Browser

*** Test Cases ***
Test1
    Log    This is a demo test

Test2
    Input Text    xpath://input[@name='q']    RobotFramework
    Capture Page Screenshot
    Click Element    xpath://input[@name='btnK']
    Wait Until Page Contains    Robot Framework
    Capture Page Screenshot

Test3
    Input Text    xpath://input[@name='q']    Jenkins Robot Framework
    Capture Page Screenshot
    Click Element    xpath://input[@name='btnK']
    Wait Until Page Contains    Robot Framework | Jenkins plugin
    Capture Page Screenshot

*** Keywords ***
Open Google on Chrome Browser
    Open Browser    https://www.google.com    chrome
    Maximize Browser Window  
	Wait Until Page Contains    Google
    Capture Page Screenshot






