*** Settings ***
Resource    ../resources/sausedemo/import.resource

Suite Setup       Launch Sausedemo
Suite Teardown    Close Browser
Test Setup        Login    &{USER_STANDARD}
Test Teardown     Logout

*** Variables ***
&{Item Prices}    
...    Sauce Labs Backpack=29.99
...    Sauce Labs Bike Light=9.99

&{USER_STANDARD}    Username=standard_user    Password=secret_sauce

*** Test Cases ***
Check Items Shown
    Check Items Shown    Sauce Labs Backpack    Sauce Labs Bike Light

Check Item Prices
    Check Item Prices

*** Keywords ***
Open Sausedemo And Login
    Launch Sausedemo
    Open Login Page
    Login    &{USER_STANDARD}

Check Item Prices
    FOR    ${Name}    ${Price}    IN    &{Item Prices}
       Check Item Price    ${Name}    ${Price}
    END

Check Items Shown
    [Arguments]    @{Items}
    FOR    ${Item}    IN    @{Items}
        Get Element States    //*[text()='${Item}']    contains    visible
    END
