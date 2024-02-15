*** Settings ***
Resource    ../../import.resource

*** Keywords ***
Open Login Page
    Go To    ${SAUSEDEMO_BASE_URL}
    Check Login Page Open

Check Login Page Open
    Get Text    //*[@class='login_logo']    ==    Swag Labs

Login
    [Arguments]    ${Username}    ${Password}
    Fill Text    id=user-name    ${Username}
    Fill Secret    id=password    $Password
    Click    id=login-button