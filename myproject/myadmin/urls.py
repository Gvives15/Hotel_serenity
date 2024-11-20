from django.urls import path
from . import views  # Importa todas las vistas desde views.py
from django.contrib.auth import views as auth_views


urlpatterns = [
    path('', views.dashboard, name='dashboard'),
    
    path('habitaciones/', views.listar_habitaciones, name='listar_habitaciones'),
    path('habitaciones/crear/', views.crear_habitacion, name='crear_habitacion'),
    path('habitaciones/editar/<int:pk>/', views.editar_habitacion, name='editar_habitacion'),
    path('habitaciones/eliminar/<int:pk>/', views.eliminar_habitacion, name='eliminar_habitacion'),
    
    path('reservas/crear/', views.crear_reserva, name='crear_reserva'),
    path('reservas/', views.listar_reservas, name='listar_reservas'),    # Agrega más rutas según sea necesario
    path('reservas/editar/<int:reserva_id>/', views.editar_reserva, name='editar_reserva'),
    path('reservas/eliminar/<int:reserva_id>/', views.eliminar_reserva, name='eliminar_reserva'),
     

    # Autenticación
    path('registro_myadmin/', views.registro_myadmin, name='registro_myadmin'),
    path('login_myadmin/', views.iniciar_sesion_myadmin, name='login_myadmin'),
    path('logout_myadmin/', views.cerrar_sesion_myadmin, name='logout_myadmin'),

    # Cambio de contraseña
    path('cambiar-password/', auth_views.PasswordChangeView.as_view(template_name='cuenta_myadmin/cambiar_password.html'), name='cambiar_password'),
    path('password-cambiada/', auth_views.PasswordChangeDoneView.as_view(template_name='cuenta_myadmin/password_cambiada.html'), name='password_change_done'),

    # Recuperación de contraseña
    path('reset-password/', auth_views.PasswordResetView.as_view(template_name='password_myadmin/reset_password.html'), name='reset_password'),
    path('reset-password/done/', auth_views.PasswordResetDoneView.as_view(template_name='password_myadmin/reset_password_done.html'), name='password_reset_done'),
    path('reset-password/confirm/<uidb64>/<token>/', auth_views.PasswordResetConfirmView.as_view(template_name='password_myadmn/reset_password_confirm.html'), name='password_reset_confirm'),
    path('reset-password/complete/', auth_views.PasswordResetCompleteView.as_view(template_name='password_myadmin/reset_password_complete.html'), name='password_reset_complete'),
]
