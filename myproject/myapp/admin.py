from django.contrib import admin
from .models import Pabellon, Habitacion, Reserva, Comentario, Perfil

admin.site.register(Pabellon)
admin.site.register(Habitacion)
admin.site.register(Reserva)
admin.site.register(Comentario)
admin.site.register(Perfil)