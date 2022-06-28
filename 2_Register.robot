*** Settings ***
Documentation           Automation practice test cases
Library                 SeleniumLibrary
Resource                ../PageObjects/1_Keywords.robot

*** Test Cases ***
User Should Be Able To Register
    [Documentation]     Verify that a new user can create an account
    [Setup]             Open Browser Chrome

    2a. Click Button Sign In
    2b. Verify That Create Account Button Appears
    2c. Create An Account Using Email Address
    2d. Click Button Create An Account
    2e. Complete Registration With Filling Personal Data
    
    [Teardown]          Close Browser