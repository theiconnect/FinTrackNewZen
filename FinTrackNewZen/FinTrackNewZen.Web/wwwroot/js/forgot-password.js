document.addEventListener('DOMContentLoaded', function () {
    const forgotPasswordForm = document.getElementById('forgotPasswordForm');
    const sendOTPButton = forgotPasswordForm.querySelector('button[type="submit"]');

    sendOTPButton.addEventListener('click', function (event) {
        event.preventDefault(); 
        const emailPhone = document.getElementById('emailPhone').value;
        if (emailPhone.trim()) {
            window.location.href = '/Authorization/VerifyOTP';
        } else {
            alert('Please enter your Email or Phone number.');
        }
    });
});