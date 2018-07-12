class SistemaBancario:

    def __init__(self):
        self.id_banco = "BA-900"

    def abrir_cuenta(self):
        logger.console("Abrir cuenta")

    def cerrar_cuenta(self):
        logger.console("Cerrar cuenta")

    def obtener_saldo(self):
        logger.console("Obtener saldo")
        return 900