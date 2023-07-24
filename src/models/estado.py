from src import db
from sqlalchemy.orm import relationship, backref

class Estado(db.Model):
    __tablename__ = 'estado'

    id = db.Column(db.BigInteger(), primary_key=True)
    nombre = db.Column(db.Text)

    municipios = relationship('Municipio', backref='estado')

    def __init__(self, nombre):
        self.nombre = nombre

    def __repr__(self):
        return '<id {}>'.format(self.id)