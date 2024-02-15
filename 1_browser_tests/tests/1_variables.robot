*** Settings ***
Resource    ../resources/sausedemo/import.resource

*** Variables ***
@{Items}    Sauce Labs Backpack    Sauce Labs Bike Light

*** Test Cases ***
Check Items Shown
    Launch Sausedemo
    Open Login Page
    Login    standard_user    secret_sauce
    Check Items Shown

*** Keywords ***
Check Items Shown
    FOR    ${Item}    IN    @{Items}
        Get Element States    //*[text()='${Item}']    contains    visible
    END