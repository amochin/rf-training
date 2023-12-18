*** Settings ***
Library    Browser

*** Test Cases ***
Browser - just open some web page
    Open Browser    https://google.com
    Take Screenshot
