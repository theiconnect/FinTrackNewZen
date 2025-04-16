using Microsoft.AspNetCore.Mvc;

namespace FinTrackNewZen.Web.Controllers
{
    public class FederationController : Controller
    {
        private readonly ILogger<FederationController> _logger;

        public FederationController(ILogger<FederationController> logger)
        {
            _logger = logger;
        }
        public IActionResult ViewFederation()
        {
            return View();
        }
        public IActionResult EditFederation()
        {
            return View();
        }
    }
}
