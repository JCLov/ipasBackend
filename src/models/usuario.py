from src import db

class Usuario(db.Model):
    __tablename__ = 'usuario'

    id = db.Column(db.BigInteger(), primary_key=True)
    usuario = db.Column(db.Text, nullable=False)
    clave = db.Column(db.Text, nullable=False)
    nombre = db.Column(db.Text)
    rol_id = db.Column(db.BigInteger(), db.ForeignKey('rol.id'))

    def __init__(self, usuario, clave, nombre, rol_id):
        self.usuario = usuario
        self.clave = clave
        self.nombre = nombre
        self.rol_id = rol_id

    def __repr__(self):
        return '<id {}>'.format(self.id)