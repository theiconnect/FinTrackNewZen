using System.Diagnostics;
using FinTrackDummy.Models;
using Microsoft.AspNetCore.Mvc;

namespace FinTrackDummy.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        [HttpGet]
        public ActionResult Login()
        {
                return View();
        }

        [HttpPost]
        public ActionResult Login(string email, string password)
        {
            string validEmail = "admin@domain.com";
            string validPassword = "password123";

            if (email == validEmail && password == validPassword)
            {
                return RedirectToAction("ViewFederation", "Home");
            }

            ViewBag.Error = "Invalid username or password.";
            return View();
        }

        public ActionResult TestRedirect()
        {
            return RedirectToAction("ViewFederation", "Home");
        }

        [HttpGet]
        public ActionResult ForgotPassword()
        {
            return View();
        }

        public ActionResult SendOTP()
        {
            return View();
        }

        public ActionResult ViewFederation()
        {
            return View();
        }

        public ActionResult EditFederation()
        {
            return View();
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
