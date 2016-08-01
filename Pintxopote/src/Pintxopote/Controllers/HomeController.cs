using System;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNet.Mvc;
using Pintxopote.Konexioa;
using Microsoft.Data.Entity;

namespace Pintxopote.Controllers
{
    public class HomeController : Controller
    {
        private PintxopoteDbContext db = new PintxopoteDbContext();
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Kontaktua()
        {
            return View();
        }
        public ActionResult Bidalita()
        {
            return View("~/Views/Home/Bidalita.cshtml");
        }
        public IActionResult Tabernak()
        {
            ViewData["Message"] = "Tabernak";

            return View(db.Taberna.ToList());
        }
        public IActionResult Taberna(String id)
        {
            ViewData["Message"] = "Taberna";

            return View(db.Taberna
                            .Where(m => m.Id == id).Single());
        }
        public IActionResult Pintxoak()
        {
            ViewData["Message"] = "Pintxoak";

            return View(db.Pintxo.Include(m => m.Taberna).ToList());
        }
        public IActionResult Error()
        {
            return View("~/Views/Shared/Error.cshtml");
        }
    }
}
