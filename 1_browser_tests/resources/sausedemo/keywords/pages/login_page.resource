*** Settings ***
Resource    ../../import.resource

*** Keywords ***
Open Login Page
    Go To    ${SAUSEDEMO_BASE_URL}
    Check Login Page Open

Check Login Page Open
    Fail    Looking for a student to implement me!