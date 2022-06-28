*** Settings ***
Documentation           Automation practice test cases
Library                 SeleniumLibrary
Resource                ../PageObjects/1_Keywords.robot

*** Test Cases ***
User Should Be Able To Order 1 Product
    [Documentation]     Verify that user able to proceed order
    [Setup]             Open Browser Chrome
    
    2a. Click Button Sign In
    3a. Enter Email Address
    3b. Enter Password
    3c. Account Sign In
    4a. Click Product Type
    4b. Click Add To Chart
    4c. Proceed Checkout
    4d. Proceed Order Payment
    Sleep               10s

    [Teardown]          Close Browser