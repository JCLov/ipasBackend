from src import db
from sqlalchemy.orm import relationship, backref

class Paciente(db.Model):
    __tablename__ = 'paciente'

    cedula = db.Column(db.BigInteger(), primary_key=True)
    nombre = db.Column(db.Text, nullable=False)
    apellido = db.Column(db.Text, nullable=False)
    institucion_laboral = db.Column(db.Text)
    fecha_nacimiento = db.Column(db.DateTime())
    direccion = db.Column(db.Text)
    telefono = db.Column(db.String(11))
    permiso_dias_extra = db.Column(db.Boolean, default=False)
    cargo_id = db.Column(db.BigInteger(), db.ForeignKey('cargo.id'))
    dependencia_id = db.Column(db.BigInteger(), db.ForeignKey('dependencia.id'))
    municipio_id = db.Column(db.BigInteger(), db.ForeignKey('municipio.id'))

    grupos_reportes = relationship('GrupoReporte', backref='paciente')

    def __init__(self, cedula, nombre, apellido, institucion_laboral, fecha_nacimiento, direccion, telefono, permiso_dias_extra, cargo_id, dependencia_id, municipio_id):
        self.cedula = cedula
        self.nombre = nombre
        self.apellido = apellido
        self.institucion_laboral = institucion_laboral
        self.fecha_nacimiento = fecha_nacimiento
        self.direccion = direccion
        self.telefono = telefono
        self.permiso_dias_extra = permiso_dias_extra
        self.cargo_id = cargo_id
        self.dependencia_id = dependencia_id
        self.municipio_id = municipio_id

    def __repr__(self):
        return '<id {}>'.format(self.cedula)