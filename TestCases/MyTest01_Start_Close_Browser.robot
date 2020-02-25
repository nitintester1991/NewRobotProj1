*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Firefox
${URL}  https://www.thetestingworld.com/testings/

*** Test Cases ***
TestCase01 Browser Start and Close
    Open Browser  ${URL}  ${Browser}
    Close Browser