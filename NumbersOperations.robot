*** Settings ***
Library    Selenium2Library    
Library    String 
   
*** Variable ***

*** Keywords ***
Create random Number
    ${str1}    Convert To Lowercase    ABC
    Log     ${str1}
    ${ret}    Generate Random String
    Log    ${ret}

*** Test Cases ***
Test
    Create random Number    
