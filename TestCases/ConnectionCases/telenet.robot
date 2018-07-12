*** Settings ***
Library  Telnet
Library  Collections
#Test Timeout  10

*** Variables ***
${ip}  64.13.139.230
${port}  80

*** Test Cases ***
Conectarse a sistema via telenet
    ${out1}=  Open Connection  ${ip}  ${port}
    Set Prompt  user
    log  ${out1}  console=true

Obtener informacion del sistema conectado
   # ${out1}=  Execute Command  help
    ${out2}=  Execute Command  help
   # ${item}=  Get From List  ${out2}  0
    #should match regexp  ${item}  /^_3/

    log  ${out2}  console=true
   # log  ${item}  console=true

Desconectarse del sistema remoto
    Close All Connections