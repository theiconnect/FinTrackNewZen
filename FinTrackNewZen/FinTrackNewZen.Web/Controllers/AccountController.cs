using Microsoft.AspNetCore.Mvc;
<<<<<<< HEAD
using FinTrackNewZen.Web.Models;
=======
>>>>>>> origin/main

namespace FinTrackNewZen.Web.Controllers
{
    public class AccountController : Controller
    {
<<<<<<< HEAD
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
=======
        public IActionResult Login()
        {

            return View();
        }
        [HttpPost]
        public IActionResult Login(string emailPhone, string password)
        {
            if (!string.IsNullOrEmpty(emailPhone) && !string.IsNullOrEmpty(password))
            {

                return RedirectToAction("Index", "Home");
            }
            else
            {
                ViewBag.ErrorMessage = "Invalid login attempt.";
                return View();
            }
        }


        public IActionResult ForgotPassword()
        {
            return View();
        }

        [HttpPost]
        public IActionResult ForgotPassword(string emailPhone)
        {
            if (string.IsNullOrEmpty(emailPhone) || string.IsNullOrWhiteSpace(emailPhone))
            {
                ViewBag.ErrorMessage = "Please enter your Email or Phone number.";
                return View();
            }

            TempData["EmailPhone"] = emailPhone;
            return RedirectToAction("VerifyOTP", "Account");
        }



        public IActionResult VerifyOtp()
        {
            return View();
        }
        [HttpPost]
        public IActionResult VerifyOTP(string otp)
        {
            if (!string.IsNullOrEmpty(otp) && otp == "123456")
            {
                return RedirectToAction("ResetPassword", "Account");
            }
            else
            {
                ViewBag.ErrorMessage = "Invalid OTP. Please try again.";
                return View();
            }
        }


        public IActionResult ResetPassword()
        {
            return View();
        }
        [HttpPost]
        public IActionResult ResetPassword(string newPassword, string confirmPassword)
        {
            if (newPassword == confirmPassword)
            {

                return RedirectToAction("Login", "Account");
            }
            else
            {
                ViewBag.ErrorMessage = "Passwords do not match.";
                return View();
            }
        }

>>>>>>> origin/main
    }
}
