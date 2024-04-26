using Microsoft.AspNetCore.Mvc;

namespace WebApplication3.Controllers
{
    public class CursoController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
