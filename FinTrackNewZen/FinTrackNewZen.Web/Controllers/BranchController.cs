using Microsoft.AspNetCore.Mvc;

namespace FinTrackNewZen.Web.Controllers
{
    public class BranchController : Controller
    {
        private readonly ILogger<BranchController> _logger;

        public BranchController(ILogger<BranchController> logger)
        {
            _logger = logger;
        }
        public IActionResult Index()
        {
            return View();
        }
    }
}
