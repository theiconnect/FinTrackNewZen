document.addEventListener('DOMContentLoaded', function () {
    const verifyOTPForm = document.getElementById('verifyOTPForm');
    const verifyButton = verifyOTPForm.querySelector('button[type="submit"]');

    verifyButton.addEventListener('click', function (event) {
        event.preventDefault();

        const otp = document.getElementById('otp').value;

        if (otp.length === 6) {
            window.location.href = '/Authrization/ResetPassword';
        } else {
            alert('Please enter a 6-digit OTP.');
        }
    });
});