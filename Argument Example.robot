*** Settings ***
Library    OperatingSystem    

*** Variables ***
${Message}    Hello Worlds

*** Keywords ***
My Keyword
    [Arguments]    ${path}
    Directory Should Exist    ${path}                

*** Test Cases ***
My Test
    [Documentation]    Example test
    Log    ${MESSAGE}
    My Keyword    /tmp

Another Test
    Should Be Equal    ${MESSAGE}    Hello, world!
    