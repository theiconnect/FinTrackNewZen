function showPopup(message) {
    const toastEl = document.getElementById('popupToast');
    const toastMsg = document.getElementById('toastMsg');
    toastMsg.textContent = message;

    const toast = new bootstrap.Toast(toastEl);
    toast.show();
}