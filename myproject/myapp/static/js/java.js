// Obtener los elementos del DOM
const modalIniciarSesion = document.getElementById("modal_iniciar_sesion");
const btnOpenLoginModal = document.getElementById("openLoginModal");
const btnCloseLoginModal = document.getElementById("close_iniciar_sesion");

const modalCrearUsuario = document.getElementById("modal_crear_usuario");
const btnCloseCrearUsuario = document.getElementById("close_crear_usuario");

// Abrir el modal de iniciar sesión
btnOpenLoginModal.addEventListener("click", function() {
    modalIniciarSesion.style.display = "block";
});

// Cerrar el modal de iniciar sesión
btnCloseLoginModal.addEventListener("click", function() {
    modalIniciarSesion.style.display = "none";
});

// Cerrar el modal de crear usuario
btnCloseCrearUsuario.addEventListener("click", function() {
    modalCrearUsuario.style.display = "none";
});

// Cerrar los modales cuando se hace clic fuera de ellos
window.addEventListener("click", function(event) {
    if (event.target === modalIniciarSesion) {
        modalIniciarSesion.style.display = "none";
    }
    if (event.target === modalCrearUsuario) {
        modalCrearUsuario.style.display = "none";
    }
});

function toggleDeleteForm(itemId) {
    const form = document.getElementById(`delete-form-${itemId}`);
    if (form.style.display === 'none' || form.style.display === '') {
        form.style.display = 'block';
    } else {
        form.style.display = 'none';
    }
}

document.getElementById('metodo_pago').addEventListener('change', function() {
    var tarjetaInfo = document.getElementById('tarjeta-info');
    if (this.value === 'tarjeta') {
        tarjetaInfo.style.display = 'block';
    } else {
        tarjetaInfo.style.display = 'none';
    }
});



    document.addEventListener("DOMContentLoaded", function() {
        const form = document.querySelector("form");
        form.addEventListener("submit", function(event) {
            const nombre = document.getElementById("nombre").value.trim();
            const numeroTarjeta = document.getElementById("numero_tarjeta").value.trim();
            const fechaExpiracion = document.getElementById("fecha_expiracion").value;
            const cvv = document.getElementById("cvv").value.trim();

            // Validación básica
            if (!nombre || !numeroTarjeta || !fechaExpiracion || !cvv) {
                alert("Por favor, complete todos los campos.");
                event.preventDefault(); // Evita que el formulario se envíe
            }

            // Validación del número de tarjeta
            if (!/^\d{16}$/.test(numeroTarjeta)) {
                alert("El número de tarjeta debe tener 16 dígitos.");
                event.preventDefault();
            }

            // Validación del CVV
            if (!/^\d{3}$/.test(cvv)) {
                alert("El CVV debe tener 3 dígitos.");
                event.preventDefault();
            }
        });
    });
