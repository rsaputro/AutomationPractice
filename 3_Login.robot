*** Settings ***
Documentation           Automation practice test cases
Library                 SeleniumLibrary
Resource                ../PageObjects/1_Keywords.robot

*** Test Cases ***
User Should Be Able To Login
    [Documentation]     Verify that user able to login
    [Setup]             Open Browser Chrome
    
    2a. Click Button Sign In
    2b. Verify That Create Account Button Appears
    3a. Enter Email Address
    3b. Enter Password
    3c. Account Sign In

    [Teardown]          Close Browser