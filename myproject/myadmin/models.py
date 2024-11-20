# myadmin/models.py
from django.db import models
from django.contrib.auth.models import User
from myapp.models import Habitacion, Reserva, Pabellon

class Pago(models.Model):
    monto = models.DecimalField(max_digits=10, decimal_places=2)
    metodo_pago = models.CharField(max_length=50)
    fecha = models.DateTimeField(auto_now_add=True)
    estado = models.CharField(max_length=20, default='pendiente')
    reserva = models.ForeignKey(Reserva, on_delete=models.CASCADE)

    def __str__(self):
        return f"Pago de {self.monto} para la reserva {self.reserva.id}"