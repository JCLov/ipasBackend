from src import db
from sqlalchemy.orm import relationship, backref

class Empleado(db.Model):
    __tablename__ = 'empleado'

    cedula = db.Column(db.BigInteger(), primary_key=True)
    nombre = db.Column(db.Text, nullable=False)
    apellido = db.Column(db.Text, nullable=False)
    fecha_nacimiento = db.Column(db.DateTime())
    direccion = db.Column(db.Text)
    telefono = db.Column(db.String(11))
    especialidad_id = db.Column(db.BigInteger(), db.ForeignKey('especialidad.id'))
    cargo_id = db.Column(db.BigInteger(), db.ForeignKey('cargo.id'))
    dependencia_id = db.Column(db.BigInteger(), db.ForeignKey('dependencia.id'))
    turno_id = db.Column(db.BigInteger(), db.ForeignKey('turno.id'))
    genero_id = db.Column(db.BigInteger(), db.ForeignKey('genero.id'))

    permisos = relationship('Permiso', backref='empleado')
    asistencias = relationship('Asistencia', backref='empleado')

    def __init__(self, cedula, nombre, apellido, fecha_nacimiento, direccion, telefono, especialidad_id, cargo_id, dependencia_id, turno_id, genero_id):
        self.cedula = cedula
        self.nombre = nombre
        self.apellido = apellido
        self.fecha_nacimiento = fecha_nacimiento
        self.direccion = direccion
        self.telefono = telefono
        self.especialidad_id = especialidad_id
        self.cargo_id = cargo_id
        self.dependencia_id = dependencia_id
        self.turno_id = turno_id
        self.genero_id = genero_id

    def __repr__(self):
        return '<id {}>'.format(self.cedula)