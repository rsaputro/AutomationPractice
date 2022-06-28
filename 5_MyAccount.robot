*** Settings ***
Documentation           Automation practice test cases
Library                 SeleniumLibrary
Resource                ../PageObjects/1_Keywords.robot

*** Test Cases ***
User Should Be Able To See My Account
    [Documentation]     Verify that user able to see user details
    [Setup]             Open Browser Chrome
    
    2a. Click Button Sign In
    3a. Enter Email Address
    3b. Enter Password
    3c. Account Sign In
    5a. Click My Account Name
    5b. Click User Details
    
    [Teardown]          Close Browser