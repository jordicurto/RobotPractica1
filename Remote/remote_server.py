from robotremoteserver import RobotRemoteServer
from liberia_remota import SistemaBancario

server = RobotRemoteServer(SistemaBancario(),serve=False)
server.serve()