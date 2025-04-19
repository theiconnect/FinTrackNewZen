document.addEventListener('DOMContentLoaded', function() {
  const forgotPasswordForm = document.getElementById('forgotPasswordForm');
  if (forgotPasswordForm) {
      forgotPasswordForm.addEventListener('submit', function(event) {
          event.preventDefault();
          const emailPhone = document.getElementById('emailPhone').value;
          alert(`OTP sent to ${emailPhone} (Simulated)`);
          window.location.href = 'verify-otp.html';
          
      });
  }
});