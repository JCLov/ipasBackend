from src import db
from datetime import datetime
from sqlalchemy.orm import relationship, backref

class Turno(db.Model):
    __tablename__ = 'turno'

    id = db.Column(db.BigInteger(), primary_key=True)
    nombre = db.Column(db.Text)
    hora_llegada = db.Column(db.DateTime(), default=datetime.now)
    hora_salida = db.Column(db.DateTime())

    empleados = relationship('Empleado', backref='turno')

    def __init__(self, comentario, hora_llegada, hora_salida):
        self.comentario = comentario
        self.hora_llegada = hora_llegada
        self.hora_salida = hora_salida

    def __repr__(self):
        return '<id {}>'.format(self.id)
    
    