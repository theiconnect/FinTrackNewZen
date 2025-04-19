document.addEventListener('DOMContentLoaded', function() {
    const resetPasswordForm = document.getElementById('resetPasswordForm');
    if (resetPasswordForm) {
        resetPasswordForm.addEventListener('submit', function(event) {
            event.preventDefault();
            const newPassword = document.getElementById('newPassword').value;
            const confirmPassword = document.getElementById('confirmPassword').value;

            if (newPassword === confirmPassword) {
                alert('Password reset successfully! (Simulated)');
                window.location.href = 'login.html';
                
            } else {
                alert('Passwords do not match.');
            }
        });
    }
});