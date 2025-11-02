*** Settings ***
Documentation       Online

Library             Browser

Resource            ../resources/base.resource



*** Test Cases ***
Webapp deve estar online 
    [Tags]         conf
    Start Session 
    Browser.Get Title        equal         Mark85 by QAx
    
