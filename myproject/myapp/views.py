from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth import login, logout, authenticate
from django.contrib.auth.decorators import login_required
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm, UserChangeForm
from .models import Habitacion, Reserva, Pabellon
from django.contrib import messages
from django.utils import timezone
from django.views.generic import ListView, CreateView
from django.urls import reverse_lazy
from .forms import ReservaForm
from django.contrib.auth.mixins import LoginRequiredMixin


def inicio(request):
    return render(request, 'myapp/index.html')

class HabitacionesView(ListView):
    model = Habitacion
    template_name = 'myapp/habitaciones.html'
    context_object_name = 'habitaciones'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['tipos_habitaciones'] = Habitacion.TIPO_CHOICES
        tipo_id = self.request.GET.get('tipo')
        if tipo_id:
            context['habitaciones'] = context['habitaciones'].filter(tipo=tipo_id)
        return context
    
from django.views.generic import DetailView

class DetalleHabitacionView(DetailView):
    model = Habitacion
    template_name = 'myapp/pagina_proceso.html'
    context_object_name = 'habitacion'


class ReservarHabitacionView(LoginRequiredMixin, CreateView):
    model = Reserva
    form_class = ReservaForm
    template_name = 'myapp/reservar_habitacion.html'
    success_url = reverse_lazy('mis_reservas')

    def form_valid(self, form):
        habitacion = get_object_or_404(Habitacion, id=self.kwargs['habitacion_id'])
        fecha_inicio = form.cleaned_data.get('fecha_inicio')
        fecha_fin = form.cleaned_data.get('fecha_fin')

        # Verificar si la habitación ya está reservada en las fechas seleccionadas
        reservas_conflictivas = Reserva.objects.filter(
            habitacion=habitacion,
            fecha_inicio__lt=fecha_fin,
            fecha_fin__gt=fecha_inicio
        )

        if reservas_conflictivas.exists():
            form.add_error(None, 'La habitación ya está reservada en estas fechas.')
            return self.form_invalid(form)

        reserva = form.save(commit=False)
        reserva.habitacion = habitacion
        reserva.usuario = self.request.user
        reserva.estado = 'pendiente'
        reserva.save()

        messages.success(self.request, 'Reserva creada con éxito.')
        return super().form_valid(form)
    
from django.db.models import Sum
from django.views.generic import ListView
from .models import Reserva
from django.contrib.auth.mixins import LoginRequiredMixin

class MisReservasView(LoginRequiredMixin, ListView):
    model = Reserva
    template_name = 'myapp/mis_reservas.html'
    context_object_name = 'reservas'

    def get_queryset(self):
        return Reserva.objects.filter(usuario=self.request.user)
    
from django.views.generic import DeleteView
from django.urls import reverse_lazy
from django.contrib.auth.mixins import LoginRequiredMixin

class CancelarReservaView(LoginRequiredMixin, DeleteView):
    model = Reserva
    template_name = 'myapp/cancelar_reserva.html'
    success_url = reverse_lazy('mis_reservas')

    def get_queryset(self):
        return Reserva.objects.filter(usuario=self.request.user)

from django.views.generic import TemplateView
from django.contrib.auth.mixins import LoginRequiredMixin

class ResumenReservasView(LoginRequiredMixin, TemplateView):
    template_name = 'myapp/pagina_proceso.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        reservas = Reserva.objects.filter(usuario=self.request.user)
        context['reservas'] = reservas
        context['total_pago'] = reservas.filter(estado='pendiente').aggregate(Sum('precio_total'))['precio_total__sum'] or 0
        return context
    
from django.views import View
from django.shortcuts import render, redirect
from django.contrib import messages
from .models import Reserva
from .forms import PagoForm

class SimularPagoView(View):
    template_name = 'myapp/simular_pago.html'
    form_class = PagoForm

    def get(self, request, *args, **kwargs):
        form = self.form_class()
        return render(request, self.template_name, {'form': form})

    def post(self, request, *args, **kwargs):
        form = self.form_class(request.POST)

        if form.is_valid():
            total_pago = form.cleaned_data['total_pago']
            reserva_id = form.cleaned_data['reserva_id']

            try:
                reserva = Reserva.objects.get(id=reserva_id)
                reserva.precio_total = total_pago  # Almacena el precio total
                reserva.estado = 'pagada'  # Cambia el estado a 'pagada'
                reserva.save()  # Guarda los cambios
                return redirect('pago_exitoso')
            except Reserva.DoesNotExist:
                messages.error(request, 'Reserva no encontrada.')
                return redirect('pago_error')

        return render(request, self.template_name, {'form': form})
    
    
class PagoExitosoView(View):
    def get(self, request, *args, **kwargs):
        return render(request, 'myapp/pago_exitoso.html')

class PagoErrorView(View):
    def get(self, request, *args, **kwargs):
        return render(request, 'myapp/pago_error.html')
    
from django.views.generic import CreateView
from django.urls import reverse_lazy
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import login

class RegistroView(CreateView):
    form_class = UserCreationForm
    template_name = 'cuenta/registro.html'
    success_url = reverse_lazy('inicio')

    def form_valid(self, form):
        user = form.save()
        login(self.request, user)
        return super().form_valid(form)
    
from django.contrib.auth.views import LoginView

class IniciarSesionView(LoginView):
    template_name = 'cuenta/login.html'
    success_url = reverse_lazy('inicio')

from django.views import View

class CerrarSesionView(View):
    def get(self, request):
        logout(request)
        return redirect('inicio')




def pabellones(request):
    pabellones = Pabellon.objects.all()
    return render(request, 'myapp/pabellones.html', {'pabellones': pabellones})

def detalle_pabellon(request, pabellon_id):
    pabellon = get_object_or_404(Pabellon, id=pabellon_id)
    habitaciones = Habitacion.objects.filter(pabellon=pabellon)
    return render(request, 'myapp/detalle_pabellon.html', {'pabellon': pabellon, 'habitaciones': habitaciones})

def buscar(request):
    query = request.GET.get('q')
    resultados = Habitacion.objects.filter(nombre__icontains=query) if query else Habitacion.objects.none()
    return render(request, 'myapp/resultados_busqueda.html', {'resultados': resultados, 'query': query})

@login_required
def perfil(request):
    return render(request, 'cuenta/perfil.html')

@login_required
def editar_perfil(request):
    user = request.user  # Obtiene el usuario actual
    if request.method == 'POST':
        form = UserChangeForm(request.POST, instance=user)
        if form.is_valid():
            form.save()  # Guarda los cambios en el perfil
            messages.success(request, 'Perfil actualizado exitosamente.')
            return redirect('perfil')  # Redirige al perfil después de la actualización
    else:
        form = UserChangeForm(instance=user)  # Carga el formulario con los datos actuales del usuario
    return render(request, 'cuenta/editar_perfil.html', {'form': form})

def contacto(request):
    if request.method == 'POST':
        # Aquí iría la lógica para procesar el formulario de contacto
        messages.success(request, 'Mensaje enviado con éxito.')
        return redirect('inicio')
    return render(request, 'myapp/contacto.html')