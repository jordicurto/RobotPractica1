from robot.api import logger
from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn

@keyword("Conectarme al sistema remoto")
def test_python():
    logger.console(u"Funcion expuesta desde módulo python")
    return "Test"

def second_test_python():
    logger.console(u"Segunda Funcion expuesta desde módulo python")
    return "Test2"

#@keyword("Conectarme a url con navegador")
#def abrir_navegador_en_la_url(url,driver):
#    selenium_lib = BuiltIn.get_library_instance("SeleniumLibrary")
#    browser = selenium_lib.current_browser()
#    lista_productos = browser.find_element_by_class_name('productos')
#    for producto in lista_productos:
#        logger.console(producto)

@keyword("Lista de productos de la web z")
def lista_productos(class_name):
    selenium_lib = BuiltIn().get_library_instance("SeleniumLibrary")
    browser = selenium_lib._current_browser()  #oculto pa eso _
    lista = browser.find_element_by_class_name(class_name)
    productos = lista.find_elements_by_tag_name('article')
    for producto in productos:
        logger.console(producto)
