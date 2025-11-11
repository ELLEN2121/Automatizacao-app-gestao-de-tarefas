*** Settings ***
Documentation    Suite de testes de cadatro do aplicativo
Resource        ../resources/base.resource

Test Setup    Start Session
Test Teardown    Finish Session  


*** Test Cases ***
Deve cadastrar uma nova tarefa 
    Do Login

    Input Text    xpath=//*[@resource-id="newTask"]    cadastro de nova tarefa
    Click Element    xpath=//*[@resource-id="createTask"]
    Wait Until Page Contains    cadastro de nova tarefa    2

Deve excluir uma tarefa 

    Do Login
    