*** Settings ***
Library    Browser
Library    Dialogs

*** Test Cases ***
Just open some web page
    Open Browser    https://google.com
    Take Screenshot
