from ..models.usuario import Usuario
from src import db

class UsuariosCalls():
    def mostrar_usuarios():
        usuarios = Usuario.query.all()
        return usuarios

    def crear_usuario(usuario, clave, nombre, rol_id):
        usuarioNuevo = Usuario(usuario = usuario, clave = clave, nombre = nombre, rol_id=rol_id)
        db.session.add(usuarioNuevo)
        db.session.commit()
        db.session.refresh(usuarioNuevo)
        return usuarioNuevo

    def modificar_usuario(usuario):
        usuarioBD = Usuario.query.get(usuario.id)
        usuarioBD.usuario = usuario.usuario
        usuarioBD.clave = usuario.clave
        usuarioBD.nombre = usuario.nombre
        usuarioBD.rol_id = usuario.rol_id
        db.session.commit()
        db.session.refresh(usuarioBD)
        return usuarioBD

    def borrar_usuario(id):
        usuarioBD = Usuario.query.get(id)
        db.session.delete(usuarioBD)
        db.session.commit()
        return "Ok"

    def autenticar_usuario(usuario, clave):
        usuarioBD = Usuario.query.filter_by(usuario = usuario).first()
        if usuarioBD is None:
            return "02|Usuario incorrecto"
        else : 
            if usuarioBD.clave == clave:
                return "00|OK"
            else :
                return "01|Clave incorrecta"
            
    def usuario_por_nombre(usuario):
        return Usuario.query.filter_by(usuario = usuario).first()