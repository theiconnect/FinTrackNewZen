using Microsoft.AspNetCore.Mvc;

namespace FinTrackNewZen.Web.Controllers
{
    public class AccountController : Controller
    {
        public IActionResult Login()
        {
            return View();
        }

        public IActionResult ForgotPassword()
        {
            return View();
        }

        public IActionResult VerifyOtp()
        {
            return View();
        }
       
        public IActionResult ResetPassword()
        {
            return View();
        }
    }
}
