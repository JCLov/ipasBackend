from flask import Blueprint, request, jsonify, make_response
from src import app
from ..calls.usuariosCalls import UsuariosCalls
from ..calls.rolesCalls import RolesCalls

#app = Blueprint("usuarios", __name__)

@app.route('/usuarios/login', methods=['POST'])
def login():
    if request.method == 'POST':
        respuesta = UsuariosCalls.autenticar_usuario(request.form['usuario'], request.form['clave'])
        return make_response(jsonify(respuesta)) 
    
@app.route('/usuarios/register', methods=['POST'])
def register():
    if request.method == 'POST':
        respuesta = ''
        if es_admin(request.form['usuarioValidador'], request.form['claveValidador']):
            usuarioNuevo = UsuariosCalls.crear_usuario(request.form['usuario'],request.form['clave'],request.form['nombre'],request.form['rol_id'])
            if usuarioNuevo is None:
                respuesta = '01|Problemas al crear usuario'
            else :
                respuesta = '00|OK'
        else :
            respuesta = '01|Problemas con el usuario validador'
        return make_response(jsonify(respuesta))
    
def es_admin(usuario, clave):
    validadorLogin = UsuariosCalls.autenticar_usuario(usuario, clave)
    if validadorLogin == '00|OK':
        validador = UsuariosCalls.usuario_por_nombre(usuario)
        if RolesCalls.permite_crear(validador.rol_id):
            return True
    return False