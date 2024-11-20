document.addEventListener("DOMContentLoaded", function() {
    // Alternar visibilidad de submenús en el menú lateral
    const titles = document.querySelectorAll(".title");
    titles.forEach(title => {
        title.addEventListener("click", function(e) {
            e.preventDefault();
            const submenu = title.nextElementSibling;
            if (submenu && submenu.classList.contains('submenu')) {
                submenu.classList.toggle('show');
            }
        });
    });

    // Alternar visibilidad del menú lateral
    const toggleButton = document.getElementById('toggle-menu');
    const menuLateral = document.getElementById('menu-lateral');
    const contenido = document.querySelector('.contenido');

    toggleButton.addEventListener('click', () => {
        menuLateral.classList.toggle('hidden');
        contenido.style.marginLeft = menuLateral.classList.contains('hidden') ? '' : '360px';
    });

    // Gestión de clic en los botones de detalles y fechas de habitaciones
    const detallesButtons = document.querySelectorAll('.detalles-btn');
    const fechasButtons = document.querySelectorAll('.fechas-btn');

    detallesButtons.forEach(btn => {
        btn.addEventListener('click', () => {
            alert("Mostrar detalles de la habitación");
        });
    });

    fechasButtons.forEach(btn => {
        btn.addEventListener('click', () => {
            alert("Mostrar fechas de la habitación");
        });
    });
});

function logout() {
    alert("Has cerrado sesión");
}

console.log('El script se ha cargado correctamente');
