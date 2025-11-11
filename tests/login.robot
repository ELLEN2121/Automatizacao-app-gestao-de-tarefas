*** Settings ***
Documentation    Testes de Login

Resource        ../resources/base.resource

Test Setup    Start Session
Test Teardown    Finish Session  

*** Test Cases ***
Deve Logar com sucesso utilizando aplicação react native (não funciona ids)
    Do Login
    Sleep    1
