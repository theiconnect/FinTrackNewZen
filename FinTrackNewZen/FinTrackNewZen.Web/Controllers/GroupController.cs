using Microsoft.AspNetCore.Mvc;

namespace FinTrackNewZen.Web.Controllers
{
    public class GroupController : Controller
    {
        private readonly ILogger<GroupController> _logger;

        public GroupController(ILogger<GroupController> logger)
        {
            _logger = logger;
        }
        public IActionResult Index()
        {
            return View();
        }
    }
}
