*** Settings ***
Library   SeleniumLibrary
Resource  ../Resources/Resources1.robot


*** Variables ***
${Element}      //span[contains(text(),'Draggable 3')]
${destination}      //div[@id='mydropzone']
${location}     //li[contains(text(),'Pick any value from list')]

*** Test Cases ***
Drag and Drop the values
    Start Browser and Maximize
    User login    nitinborse1    Nitin@12
    Sleep  5s
    Scroll Down to Location
    Sleep  5s
    Drag values into box
    Sleep  5s
    Capture page screenshot      C:\Users\Acer\PycharmProjects\NewRobotProj1\TestCases
    End Browser

*** Keywords ***
Drag values into box
    Drag and drop       ${Element}       ${destination}

Scroll Down to Location
    Scroll element into view      ${location}



