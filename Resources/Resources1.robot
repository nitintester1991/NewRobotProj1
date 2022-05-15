*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${URL}  https://www.thetestingworld.com/testings/
${Browser}  Chrome

*** Keywords ***
Start Browser and Maximize
    Open Browser   ${URL}   ${Browser}
    Maximize Browser Window

End Browser
    Close Browser

PhoneAddress
    [Arguments]  ${Phone}  ${mail}
    Input Text  name:phone  ${Phone}
    Input Text  name:address  ${mail}
    ${Title}=  Get Title
    Log  ${Title}

User login
    [Arguments]    ${User}   ${pass}
    Click element   //label[text()='Login']
    Input Text  name:_txtUserName   ${User}
    Input Text  name:_txtPassword   ${pass}
    Click element    xpath://input[@value='Login']
