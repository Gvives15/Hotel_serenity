from django import forms
from myapp.models import Pabellon, Habitacion, Reserva, Comentario, Perfil

class PabellonForm(forms.ModelForm):
    class Meta:
        model = Pabellon
        fields = ['nombre', 'descripcion', 'capacidad', 'ubicacion', 'fecha_construccion', 'estado']

class HabitacionForm(forms.ModelForm):
    class Meta:
        model = Habitacion
        fields = ['numero', 'tipo', 'capacidad', 'precio_noche', 'descripcion', 'estado', 'pabellon', 'imagen']

class ReservaForm(forms.ModelForm):
    class Meta:
        model = Reserva
        fields = ['usuario', 'habitacion', 'fecha_inicio', 'fecha_fin', 'numero_huespedes', 'comentarios']

class ComentarioForm(forms.ModelForm):
    class Meta:
        model = Comentario
        fields = ['usuario', 'habitacion', 'texto', 'calificacion']

class PerfilForm(forms.ModelForm):
    class Meta:
        model = Perfil
        fields = ['telefono', 'direccion', 'fecha_nacimiento', 'documento_identidad', 'foto']