*** Settings ***
Library   SeleniumLibrary
Resource  ../Resources/Resources1.robot

*** Variables ***
${ProfileImage}     //img[@src='img/Profile.jpg']


*** Test Cases ***
Verify Dashboard page after Login
    Start Browser and Maximize
    User login    nitinborse1    Nitin@12
    Verify it is Dashboard
    Capture page screenshot      C:\Users\Acer\PycharmProjects\NewRobotProj1\TestCases
    End Browser

*** Keywords ***
Verify it is Dashboard
    Sleep   3s
    Element should be visible     xpath://img[@src='img/Profile.jpg']
    Element should be enabled     xpath://button[contains(text(),'View Me')]
