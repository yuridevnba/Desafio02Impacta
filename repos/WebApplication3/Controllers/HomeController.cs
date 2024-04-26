using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using WebApplication3.Models;

namespace WebApplication3.Controllers
{
    public class HomeController : Controller
    {


        public IActionResult Index()
        {

            ViewBag.Empresa = "AVANADE";
            ViewData["endereco"] = "Avenida Paulista, 1009";

            return View();
        }

        public ActionResult IncluirAluno()
        {
            //return "<h1> OIII aninha</h1>";

            Aluno aluno = new Aluno()
            {
                Id = 1,
                Nome = "Pedro",
                CPF = 10
            };

            return View(aluno);

        }
        

    }

}