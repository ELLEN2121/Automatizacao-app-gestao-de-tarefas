*** Settings ***
Documentation    Testes de Login

Resource        ../resources/base.resource

Test Setup    Start Session
Test Teardown    Finish Session  

*** Test Cases ***
Deve Logar com sucesso utilizando aplicação react native (não funciona ids)

    Input Text    xpath=//*[@resource-id="apiIp"]    192.168.0.13
    Click Element    xpath=//*[@resource-id="signInButton"] 
    Wait Until Page Contains    Minhas tarefas    5
    Sleep    1
