*** Settings ***
Library  SeleniumLibrary
Library  ../External/common.py

*** Variables ***
${Browser}  Firefox
${Browser_c}  Chrome
${URL}  http://www.google.es
${URL2}  https://www.google.es/search?source=hp&ei=YUZDW5S3B8GF6AT4-rCwDg&q=robotframework&oq=robotframework&gs_l=psy-ab.12...560.583.0.616.14.1.0.0.0.0.0.0..0.0....0...1c.1.64.psy-ab..14.0.0....0.hYAWQtdI9XU
${URL3}  https://www.mercadona.es

*** Keywords ***
Accion que retorna un valor
    [Arguments]  ${param1}

    [Return]  Valor retornado ${param1}

KeywordA
    log  KeyA

KeywordB
    ${resultado}=  Conectarme al sistema remoto
    #test_python  #"test python" funciona tambien o con majuscules "Test Python"
    log  KeyB${resultado}

KeywordC
    log  KeyC

Accion que recobe parametro y en funcion del mismo realiza accion A o B
    [Arguments]  ${edad}
    Run Keyword IF  ${edad} > 17  KeywordA
        ...     ELSE IF  ${edad} == 17  KeywordC
        ...     ELSE  KeywordB

*** Test Cases ***
Abrir y cerrar navegador
    [Tags]  wip
    Open Browser  ${URL3}  ${Browser}
    Maximize Browser Window
    Lista de productos de la web z  o-info
    # id= o id: funciona igual
    #Input Text  id=lst-ib  robotframework
    #Input Text  xpath://input[@id='lst-ib']  robotframework
    #click Button  name=btnK
    Sleep  3
    Close Browser

Abrir enlace que contiene "robot" en su description
    [Tags]  enlaces  browser
    Open Browser  ${URL2}  ${Browser}
    Maximize Browser Window
    Click Link  xpath://a[contains(text(),'Robot')]
    ${valor retornado}=  Accion que retorna un valor  chris
    log  Valor retornado por la keyword es ${valor retornado}
    Sleep  2
    Close Browser

Comproba condicion
    Accion que recobe parametro y en funcion del mismo realiza accion A o B  16
    #Accion que recobe parametro y en funcion del mismo realiza accion A o B  17
    #Accion que recobe parametro y en funcion del mismo realiza accion A o B  18