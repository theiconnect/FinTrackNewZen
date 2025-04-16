using Microsoft.AspNetCore.Mvc;

namespace FinTrackNewZen.Web.Controllers
{
    public class AuthorizationController : Controller
    {
        private readonly ILogger<AuthorizationController> _logger;

        public AuthorizationController(ILogger<AuthorizationController> logger)
        {
            _logger = logger;
        }

        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(string emailPhone, string password)
        {
            string validEmail = "admin";
            string validPassword = "admin";

            if (emailPhone == validEmail && password == validPassword)
            {
                return Redirect(Url.Action("ViewFederation", "Federation"));
            }

            ViewBag.Error = "Invalid username or password.";
            return View();

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


            ViewBag.EmailPhone = emailPhone;
            return RedirectToAction("VerifyOTP", "Authorization");
        }

        public IActionResult VerifyOTP()
        {

            // ViewBag.EmailPhone = TempData["EmailPhone"]; 
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
            // ViewBag.EmailPhone = TempData["EmailPhone"]; 
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
