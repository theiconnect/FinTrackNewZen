using Microsoft.AspNetCore.Mvc;

namespace FinTrackNewZen.Web.Controllers
{
    public class AuthorizationController : Controller
    {
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
            return RedirectToAction("VerifyOTP", "Authorization");
        }

        public IActionResult VerifyOTP()
        {
            ViewBag.EmailPhone = TempData["EmailPhone"] as string;
            return View();
        }

        [HttpPost]
        public IActionResult VerifyOTP(string otp)
        {
            if (!string.IsNullOrEmpty(otp) && otp == "123456")
            {
                return RedirectToAction("ResetPassword", "Authorization");
            }
            else
            {
                ViewBag.ErrorMessage = "Invalid OTP. Please try again.";
                return View();
            }
        }

        public IActionResult ResetPassword()
        {
            ViewBag.EmailPhone = TempData["EmailPhone"] as string;
            return View();
        }

        [HttpPost]
        public IActionResult ResetPassword(string newPassword, string confirmPassword)
        {
            if (newPassword == confirmPassword)
            {
               
                return RedirectToAction("Login", "Authorization");
            }
            else
            {
                ViewBag.ErrorMessage = "Passwords do not match.";
                return View();
            }
        }
    }
}