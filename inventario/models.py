# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Campus(models.Model):
    id_cam = models.AutoField(primary_key=True)
    nombre = models.CharField(unique=True, max_length=100)
    direccion = models.CharField(max_length=100)
    cpostal = models.CharField(max_length=20)
    fono = models.CharField(max_length=20)
    email = models.CharField(max_length=100)
    ubicacion = models.CharField(max_length=100)
    abreviatura = models.CharField(max_length=4)
    descripcion = models.CharField(max_length=800)
    def __str__(self):
            return self.nombre
    class Meta:
        managed = False
        db_table = 'campus'



class Usuario(models.Model):
    id_cam = models.ForeignKey(Campus, models.DO_NOTHING, db_column='id_cam')
    idusuario = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=35)
    rut = models.IntegerField()
    password = models.CharField(max_length=35)

    def __str__(self):

            return self.nombre
    class Meta:
        managed = False
        db_table = 'usuario'


class Resp(models.Model):
    idinventario_resp = models.PositiveIntegerField(primary_key=True)
    total_items = models.IntegerField()
    total_items_inventariados = models.IntegerField()
    total_items_en_prestamos_permanente = models.IntegerField()
    total_items_en_morosos_alumnos = models.IntegerField()
    total_items_morosos_academicos = models.IntegerField()
    total_items_morosos_funcionarios = models.IntegerField()
    total_items_morosos_postgrado = models.IntegerField()
    total_items_morosos_pib = models.IntegerField()
    total_items_extraviados = models.IntegerField()
    total_items_perdidos = models.IntegerField()
    total_items_inutilizados = models.IntegerField()
    total_items_deteriorados_para_empastar = models.IntegerField()
    total_items_transito = models.IntegerField()
    total_items_problemas_de_catalogacion = models.IntegerField()
    total_items_faltantes = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'resp'


class Issue(models.Model):
    idinventario_issue = models.PositiveIntegerField(primary_key=True)
    total_items = models.IntegerField()
    total_items_inventariados = models.IntegerField()
    total_items_en_prestamos_permanente = models.IntegerField()
    total_items_en_morosos_alumnos = models.IntegerField()
    total_items_morosos_academicos = models.IntegerField()
    total_items_morosos_funcionarios = models.IntegerField()
    total_items_morosos_postgrado = models.IntegerField()
    total_items_morosos_pib = models.IntegerField()
    total_items_extraviados = models.IntegerField()
    total_items_perdidos = models.IntegerField()
    total_items_inutilizados = models.IntegerField()
    total_items_deteriorados_para_empastar = models.IntegerField()
    total_items_transito = models.IntegerField()
    total_items_problemas_de_catalogacion = models.IntegerField()
    total_items_faltantes = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'issue'


class Libros(models.Model):
    idinventario_libros = models.PositiveIntegerField(primary_key=True)
    total_items = models.IntegerField()
    total_items_inventariados = models.IntegerField()
    total_items_en_prestamos_permanente = models.IntegerField()
    total_items_en_morosos_alumnos = models.IntegerField()
    total_items_morosos_academicos = models.IntegerField()
    total_items_morosos_funcionarios = models.IntegerField()
    total_items_morosos_postgrado = models.IntegerField()
    total_items_morosos_pib = models.IntegerField()
    total_items_extraviados = models.IntegerField()
    total_items_perdidos = models.IntegerField()
    total_items_inutilizados = models.IntegerField()
    total_items_deteriorados_para_empastar = models.IntegerField()
    total_items_transito = models.IntegerField()
    total_items_problemas_de_catalogacion = models.IntegerField()
    total_items_faltantes = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'libros'


class Cd(models.Model):
    idinventario_cd = models.PositiveIntegerField(primary_key=True)
    total_items = models.IntegerField()
    total_items_inventariados = models.IntegerField()
    total_items_en_prestamos_permanente = models.IntegerField()
    total_items_en_morosos_alumnos = models.IntegerField()
    total_items_morosos_academicos = models.IntegerField()
    total_items_morosos_funcionarios = models.IntegerField()
    total_items_morosos_postgrado = models.IntegerField()
    total_items_morosos_pib = models.IntegerField()
    total_items_extraviados = models.IntegerField()
    total_items_perdidos = models.IntegerField()
    total_items_inutilizados = models.IntegerField()
    total_items_deteriorados_para_empastar = models.IntegerField()
    total_items_transito = models.IntegerField()
    total_items_problemas_de_catalogacion = models.IntegerField()
    total_items_faltantes = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'cd'


class Inventario(models.Model):
    idinventario = models.AutoField(primary_key=True)
    idinventario_libros = models.ForeignKey('Libros', models.DO_NOTHING, db_column='idinventario_libros')
    idinventario_issue = models.ForeignKey('Issue', models.DO_NOTHING, db_column='idinventario_issue')
    idinventario_cd = models.ForeignKey(Cd, models.DO_NOTHING, db_column='idinventario_cd')
    idinventario_resp = models.ForeignKey('Resp', models.DO_NOTHING, db_column='idinventario_resp')
    nombre_inventario = models.CharField(max_length=50)
    f_inicio = models.DateTimeField()
    f_termino = models.DateTimeField()
    f_informe = models.DateTimeField()





    class Meta:
        managed = False
        db_table = 'inventario'


class Registra(models.Model):
    idregistro = models.AutoField(primary_key=True)
    idusuario = models.ForeignKey('Usuario', models.DO_NOTHING, db_column='idusuario')
    idinventario = models.ForeignKey(Inventario, models.DO_NOTHING, db_column='idinventario')
    fecha_registro = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'registra'


class HistorialCd(models.Model):
    id_historial_c =  models.AutoField(primary_key=True)
    idinventario_cd = models.ForeignKey(Cd, models.DO_NOTHING, db_column='idinventario_cd')
    total_items = models.PositiveIntegerField()
    total_items_inventariados = models.PositiveIntegerField()
    total_items_en_prestamos_permanente = models.PositiveIntegerField()
    total_items_en_morosos_alumnos = models.PositiveIntegerField()
    total_items_morosos_academicos = models.PositiveIntegerField()
    total_items_morosos_funcionarios = models.PositiveIntegerField()
    total_items_morosos_postgrado = models.PositiveIntegerField()
    total_items_morosos_pib = models.PositiveIntegerField()
    total_items_extraviados = models.PositiveIntegerField()
    total_items_perdidos = models.PositiveIntegerField()
    total_items_inutilizados = models.PositiveIntegerField()
    total_items_deteriorados_para_empastar = models.PositiveIntegerField()
    total_items_transito = models.PositiveIntegerField()
    total_items_problemas_de_catalogacion = models.PositiveIntegerField()
    total_items_faltantes = models.PositiveIntegerField()

    class Meta:
        managed = False
        db_table = 'historial_cd'


class HistorialIssue(models.Model):
    id_historial_i =  models.AutoField(primary_key=True)
    idinventario_issue = models.ForeignKey('Issue', models.DO_NOTHING, db_column='idinventario_issue')
    total_items = models.IntegerField()
    total_items_inventariados = models.IntegerField()
    total_items_en_prestamos_permanente = models.IntegerField()
    total_items_en_morosos_alumnos = models.IntegerField()
    total_items_morosos_academicos = models.IntegerField()
    total_items_morosos_funcionarios = models.IntegerField()
    total_items_morosos_postgrado = models.IntegerField()
    total_items_morosos_pib = models.IntegerField()
    total_items_extraviados = models.IntegerField()
    total_items_perdidos = models.IntegerField()
    total_items_inutilizados = models.IntegerField()
    total_items_deteriorados_para_empastar = models.IntegerField()
    total_items_transito = models.IntegerField()
    total_items_problemas_de_catalogacion = models.IntegerField()
    total_items_faltantes = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'historial_issue'


class HistorialLibros(models.Model):
    id_historial_l = models.AutoField(db_column='id_historial_L', primary_key=True)  # Field name made lowercase.
    idinventario_libros = models.ForeignKey('Libros', models.DO_NOTHING, db_column='idinventario_libros')
    total_items = models.IntegerField()
    total_items_inventariados = models.IntegerField()
    total_items_en_prestamos_permanente = models.IntegerField()
    total_items_en_morosos_alumnos = models.IntegerField()
    total_items_morosos_academicos = models.IntegerField()
    total_items_morosos_funcionarios = models.IntegerField()
    total_items_morosos_postgrado = models.IntegerField()
    total_items_morosos_pib = models.IntegerField()
    total_items_extraviados = models.IntegerField()
    total_items_perdidos = models.IntegerField()
    total_items_inutilizados = models.IntegerField()
    total_items_deteriorados_para_empastar = models.IntegerField()
    total_items_transito = models.IntegerField()
    total_items_problemas_de_catalogacion = models.IntegerField()
    total_items_faltantes = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'historial_libros'


class HistorialResp(models.Model):
    id_historial_r = models.AutoField(primary_key=True)
    idinventario_resp = models.ForeignKey('Resp', models.DO_NOTHING, db_column='idinventario_resp')
    total_items = models.PositiveIntegerField()
    total_items_inventariados = models.PositiveIntegerField()
    total_items_en_prestamos_permanente = models.PositiveIntegerField()
    total_items_en_morosos_alumnos = models.PositiveIntegerField()
    total_items_morosos_academicos = models.PositiveIntegerField()
    total_items_morosos_funcionarios = models.PositiveIntegerField()
    total_items_morosos_postgrado = models.PositiveIntegerField()
    total_items_morosos_pib = models.PositiveIntegerField()
    total_items_extraviados = models.PositiveIntegerField()
    total_items_perdidos = models.PositiveIntegerField()
    total_items_inutilizados = models.PositiveIntegerField()
    total_items_deteriorados_para_empastar = models.PositiveIntegerField()
    total_items_transito = models.PositiveIntegerField()
    total_items_problemas_de_catalogacion = models.PositiveIntegerField()
    total_items_faltantes = models.PositiveIntegerField()

    class Meta:
        managed = False
        db_table = 'historial_resp'


class Edita(models.Model):
    id = models.AutoField(primary_key=True)
    idusuario = models.OneToOneField(Usuario,on_delete=models.CASCADE)
    id_historial_c = models.ForeignKey(HistorialCd, models.DO_NOTHING, db_column='id_historial_c')
    fecha_registro = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'edita'


class Modifica(models.Model):
    id = models.AutoField(primary_key=True)
    idusuario = models.OneToOneField(Usuario,on_delete=models.CASCADE)
    id_historial_i = models.ForeignKey(HistorialIssue, models.DO_NOTHING, db_column='id_historial_i')
    fecha_registro = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'modifica'


class Cambia(models.Model):
    id = models.AutoField(primary_key=True)
    idusuario = models.OneToOneField(Usuario,on_delete=models.CASCADE)
    id_historial_l = models.ForeignKey(HistorialLibros, models.DO_NOTHING, db_column='id_historial_l')
    fecha_registro = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'cambia'


class Actualiza(models.Model):
    id = models.AutoField(primary_key=True)
    idusuario = models.OneToOneField(Usuario,on_delete=models.CASCADE)
    id_historial_r = models.ForeignKey('HistorialResp', models.DO_NOTHING, db_column='id_historial_r')
    fecha_registro = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'actualiza'
