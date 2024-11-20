from django.urls import path
from . import views
from django.contrib.auth import views as auth_views

urlpatterns = [
    # Página de inicio
    path('', views.inicio, name='inicio'), 
    
    # Habitaciones
    path('habitaciones/', views.HabitacionesView.as_view(), name='habitaciones'),
    path('habitacion/<int:pk>/', views.DetalleHabitacionView.as_view(), name='detalle_habitacion'),
    path('reservar/<int:habitacion_id>/', views.ReservarHabitacionView.as_view(), name='reservar_habitacion'),

    # Reservas
    path('mis_reservas/', views.MisReservasView.as_view(), name='mis_reservas'),
    path('reserva/<int:pk>/cancelar/', views.CancelarReservaView.as_view(), name='cancelar_reserva'),
    path('resumen-reservas/', views.ResumenReservasView.as_view(), name='resumen_reservas'),

    # Autenticación
    path('registro/', views.RegistroView.as_view(), name='registro'),
    path('login/', views.IniciarSesionView.as_view(), name='login'),
    path('logout/', views.CerrarSesionView.as_view(), name='logout'),

    # Pabellones
    path('pabellones/', views.pabellones, name='pabellones'),
    path('pabellon/<int:pabellon_id>/', views.detalle_pabellon, name='detalle_pabellon'),

    # Búsqueda
    path('buscar/', views.buscar, name='buscar'),

    # Perfil de usuario
    path('perfil/', views.perfil, name='perfil'),
    path('perfil/editar/', views.editar_perfil, name='editar_perfil'),

    # Contacto
    path('contacto/', views.contacto, name='contacto'),

    # Comentarios
    #path('habitacion/<int:habitacion_id>/comentar/', views.habitaciones, name='agregar_comentario'),

    # Cambio de contraseña
    path('cambiar-password/', auth_views.PasswordChangeView.as_view(template_name='myapp/cambiar_password.html'), name='cambiar_password'),
    path('password-cambiada/', auth_views.PasswordChangeDoneView.as_view(template_name='myapp/password_cambiada.html'), name='password_change_done'),

    # Recuperación de contraseña
    path('reset-password/', auth_views.PasswordResetView.as_view(template_name='password/reset_password.html'), name='reset_password'),
    path('reset-password/done/', auth_views.PasswordResetDoneView.as_view(template_name='password/reset_password_done.html'), name='password_reset_done'),
    path('reset-password/confirm/<uidb64>/<token>/', auth_views.PasswordResetConfirmView.as_view(template_name='password/reset_password_confirm.html'), name='password_reset_confirm'),
    path('reset-password/complete/', auth_views.PasswordResetCompleteView.as_view(template_name='password/reset_password_complete.html'), name='password_reset_complete'),
    
    path('simular-pago/', views.SimularPagoView.as_view(), name='simular_pago'),
    path('pago-exitoso/', views.PagoExitosoView.as_view(), name='pago_exitoso'),
    path('pago-error/', views.PagoErrorView.as_view(), name='pago_error'),
]
