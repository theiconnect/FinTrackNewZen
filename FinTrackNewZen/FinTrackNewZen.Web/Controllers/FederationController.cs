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
        public ActionResult ViewFederation()
        {
            return View();
        }
        public ActionResult EditFederation()
        {
            return View();
        }
    }
}
