from django.db import models
from django.contrib.auth.models import User
from django.utils import timezone

class Pabellon(models.Model):
    nombre = models.CharField(max_length=100)
    descripcion = models.TextField(blank=True, null=True)
    capacidad = models.IntegerField()
    ubicacion = models.CharField(max_length=200)
    fecha_construccion = models.DateField(null=True, blank=True)
    estado = models.CharField(max_length=50, choices=[
        ('activo', 'Activo'),
        ('mantenimiento', 'En Mantenimiento'),
        ('inactivo', 'Inactivo')
    ], default='activo')

    def __str__(self):
        return self.nombre

    class Meta:
        verbose_name = "Pabellón"
        verbose_name_plural = "Pabellones"

from django.db import models

class Habitacion(models.Model): 
    TIPO_CHOICES = [
        ('I', 'Individual'),
        ('D', 'Doble'),
        ('S', 'Suite'),
        ('F', 'Familiar'),
    ]

    numero = models.IntegerField(unique=True)
    tipo = models.CharField(max_length=1, choices=TIPO_CHOICES)
    capacidad = models.IntegerField()
    pabellon = models.ForeignKey(Pabellon, on_delete=models.CASCADE)
    precio_noche = models.DecimalField(max_digits=10, decimal_places=2)
    descripcion = models.TextField()
    estado = models.CharField(max_length=50)
    imagen = models.ImageField(upload_to='imagenes/habitaciones/', null=True, blank=True)

    def __str__(self):
        return f'Habitación {self.numero} - {self.get_tipo_display()}'
    
class Reserva(models.Model):
    ESTADO_CHOICES = [
        ('pendiente', 'Pendiente'),
        ('pagada', 'Pagada'),
        ('cancelada', 'Cancelada'),
        ('completada', 'Completada'),
    ]

    usuario = models.ForeignKey(User, on_delete=models.CASCADE)
    habitacion = models.ForeignKey(Habitacion, on_delete=models.CASCADE)
    fecha_inicio = models.DateField()
    fecha_fin = models.DateField()
    fecha_reserva = models.DateTimeField(auto_now_add=True)
    estado = models.CharField(max_length=20, choices=ESTADO_CHOICES, default='pendiente')
    numero_huespedes = models.IntegerField(default=1)
    precio_total = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    comentarios = models.TextField(blank=True, null=True)

    def save(self, *args, **kwargs):
        if self.fecha_inicio and self.fecha_fin:
            dias = (self.fecha_fin - self.fecha_inicio).days
            if dias < 0:
                raise ValueError("La fecha de fin debe ser posterior a la fecha de inicio.")
            self.precio_total = self.habitacion.precio_noche * dias
        else:
            raise ValueError("Las fechas de inicio y fin no pueden ser nulas.")
        super().save(*args, **kwargs)

    def __str__(self):
        return f"Reserva de {self.usuario.username} - Habitación {self.habitacion.numero}"

    class Meta:
        verbose_name = "Reserva"
        verbose_name_plural = "Reservas"

class Comentario(models.Model):
    usuario = models.ForeignKey(User, on_delete=models.CASCADE)
    habitacion = models.ForeignKey(Habitacion, on_delete=models.CASCADE, related_name='comentarios')
    texto = models.TextField()
    calificacion = models.IntegerField(choices=[(i, i) for i in range(1, 6)])  # 1-5 estrellas
    fecha = models.DateTimeField(auto_now_add=True)
    
    def __str__(self):
        return f"Comentario de {self.usuario.username} sobre {self.habitacion}"

    class Meta:
        verbose_name = "Comentario"
        verbose_name_plural = "Comentarios"

class Perfil(models.Model):
    usuario = models.OneToOneField(User, on_delete=models.CASCADE)
    telefono = models.CharField(max_length=15, blank=True, null=True)
    direccion = models.TextField(blank=True, null=True)
    fecha_nacimiento = models.DateField(null=True, blank=True)
    documento_identidad = models.CharField(max_length=20, blank=True, null=True)
    foto = models.ImageField(upload_to='perfiles/', null=True, blank=True)

    def __str__(self):
        return f"Perfil de {self.usuario.username}"

    class Meta:
        verbose_name = "Perfil"
        verbose_name_plural = "Perfiles"