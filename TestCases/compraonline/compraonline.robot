*** Settings ***
Test Setup  Navegar a la pagina  http://amazon.es
Test Teardown  Cerrar navegador

*** Test Cases ***
Usuario no logado puede listar productos catalogo
    Given usuario no logado
    When usuario busca productos de tipo jardineria
    Then aparecen resultados de busqueda de productos relevantes