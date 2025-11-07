*** Settings ***
Documentation    Testes de Login

Resource        ../resources/base.resource

*** Test Cases ***
Deve Logar com sucesso 

    Open Application    http://localhost:4723    platformName=Android    deviceName=Android Emulator   automationName=UIAutomator2   app=${EXECDIR}/app/yodapp-beta.apk    udid=emulator-5554    autoGrantPermissions=true 
    
    