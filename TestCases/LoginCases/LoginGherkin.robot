*** Settings ***

*** Keywords ***
usuario con credenciales correctas
    log  precondicion credenciales OK

usuario introduce el username
    log  intro username

usuario usuario introduce la clave
    log  intro clave

le aparce el profile de usuario
    log  pantalla user profile OK

*** Test Cases ***
Usuario acceder al sistema con credenciales correctas
    [Tags]  gherkin
    Given usuario con credenciales correctas
    When usuario introduce el username
    And usuario usuario introduce la clave
    Then le aparce el profile de usuario
