# Generated by Django 2.2.2 on 2019-06-22 22:35

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='AuthGroup',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=150, unique=True)),
            ],
            options={
                'db_table': 'auth_group',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthGroupPermissions',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
            options={
                'db_table': 'auth_group_permissions',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthPermission',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('codename', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'auth_permission',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthUser',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('password', models.CharField(max_length=128)),
                ('last_login', models.DateTimeField(blank=True, null=True)),
                ('is_superuser', models.IntegerField()),
                ('username', models.CharField(max_length=150, unique=True)),
                ('first_name', models.CharField(max_length=30)),
                ('last_name', models.CharField(max_length=150)),
                ('email', models.CharField(max_length=254)),
                ('is_staff', models.IntegerField()),
                ('is_active', models.IntegerField()),
                ('date_joined', models.DateTimeField()),
            ],
            options={
                'db_table': 'auth_user',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthUserGroups',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
            options={
                'db_table': 'auth_user_groups',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthUserUserPermissions',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
            options={
                'db_table': 'auth_user_user_permissions',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Campus',
            fields=[
                ('id_cam', models.AutoField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=100, unique=True)),
                ('direccion', models.CharField(max_length=100)),
                ('cpostal', models.CharField(max_length=20)),
                ('fono', models.CharField(max_length=20)),
                ('email', models.CharField(max_length=100)),
                ('ubicacion', models.CharField(max_length=100)),
                ('abreviatura', models.CharField(max_length=4)),
                ('descripcion', models.CharField(max_length=800)),
            ],
            options={
                'db_table': 'campus',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Cd',
            fields=[
                ('idinventario_cd', models.PositiveIntegerField(primary_key=True, serialize=False)),
                ('total_items', models.IntegerField()),
                ('total_items_inventariados', models.IntegerField()),
                ('total_items_en_prestamos_permanente', models.IntegerField()),
                ('total_items_en_morosos_alumnos', models.IntegerField()),
                ('total_items_morosos_academicos', models.IntegerField()),
                ('total_items_morosos_funcionarios', models.IntegerField()),
                ('total_items_morosos_postgrado', models.IntegerField()),
                ('total_items_morosos_pib', models.IntegerField()),
                ('total_items_extraviados', models.IntegerField()),
                ('total_items_perdidos', models.IntegerField()),
                ('total_items_inutilizados', models.IntegerField()),
                ('total_items_deteriorados_para_empastar', models.IntegerField()),
                ('total_items_transito', models.IntegerField()),
                ('total_items_problemas_de_catalogacion', models.IntegerField()),
                ('total_items_faltantes', models.IntegerField()),
            ],
            options={
                'db_table': 'cd',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DjangoAdminLog',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('action_time', models.DateTimeField()),
                ('object_id', models.TextField(blank=True, null=True)),
                ('object_repr', models.CharField(max_length=200)),
                ('action_flag', models.PositiveSmallIntegerField()),
                ('change_message', models.TextField()),
            ],
            options={
                'db_table': 'django_admin_log',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DjangoContentType',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('app_label', models.CharField(max_length=100)),
                ('model', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'django_content_type',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DjangoMigrations',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('app', models.CharField(max_length=255)),
                ('name', models.CharField(max_length=255)),
                ('applied', models.DateTimeField()),
            ],
            options={
                'db_table': 'django_migrations',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DjangoSession',
            fields=[
                ('session_key', models.CharField(max_length=40, primary_key=True, serialize=False)),
                ('session_data', models.TextField()),
                ('expire_date', models.DateTimeField()),
            ],
            options={
                'db_table': 'django_session',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='HistorialCd',
            fields=[
                ('id_historial_c', models.PositiveIntegerField(primary_key=True, serialize=False)),
                ('total_items', models.PositiveIntegerField()),
                ('total_items_inventariados', models.PositiveIntegerField()),
                ('total_items_en_prestamos_permanente', models.PositiveIntegerField()),
                ('total_items_en_morosos_alumnos', models.PositiveIntegerField()),
                ('total_items_morosos_academicos', models.PositiveIntegerField()),
                ('total_items_morosos_funcionarios', models.PositiveIntegerField()),
                ('total_items_morosos_postgrado', models.PositiveIntegerField()),
                ('total_items_morosos_pib', models.PositiveIntegerField()),
                ('total_items_extraviados', models.PositiveIntegerField()),
                ('total_items_perdidos', models.PositiveIntegerField()),
                ('total_items_inutilizados', models.PositiveIntegerField()),
                ('total_items_deteriorados_para_empastar', models.PositiveIntegerField()),
                ('total_items_transito', models.PositiveIntegerField()),
                ('total_items_problemas_de_catalogacion', models.PositiveIntegerField()),
                ('total_items_faltantes', models.PositiveIntegerField()),
            ],
            options={
                'db_table': 'historial_cd',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='HistorialIssue',
            fields=[
                ('id_historial_i', models.PositiveIntegerField(primary_key=True, serialize=False)),
                ('total_items', models.IntegerField()),
                ('total_items_inventariados', models.IntegerField()),
                ('total_items_en_prestamos_permanente', models.IntegerField()),
                ('total_items_en_morosos_alumnos', models.IntegerField()),
                ('total_items_morosos_academicos', models.IntegerField()),
                ('total_items_morosos_funcionarios', models.IntegerField()),
                ('total_items_morosos_postgrado', models.IntegerField()),
                ('total_items_morosos_pib', models.IntegerField()),
                ('total_items_extraviados', models.IntegerField()),
                ('total_items_perdidos', models.IntegerField()),
                ('total_items_inutilizados', models.IntegerField()),
                ('total_items_deteriorados_para_empastar', models.IntegerField()),
                ('total_items_transito', models.IntegerField()),
                ('total_items_problemas_de_catalogacion', models.IntegerField()),
                ('total_items_faltantes', models.IntegerField()),
            ],
            options={
                'db_table': 'historial_issue',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='HistorialLibros',
            fields=[
                ('id_historial_l', models.PositiveIntegerField(db_column='id_historial_L', primary_key=True, serialize=False)),
                ('total_items', models.IntegerField()),
                ('total_items_inventariados', models.IntegerField()),
                ('total_items_en_prestamos_permanente', models.IntegerField()),
                ('total_items_en_morosos_alumnos', models.IntegerField()),
                ('total_items_morosos_academicos', models.IntegerField()),
                ('total_items_morosos_funcionarios', models.IntegerField()),
                ('total_items_morosos_postgrado', models.IntegerField()),
                ('total_items_morosos_pib', models.IntegerField()),
                ('total_items_extraviados', models.IntegerField()),
                ('total_items_perdidos', models.IntegerField()),
                ('total_items_inutilizados', models.IntegerField()),
                ('total_items_deteriorados_para_empastar', models.IntegerField()),
                ('total_items_transito', models.IntegerField()),
                ('total_items_problemas_de_catalogacion', models.IntegerField()),
                ('total_items_faltantes', models.IntegerField()),
            ],
            options={
                'db_table': 'historial_libros',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='HistorialResp',
            fields=[
                ('id_historial_r', models.PositiveIntegerField(primary_key=True, serialize=False)),
                ('total_items', models.PositiveIntegerField()),
                ('total_items_inventariados', models.PositiveIntegerField()),
                ('total_items_en_prestamos_permanente', models.PositiveIntegerField()),
                ('total_items_en_morosos_alumnos', models.PositiveIntegerField()),
                ('total_items_morosos_academicos', models.PositiveIntegerField()),
                ('total_items_morosos_funcionarios', models.PositiveIntegerField()),
                ('total_items_morosos_postgrado', models.PositiveIntegerField()),
                ('total_items_morosos_pib', models.PositiveIntegerField()),
                ('total_items_extraviados', models.PositiveIntegerField()),
                ('total_items_perdidos', models.PositiveIntegerField()),
                ('total_items_inutilizados', models.PositiveIntegerField()),
                ('total_items_deteriorados_para_empastar', models.PositiveIntegerField()),
                ('total_items_transito', models.PositiveIntegerField()),
                ('total_items_problemas_de_catalogacion', models.PositiveIntegerField()),
                ('total_items_faltantes', models.PositiveIntegerField()),
            ],
            options={
                'db_table': 'historial_resp',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Inventario',
            fields=[
                ('idinventario', models.AutoField(primary_key=True, serialize=False)),
                ('f_inicio', models.DateTimeField()),
                ('f_termino', models.DateTimeField()),
                ('f_informe', models.DateTimeField()),
                ('f_elaboracion', models.DateTimeField()),
                ('f_aprobacion', models.DateTimeField()),
                ('f_revision', models.DateTimeField()),
            ],
            options={
                'db_table': 'inventario',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Issue',
            fields=[
                ('idinventario_issue', models.PositiveIntegerField(primary_key=True, serialize=False)),
                ('total_items', models.IntegerField()),
                ('total_items_inventariados', models.IntegerField()),
                ('total_items_en_prestamos_permanente', models.IntegerField()),
                ('total_items_en_morosos_alumnos', models.IntegerField()),
                ('total_items_morosos_academicos', models.IntegerField()),
                ('total_items_morosos_funcionarios', models.IntegerField()),
                ('total_items_morosos_postgrado', models.IntegerField()),
                ('total_items_morosos_pib', models.IntegerField()),
                ('total_items_extraviados', models.IntegerField()),
                ('total_items_perdidos', models.IntegerField()),
                ('total_items_inutilizados', models.IntegerField()),
                ('total_items_deteriorados_para_empastar', models.IntegerField()),
                ('total_items_transito', models.IntegerField()),
                ('total_items_problemas_de_catalogacion', models.IntegerField()),
                ('total_items_faltantes', models.IntegerField()),
            ],
            options={
                'db_table': 'issue',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Libros',
            fields=[
                ('idinventario_libros', models.PositiveIntegerField(primary_key=True, serialize=False)),
                ('total_items', models.IntegerField()),
                ('total_items_inventariados', models.IntegerField()),
                ('total_items_en_prestamos_permanente', models.IntegerField()),
                ('total_items_en_morosos_alumnos', models.IntegerField()),
                ('total_items_morosos_academicos', models.IntegerField()),
                ('total_items_morosos_funcionarios', models.IntegerField()),
                ('total_items_morosos_postgrado', models.IntegerField()),
                ('total_items_morosos_pib', models.IntegerField()),
                ('total_items_extraviados', models.IntegerField()),
                ('total_items_perdidos', models.IntegerField()),
                ('total_items_inutilizados', models.IntegerField()),
                ('total_items_deteriorados_para_empastar', models.IntegerField()),
                ('total_items_transito', models.IntegerField()),
                ('total_items_problemas_de_catalogacion', models.IntegerField()),
                ('total_items_faltantes', models.IntegerField()),
            ],
            options={
                'db_table': 'libros',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Registra',
            fields=[
                ('idregistro', models.PositiveIntegerField(primary_key=True, serialize=False)),
                ('fecha_registro', models.DateTimeField()),
            ],
            options={
                'db_table': 'registra',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Resp',
            fields=[
                ('idinventario_resp', models.PositiveIntegerField(primary_key=True, serialize=False)),
                ('total_items', models.IntegerField()),
                ('total_items_inventariados', models.IntegerField()),
                ('total_items_en_prestamos_permanente', models.IntegerField()),
                ('total_items_en_morosos_alumnos', models.IntegerField()),
                ('total_items_morosos_academicos', models.IntegerField()),
                ('total_items_morosos_funcionarios', models.IntegerField()),
                ('total_items_morosos_postgrado', models.IntegerField()),
                ('total_items_morosos_pib', models.IntegerField()),
                ('total_items_extraviados', models.IntegerField()),
                ('total_items_perdidos', models.IntegerField()),
                ('total_items_inutilizados', models.IntegerField()),
                ('total_items_deteriorados_para_empastar', models.IntegerField()),
                ('total_items_transito', models.IntegerField()),
                ('total_items_problemas_de_catalogacion', models.IntegerField()),
                ('total_items_faltantes', models.IntegerField()),
            ],
            options={
                'db_table': 'resp',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Usuario',
            fields=[
                ('idusuario', models.AutoField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=35)),
                ('rut', models.IntegerField()),
                ('password', models.CharField(max_length=35)),
            ],
            options={
                'db_table': 'usuario',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Actualiza',
            fields=[
                ('idusuario', models.ForeignKey(db_column='idusuario', on_delete=django.db.models.deletion.DO_NOTHING, primary_key=True, serialize=False, to='inventario.Usuario')),
                ('fecha_registro', models.DateTimeField()),
            ],
            options={
                'db_table': 'actualiza',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Cambia',
            fields=[
                ('idusuario', models.ForeignKey(db_column='idusuario', on_delete=django.db.models.deletion.DO_NOTHING, primary_key=True, serialize=False, to='inventario.Usuario')),
                ('fecha_registro', models.DateTimeField()),
            ],
            options={
                'db_table': 'cambia',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Edita',
            fields=[
                ('idusuario', models.ForeignKey(db_column='idusuario', on_delete=django.db.models.deletion.DO_NOTHING, primary_key=True, serialize=False, to='inventario.Usuario')),
                ('fecha_registro', models.DateTimeField()),
            ],
            options={
                'db_table': 'edita',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Modifica',
            fields=[
                ('idusuario', models.ForeignKey(db_column='idusuario', on_delete=django.db.models.deletion.DO_NOTHING, primary_key=True, serialize=False, to='inventario.Usuario')),
                ('fecha_registro', models.DateTimeField()),
            ],
            options={
                'db_table': 'modifica',
                'managed': False,
            },
        ),
    ]
