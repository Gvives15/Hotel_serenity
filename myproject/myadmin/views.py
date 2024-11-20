# myadmin/views.py
from django.shortcuts import render, redirect
from myapp.models import Habitacion, Reserva
from django.shortcuts import render, redirect, get_object_or_404
from myadmin.forms import HabitacionForm, ReservaForm
from django.contrib import messages
from django.contrib.auth import login, logout, authenticate
from django.contrib.auth.decorators import login_required
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm, UserChangeForm


def dashboard(request):
    total_reservas = Reserva.objects.count()
    reservas_activas = Reserva.objects.filter(estado='activa').count()
    reservas_canceladas = Reserva.objects.filter(estado='cancelada').count()
    total_habitaciones = Habitacion.objects.count()

    context = {
        'total_reservas': total_reservas,
        'reservas_activas': reservas_activas,
        'reservas_canceladas': reservas_canceladas,
        'total_habitaciones': total_habitaciones,
    }
    return render(request, 'myadmin/dashboard.html', context)


def listar_reservas(request):
    reservas = Reserva.objects.all()
    return render(request, 'myadmin/listar_reservas.html', {'reservas': reservas})

def crear_reserva(request):
    if request.method == 'POST':
        form = ReservaForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('lista_reservas')
    else:
        form = ReservaForm()
    return render(request, 'myadmin/crear_reserva.html', {'form': form})

def eliminar_reserva(request, reserva_id):
    reserva = get_object_or_404(Reserva, id=reserva_id)
    
    if request.method == 'POST':
        reserva.delete()  # Elimina la reserva
        messages.success(request, 'Reserva eliminada con éxito.')
        return redirect('listar_reservas')  # Redirige a la lista de reservas

    return render(request, 'myadmin/eliminar_reserva.html', {'reserva': reserva})

def editar_reserva(request, reserva_id):
    reserva = Reserva.objects.get(id=reserva_id)
    if request.method == 'POST': 
        form = ReservaForm(request.POST, instance=reserva)
        if form.is_valid():
            form.save()
            return redirect('lista_reservas')
    else:
        form = ReservaForm(instance=reserva)
    return render(request, 'myadmin/editar_reserva.html', {'form': form})


def listar_habitaciones(request):
    habitaciones = Habitacion.objects.all()
    return render(request, 'myadmin/listar_habitaciones.html', {'habitaciones': habitaciones})

def crear_habitacion(request):
    if request.method == 'POST':
        form = HabitacionForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('listar_habitaciones')
    else:
        form = HabitacionForm()
    return render(request, 'myadmin/crear_habitacion.html', {'form': form})

def editar_habitacion(request, pk):
    habitacion = get_object_or_404(Habitacion, pk=pk)
    if request.method == 'POST':
        form = HabitacionForm(request.POST, instance=habitacion)
        if form.is_valid():
            form.save()
            return redirect('listar_habitaciones')
    else:
        form = HabitacionForm(instance=habitacion)
    return render(request, 'myadmin/editar_habitacion.html', {'form': form})

def eliminar_habitacion(request, pk):
    habitacion = get_object_or_404(Habitacion, pk=pk)
    if request.method == 'POST':
        habitacion.delete()
        return redirect('listar_habitaciones')
    return render(request, 'myadmin/eliminar_habitacion.html', {'habitacion': habitacion})


def registro_myadmin(request):
    if request.method == 'POST':
        form = UserCreationForm(request.POST)
        if form.is_valid():
            user = form.save()
            login(request, user)
            return redirect('inicio')
    else:
        form = UserCreationForm()
    return render(request, 'cuenta_myadmin/registro_myadmin.html', {'form': form})

def iniciar_sesion_myadmin(request):
    if request.method == 'POST':
        form = AuthenticationForm(data=request.POST)
        if form.is_valid(): 
            user = form.get_user()
            login(request, user)
            messages.success(request, 'Inicio de sesión exitoso.')
            return redirect('dashboard')  # Redirige a la vista 'dashboard' de myadmin
        else:
            messages.error(request, 'Nombre de usuario o contraseña incorrectos.')
    else:
        form = AuthenticationForm()
    return render(request, 'cuenta_myadmin/login_myadmin.html', {'form': form})

@login_required
def cerrar_sesion_myadmin(request):
    logout(request)
    return redirect('dashboard')  # Redirige a la vista 'dashboard' de myadmin