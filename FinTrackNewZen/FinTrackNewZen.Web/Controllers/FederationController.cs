using Microsoft.AspNetCore.Mvc;

namespace FinTrackNewZen.Web.Controllers
{
    public class FederationController : Controller
    {
        public IActionResult FederationView()
        {
            return View();
        }


        public IActionResult EditFederationView()
        {
            return View();
        }
    }
}