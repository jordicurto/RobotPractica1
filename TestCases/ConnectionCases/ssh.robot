*** Settings ***
Library  SSHLibrary
Suite Setup  Open connection And Log in
Suite Teardown  Close All Connections

*** Variables ***
${HOST}  localhost
${USERNAME}  tet
${PASSWORD}  tet

*** Test Cases ***
Ejecutar comando y comprobar resultado
    [Documentation]  Doc Test case
    ${out}=  Execute Command echo  Esto es una prueba
    log  HOLA console=true
    should be equal  ${out}  Esto es una prueba

*** Keywords ***
Open connection And Log in
    Open Connection  ${HOST}
    Login  ${USERNAME}  ${PASSWORD}