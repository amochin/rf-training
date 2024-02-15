*** Settings ***
Resource    ../resources/sausedemo/import.resource

*** Test Cases ***
Valid Login As Standard User
    Launch Sausedemo
    Open Login Page
    Login    standard_user    secret_sauce
    Take Screenshot