from src import db
from sqlalchemy.orm import relationship, backref

class Dependencia(db.Model):
    __tablename__ = 'dependencia'

    id = db.Column(db.BigInteger(), primary_key=True)
    nombre = db.Column(db.Text)

    empleados = relationship('Empleado', backref='dependencia')
    pacientes = relationship('Paciente', backref='dependencia')

    def __init__(self, nombre):
        self.nombre = nombre

    def __repr__(self):
        return '<id {}>'.format(self.id)