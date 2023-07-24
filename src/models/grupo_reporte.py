from src import db
from datetime import datetime
from sqlalchemy.orm import relationship, backref

class GrupoReporte(db.Model):
    __tablename__ = 'grupo_reporte'

    id = db.Column(db.BigInteger(), primary_key=True)
    paciente_cedula = db.Column(db.BigInteger(), db.ForeignKey('paciente.cedula'))
    especialidad_id = db.Column(db.BigInteger(), db.ForeignKey('especialidad.id'))
    fecha_inicio = db.Column(db.DateTime(), default=datetime.now)

    reportes = relationship('Reporte', backref='grupo_reporte')

    def __init__(self, paciente_cedula, especialidad_id, fecha_inicio):
        self.paciente_cedula = paciente_cedula
        self.especialidad_id = especialidad_id
        self.fecha_inicio = fecha_inicio

    def __repr__(self):
        return '<id {}>'.format(self.id)