*** Keywords ***
Inicio sistema
    [Arguments]  ${parameter}=TSuite  # Tsuite valor por defecto
    log  Inicio sistema pruebas suite 2 con param ${parameter}

Finalizaciom sistema
    [Arguments]  ${parameter}=TSuite
    log  Finalizacion sistema pruebas suite 2 con param ${parameter}

#Acceder a url en ventana maximizada
 #   [Arguments]  ${URL}  ${Browser}=Chrome
 #   Open Browser  ${URL}  ${Browser}
  #  Maximize Browser Window