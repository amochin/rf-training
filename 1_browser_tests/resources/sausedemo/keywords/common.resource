*** Settings ***
Resource    ../import.resource

*** Variables ***
${SAUSEDEMO_BASE_URL}    https://www.saucedemo.com
${BROWSER}               chromium
${HEADLESS}              False

*** Keywords ***
Launch Sausedemo
    New Browser    ${BROWSER}    ${HEADLESS}
    New Context
    New Page    ${SAUSEDEMO_BASE_URL}