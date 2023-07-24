from src import db
from datetime import datetime

class Reporte(db.Model):
    __tablename__ = 'reporte'

    id = db.Column(db.BigInteger(), primary_key=True)
    codigo_asistencial = db.Column(db.Text, nullable=False)
    codigo_registro = db.Column(db.Text, nullable=False)
    fecha_inicio = db.Column(db.DateTime(), default=datetime.now)
    fecha_fin = db.Column(db.DateTime())
    empleado_validador_cedula = db.Column(db.BigInteger(), db.ForeignKey('empleado.cedula'))
    grupo_reporte_id = db.Column(db.BigInteger(), db.ForeignKey('grupo_reporte.id'))

    def __init__(self,codigo_asistencial,codigo_registro,fecha_inicio, fecha_fin,grupo_reporte_id):
        self.codigo_asistencial = codigo_asistencial
        self.codigo_registro = codigo_registro
        self.fecha_inicio = fecha_inicio
        self.fecha_fin = fecha_fin
        self.grupo_reporte_id = grupo_reporte_id

    def __repr__(self):
        return '<id {}>'.format(self.id)