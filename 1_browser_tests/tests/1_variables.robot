*** Settings ***
Resource    ../resources/sausedemo/import.resource

*** Variables ***
&{Item Prices}    
...    Sauce Labs Backpack=29.99
...    Sauce Labs Bike Light=9.99


*** Test Cases ***
Check Items Shown
    Launch Sausedemo
    Open Login Page
    Login    standard_user    secret_sauce
    Check Items Shown    Sauce Labs Backpack    Sauce Labs Bike Light

Check Item Prices
    Launch Sausedemo
    Open Login Page
    Login    standard_user    secret_sauce
    Check Item Prices

*** Keywords ***
Check Item Prices
    FOR    ${Name}    ${Price}    IN    &{Item Prices}
       Check Item Price    ${Name}    ${Price}
    END

Check Items Shown
    [Arguments]    @{Items}
    FOR    ${Item}    IN    @{Items}
        Get Element States    //*[text()='${Item}']    contains    visible
    END
