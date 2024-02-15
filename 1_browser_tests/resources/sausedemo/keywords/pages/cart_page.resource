*** Settings ***
Resource    ../../import.resource

*** Keywords ***
Go to cart
    Go To    https://www.saucedemo.com/cart.html

Check cart contains item
    [Arguments]    ${Item Name}
    Get Element States    //*[text()='${Item Name}']    contains    visible
        