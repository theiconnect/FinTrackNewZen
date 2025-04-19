document.addEventListener('DOMContentLoaded', function() {
    const verifyOTPForm = document.getElementById('verifyOTPForm');
    if (verifyOTPForm) {
        verifyOTPForm.addEventListener('submit', function(event) {
            event.preventDefault();
            const otp = document.getElementById('otp').value;
            if (otp.length === 6) { 
                alert('OTP Verified Successfully! (Simulated)');
                window.location.href = 'reset-password.html';
                
            } else {
                alert('Invalid OTP. Please enter a 6-digit OTP (Simulated).');
            }
        });
    }
});