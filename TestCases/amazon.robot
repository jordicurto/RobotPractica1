*** Settings ***
Documentation  Pruebas de escenerios de amazon

Library  SeleniumLibrary

Resource  ../InputData/data.robot
Test Setup  Ir a Amazon.es

*** Variables ***

*** Keywords ***
Ir a Amazon.es
   # Acceder a url en ventana maximizada ${URL}  ${Browser}
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window

*** Test Cases ***
Comprobar que el titulo contiene amazon
    [Documentation]  Comprueba que el titulo de amazon contiene Amazon
    [Tags]  title
    #Open Browser  ${URL}  ${Browser}
    ${title}=  Get Title
    log  Title is ${title}
    Should contain  ${title}  Amazon
    [Teardown]  Close Browser   #para forzar cierre browser si falla test

Acceder a login a partir del acceso de identificacion
    #${elemento singin}=  Get Webelement id=nav-link-accountList
    #Click Link  id=nav-link-accountList
    Click Link  xpath://a[@data-nav-role = 'signin'] #anchor cuyo attributo
    sleep 2
    ${atributo boton}=  Get Element Attribute id=continue  type
    should be equal as strings  ${atributo boton}  submit