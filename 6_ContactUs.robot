*** Settings ***
Documentation           Automation practice test cases
Library                 SeleniumLibrary
Resource                ../PageObjects/1_Keywords.robot

*** Test Cases ***
User Should Be Able to See Contact Us
    [Documentation]     Verify that user able to send a message
    [Setup]             Open Browser Chrome
    
    6a. Click Contact Us
    6b. Verify If User Can See Send A Message Button
    6c. Send a message

    [Teardown]          Close Browser