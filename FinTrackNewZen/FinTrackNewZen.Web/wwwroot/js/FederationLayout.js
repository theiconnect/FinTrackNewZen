﻿function toggleSidebar() {
    document.getElementById('sidebar').classList.toggle('collapsed');
    document.querySelector('.content').classList.toggle('collapsed');
}

function toggleSubmenu(id) {
    const submenu = document.getElementById(id);
    submenu.style.display = submenu.style.display === 'block' ? 'none' : 'block';
}

function toggleProfileDropdown() {
    const dropdown = document.getElementById('profileDropdown');
    dropdown.style.display = dropdown.style.display === 'block' ? 'none' : 'block';
}

document.addEventListener('click', function (e) {
    if (!e.target.closest('.dropdown')) {
        document.getElementById('profileDropdown').style.display = 'none';
    }
});