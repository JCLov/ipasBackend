from src import db
from datetime import datetime

class Permiso(db.Model):
    __tablename__ = 'permiso'

    id = db.Column(db.BigInteger(), primary_key=True)
    descripcion_motivo = db.Column(db.Text, nullable=False)
    fecha_inicio = db.Column(db.DateTime(), default=datetime.now)
    fecha_fin = db.Column(db.DateTime())
    empleado_cedula = db.Column(db.BigInteger(), db.ForeignKey('empleado.cedula'))

    def __init__(self, descripcion_motivo, fecha_inicio, fecha_fin, empleado_cedula):
        self.descripcion_motivo = descripcion_motivo
        self.fecha_inicio = fecha_inicio
        self.fecha_fin = fecha_fin
        self.empleado_cedula = empleado_cedula

    def __repr__(self):
        return '<id {}>'.format(self.id)