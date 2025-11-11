*** Settings ***
Documentation   Elementos e açoes da tela de login
Library          AppiumLibrary


*** Variables ***
${API_IP}        192.168.0.13

*** Keywords ***
Do Login
    Input Text    xpath=//*[@resource-id="apiIp"]    ${API_IP}    
    Click Element    xpath=//*[@resource-id="signInButton"] 
    Wait Until Page Contains    Minhas tarefas    5
