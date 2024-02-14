*** Settings ***
Resource    ../resources/sausedemo/import.resource

*** Test Cases ***
Valid Login As Standard User
    Launch Sausedemo
    Open Login Page

    