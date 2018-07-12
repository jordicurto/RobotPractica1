*** Settings ***
Documentation  Pruebas de escenerios de Suite2
...            para verificar correcto acceso a
...            sistema

Library  SeleniumLibrary

#Resource  ../Resources/commom.robot
Resource  ../InputData/data.robot
#Test Setup  Inicio sistema
#Test Teardown  Finalizaciom sistema
test timeout  10s
Library  Remote  http://127.0.0.1:8270

*** Variables ***
#${Browser}  Chrome
#${URL}  http://www.amazon.es

*** Keywords ***
Paso de ejecucion com parametro
    [Arguments]  ${param1}
    Log  ${param1} console=true

*** Test Cases ***
Test Case 1
    [Setup]  Inicio sistema  TCase
    log  Se ha iniciado el TC1 con el site ${nombre site}
    [Teardown]  Finalizaciom sistema  TCase

Test Case 2
    log  Se ha iniciado el TC2  console=true

Test Case 3
    [Documentation]  Comprueba que el titulo de amazon contiene Amazon
    [Tags]  title
    Open Browser  ${URL}  ${Browser}
    ${title}=  Get Title
    log  Title is ${title}
    Should contain  ${title}  Amazon
    [Teardown]  Close Browser   #para forzar cierre browser si falla test

Test case 4
    [Template]  Paso de ejecucion com parametro
    Edu
    Albert
    Chris

Test case 5
    abrir cuenta
    cerrar cuenta
    ${saldo}=  obtener saldo
    Log  Mi Saldo es ${saldo}