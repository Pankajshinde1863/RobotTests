*** Settings ***
Library        Selenium2Library
#Library        HttpLibrary
#Test Setup     Open Test Browser

***Variables***
${BROWSER}    Chrome
${URL}    https://www.yandex.com
${SEARCHBOX}    text
${RADIO_SEX}    u_0_z
${Password}    pass
*** Test Cases ***
Open Facebook Page
    Open Browser        ${URL}        ${BROWSER}
    Go To    https://www.facebook.com
    Maximize Browser Window
    Sleep    2
Fill The SignUp Form
    #Select Radio Button    ${RADIO_SEX}    Male
    Select From List by Value    day    12
Verify Page Should Contain 
    Page Should Contain    Birthday
    Page Should Contain Button        xpath=//*[@id="u_0_2"]    
    Page Should Not Contain     Pankaj
Verify IF Condition
    ${IfC}=    Run Keyword And Return Status        Page Should Contain Button        xpath=//*[@id="u_0_2"]
    Log    ${IfC}
    Run Keyword If    ${IfC}=='True'        Go To    https://www.yandex.com
    
#Search facebook.com in Textbox
   # Input Text    ${SEARCHBOX}    Facebook.com
   
