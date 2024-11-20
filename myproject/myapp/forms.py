from django import forms
from .models import Reserva, Habitacion

class BusquedaHabitacionForm(forms.Form):
    fecha_inicio = forms.DateField(widget=forms.DateInput(attrs={'type': 'date'}))
    fecha_fin = forms.DateField(widget=forms.DateInput(attrs={'type': 'date'}))
    cantidad_personas = forms.IntegerField(min_value=1, max_value=10, initial=1, label="Cantidad de Personas")
    cantidad_habitaciones = forms.IntegerField(min_value=1, max_value=10, initial=1, label="Cantidad de Habitaciones")


class ReservaForm(forms.ModelForm):
    class Meta:
        model = Reserva
        fields = ['fecha_inicio', 'fecha_fin', 'numero_huespedes', 'comentarios']

    def clean(self):
        cleaned_data = super().clean()
        fecha_inicio = cleaned_data.get('fecha_inicio')
        fecha_fin = cleaned_data.get('fecha_fin')
        numero_huespedes = cleaned_data.get('numero_huespedes')

        # Validar que fecha_fin sea posterior a fecha_inicio
        if fecha_inicio and fecha_fin:
            if fecha_fin <= fecha_inicio:
                raise forms.ValidationError('La fecha de fin debe ser posterior a la fecha de inicio.')

        # Validar que el número de huéspedes no exceda la capacidad de la habitación
        if numero_huespedes:
            habitacion_id = self.data.get('habitacion_id')  # Asegúrate de que el ID de la habitación se envíe en el formulario
            if habitacion_id:
                try:
                    habitacion = Habitacion.objects.get(id=habitacion_id)
                    if numero_huespedes > habitacion.capacidad:
                        raise forms.ValidationError(f'El número de huéspedes no puede exceder la capacidad de la habitación ({habitacion.capacidad}).')
                except Habitacion.DoesNotExist:
                    raise forms.ValidationError('La habitación seleccionada no existe.')

        return cleaned_data


from django import forms

class PagoForm(forms.Form):
    total_pago = forms.DecimalField(max_digits=10, decimal_places=2)
    reserva_id = forms.IntegerField()

