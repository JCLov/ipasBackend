from src import db
from sqlalchemy.orm import relationship, backref

class Municipio(db.Model):
    __tablename__ = 'municipio'

    id = db.Column(db.BigInteger(), primary_key=True)
    nombre = db.Column(db.Text, nullable=False)
    estado_id = db.Column(db.BigInteger(), db.ForeignKey('estado.id'))

    pacientes = relationship('Paciente', backref='municipio')

    def __init__(self, nombre, estado_id):
        self.nombre = nombre
        self.estado_id = estado_id

    def __repr__(self):
        return '<id {}>'.format(self.id)
    
    