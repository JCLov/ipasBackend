from src import db
from datetime import datetime

class Asistencia(db.Model):
    __tablename__ = 'asistencia'

    id = db.Column(db.BigInteger(), primary_key=True)
    comentario = db.Column(db.Text, nullable=False)
    hora_llegada = db.Column(db.DateTime(), default=datetime.now)
    hora_salida = db.Column(db.DateTime())
    empleado_cedula = db.Column(db.BigInteger(), db.ForeignKey('empleado.cedula'))

    def __init__(self, comentario, hora_llegada, hora_salida, empleado_cedula):
        self.comentario = comentario
        self.hora_llegada = hora_llegada
        self.hora_salida = hora_salida
        self.empleado_cedula = empleado_cedula

    def __repr__(self):
        return '<id {}>'.format(self.id)
    
    