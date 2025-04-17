using Microsoft.AspNetCore.Mvc;
using FinTrackNewZen.Web.Models;

namespace FinTrackNewZen.Web.Controllers
{
    public class AccountController : Controller
    {
        public IActionResult Login() => View();
        [HttpPost]
        public IActionResult Login(UserViewModel model)
        {
            // Authenticate
            return RedirectToAction("Login");
        }

        public IActionResult ForgotPassword() => View();
        [HttpPost]
        public IActionResult ForgotPassword(UserViewModel model)
        {
            // Send OTP logic
            return RedirectToAction("VerifyOtp");
        }

        public IActionResult VerifyOtp() => View();
        [HttpPost]
        public IActionResult VerifyOtp(UserViewModel model)
        {
            // Validate OTP
            return RedirectToAction("ResetPassword");
        }

        public IActionResult ResetPassword() => View();
        [HttpPost]
        public IActionResult ResetPassword(UserViewModel model)
        {
            // Reset password logic
            return RedirectToAction("Login");
        }
    }
}
