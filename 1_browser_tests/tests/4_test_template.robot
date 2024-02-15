*** Settings ***
Resource    ../resources/sausedemo/import.resource

Suite Setup       Launch Sausedemo
Suite Teardown    Close Browser
Test Setup        Login    &{USER_STANDARD}
Test Teardown     Logout
Test Template     Add Item To Cart And Check
*** Variables ***
&{USER_STANDARD}    Username=standard_user    Password=secret_sauce

*** Test Cases ***
Backpack      Sauce Labs Backpack
Bike light    Sauce Labs Bike Light

*** Keywords ***
Add Item To Cart And Check
    [Arguments]    ${Item}
    Add item to cart    ${Item}
    Go to cart
    Check cart contains item    ${Item}
    Take Screenshot