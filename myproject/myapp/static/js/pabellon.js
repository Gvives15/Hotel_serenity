document.addEventListener('DOMContentLoaded', () => {
    const columns = document.querySelectorAll('.column');
    
    columns.forEach(column => {
        column.addEventListener('mouseenter', () => {
            column.style.transform = 'scale(1.05)';
            column.style.transition = 'transform 0.3s';
        });

        column.addEventListener('mouseleave', () => {
            column.style.transform = 'scale(1)';
        });
    });
});