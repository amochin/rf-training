*** Settings ***
Resource    ../../import.resource

*** Keywords ***
Check Item Price
    [Arguments]    ${Name}    ${Price}
    ${Selector}=    Catenate    SEPARATOR=
    ...    //*[@class='inventory_item']
    ...    [.//*[@class='inventory_item_name '][text()='${Name}']]
    ...    [.//*[@class='inventory_item_price'][text()='${Price}']]
    Get Element States    ${Selector}    contains    visible

Add item to cart
    [Arguments]    ${Item Name}
    ${Item Container}=    Catenate    SEPARATOR=
    ...    //*[@class='inventory_item']
    ...    [.//*[@class='inventory_item_name '][text()='${Item Name}']]
    ${Button}=    Catenate    SEPARATOR=
    ...    ${Item Container}
    ...    //button
    Click    ${Button}