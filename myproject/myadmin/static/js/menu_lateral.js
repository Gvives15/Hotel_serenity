// Script para alternar el menú
$("#menu-toggle").click(function(e) {
    e.preventDefault();
    $("#wrapper").toggleClass("toggled");
});

$(document).ready(function() {
    $('.dropdown-toggle').click(function() {
        $(this).next('.dropdown-menu').toggle();
    });
});