from src import db
from sqlalchemy.orm import relationship, backref

class Cargo(db.Model):
    __tablename__ = 'cargo'

    id = db.Column(db.BigInteger(), primary_key=True)
    nombre = db.Column(db.Text)

    empleados = relationship('Empleado', backref='cargo')
    pacientes = relationship('Paciente', backref='cargo')

    def __init__(self, nombre):
        self.nombre = nombre

    def __repr__(self):
        return '<id {}>'.format(self.id)