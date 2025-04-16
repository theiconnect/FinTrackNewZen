using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using static System.Net.WebRequestMethods;


namespace FinTrackNewZen.Web.Controllers
{
    public class AuthrizationController : Controller
    {
        //private readonly ILogger<AuthrizationController> _logger;

        //public AuthrizationController(ILogger<AuthrizationController> logger)
        //{
        //    _logger = logger;
        //}

        [HttpGet]
        public ActionResult Login()
        {
            return View();
            //return RedirectToAction("Index", "Home");
        }

        [HttpPost]
        public ActionResult Login(string emailPhone, string password)
        {
            string validEmailPhone = "admin";
            string validPassword = "admin";

            if (emailPhone == validEmailPhone && password== validPassword)
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


            ViewBag.EmailPhone = emailPhone;
            return RedirectToAction("VerifyOTP", "Authrization");
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
                return RedirectToAction("ResetPassword", "Authrization");
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
                return RedirectToAction("Login", "Authrization");
            }
            else
            {
                ViewBag.ErrorMessage = "Passwords do not match.";
                return View();
            }
        }
    } 
}
