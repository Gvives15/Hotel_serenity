# Generated by Django 5.0.7 on 2024-11-14 01:32

import django.db.models.deletion
from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Habitacion',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('numero', models.IntegerField()),
                ('tipo', models.CharField(max_length=50)),
                ('capacidad', models.IntegerField()),
                ('precio_noche', models.DecimalField(decimal_places=2, max_digits=10)),
                ('descripcion', models.TextField()),
                ('estado', models.CharField(max_length=20)),
                ('pabellon', models.CharField(max_length=50)),
                ('imagen', models.ImageField(blank=True, null=True, upload_to='imagenes/habitaciones/')),
            ],
        ),
        migrations.CreateModel(
            name='Pabellon',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=100)),
                ('descripcion', models.TextField(blank=True, null=True)),
                ('capacidad', models.IntegerField()),
                ('ubicacion', models.CharField(max_length=200)),
                ('fecha_construccion', models.DateField(blank=True, null=True)),
                ('estado', models.CharField(choices=[('activo', 'Activo'), ('mantenimiento', 'En Mantenimiento'), ('inactivo', 'Inactivo')], default='activo', max_length=50)),
            ],
            options={
                'verbose_name': 'Pabellón',
                'verbose_name_plural': 'Pabellones',
            },
        ),
        migrations.CreateModel(
            name='Comentario',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('texto', models.TextField()),
                ('calificacion', models.IntegerField(choices=[(1, 1), (2, 2), (3, 3), (4, 4), (5, 5)])),
                ('fecha', models.DateTimeField(auto_now_add=True)),
                ('usuario', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
                ('habitacion', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='comentarios', to='myapp.habitacion')),
            ],
            options={
                'verbose_name': 'Comentario',
                'verbose_name_plural': 'Comentarios',
            },
        ),
        migrations.CreateModel(
            name='Perfil',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('telefono', models.CharField(blank=True, max_length=15, null=True)),
                ('direccion', models.TextField(blank=True, null=True)),
                ('fecha_nacimiento', models.DateField(blank=True, null=True)),
                ('documento_identidad', models.CharField(blank=True, max_length=20, null=True)),
                ('foto', models.ImageField(blank=True, null=True, upload_to='perfiles/')),
                ('usuario', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'Perfil',
                'verbose_name_plural': 'Perfiles',
            },
        ),
        migrations.CreateModel(
            name='Reserva',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fecha_inicio', models.DateField()),
                ('fecha_fin', models.DateField()),
                ('fecha_reserva', models.DateTimeField(auto_now_add=True)),
                ('estado', models.CharField(choices=[('pendiente', 'Pendiente'), ('pagada', 'Pagada'), ('cancelada', 'Cancelada'), ('completada', 'Completada')], default='pendiente', max_length=20)),
                ('numero_huespedes', models.IntegerField(default=1)),
                ('precio_total', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True)),
                ('comentarios', models.TextField(blank=True, null=True)),
                ('habitacion', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='myapp.habitacion')),
                ('usuario', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'Reserva',
                'verbose_name_plural': 'Reservas',
            },
        ),
    ]
