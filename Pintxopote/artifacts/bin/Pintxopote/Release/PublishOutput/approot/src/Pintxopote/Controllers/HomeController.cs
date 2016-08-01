using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNet.Mvc;
using Microsoft.Data.Entity;
using Pintxopote.Konexioa;

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
            ViewData["Message"] = "Kontaktua";

            return View();
        }
        public IActionResult Tabernak()
        {
            ViewData["Message"] = "Tabernak";

            return View(db.Tabernak.ToList());
        }
        public IActionResult Taberna(String id)
        {
            ViewData["Message"] = "Taberna";

            return View(db.Tabernak
                            .Where(m => m.Id == id));
        }
        public IActionResult Pintxoak()
        {
            ViewData["Message"] = "Pintxoak";

            return View(db.Pintxo.ToList());
        }
        public IActionResult Error()
        {
            return View("~/Views/Shared/Error.cshtml");
        }
    }
}
