*** Settings ***
Documentation           Automation practice test cases
Library                 SeleniumLibrary
Resource                ../PageObjects/1_Keywords.robot

*** Test Cases ***
User Should Be Able To See Homepage
    [Documentation]     Verify that homepage Url and header opened are correct
    [Setup]             Open Browser Chrome
    
    1a. Verify That Current Url Is Homepage Url
    1b. Verify That Homepage Header Appears

    [Teardown]          Close Browser