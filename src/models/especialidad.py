from src import db
from sqlalchemy.orm import relationship, backref

class Especialidad(db.Model):
    __tablename__ = 'especialidad'

    id = db.Column(db.BigInteger(), primary_key=True)
    nombre = db.Column(db.Text)
    maximo_dias = db.Column(db.Integer)

    empleados = relationship('Empleado', backref='especialidad')
    grupos_reportes = relationship('GrupoReporte', backref='especialidad')

    def __init__(self, nombre, maximo_dias):
        self.nombre = nombre
        self.maximo_dias = maximo_dias

    def __repr__(self):
        return '<id {}>'.format(self.id)