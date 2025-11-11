*** Settings ***
Documentation    Antes de começar qualquer caso, valide aqui 
Library          AppiumLibrary
Resource    screens/login.resource

*** Keywords ***
Start Session 

    Open Application    http://localhost:4723    platformName=Android    deviceName=Android Emulator   automationName=UIAutomator2   app=${EXECDIR}/apps/markx.apk    udid=emulator-5554    autoGrantPermissions=true 
    Wait Until Page Contains    Endereço IP da Api    10

Finish Session 
    Capture Page Screenshot
    Close Application