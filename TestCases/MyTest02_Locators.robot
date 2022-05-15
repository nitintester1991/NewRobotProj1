*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources1.robot
*** Variables ***

*** Test Cases ***
Robot First Test Case
# Keywords in Yellow color and [Arguments]  in Violet Colors. Defined Variables in Green Color
    Start Browser and Maximize
    UserName
    Password  Pass@123
    Input Text   id:datepicker  01/01/2000
    PhoneAddress   1234567890  GeraVihar,Viman Nagar
    Sleep  3s
    Click Element    //input[@value='home']
    Select From List by Value    name:sex    1
    Select From List by Label  name:country  India
    Sleep  5s
    Select From List by Label  name:state  Maharashtra
    Sleep  5s
    Select From List by Label  name:city  Nandgaon
    Input Text  name:zip  423106
    Select Checkbox  name:terms
    #Click Button  xpath://input[@value='Sign up']
    End Browser


*** Keywords ***
UserName
    Input Text  name:fld_username  TestingWorld
    Input Text  name:fld_email  testingworld@practice.com
Password
    [Arguments]  ${Pass}
    Input Text  name:fld_password  ${Pass}
    Input Text  xpath://input[@name='fld_cpassword']  ${Pass}





##LoginDetails ;    UserName : nitinborse1     Password : Nitin@12