using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNet.Mvc;
using Pintxopote.Konexioa;

namespace Pintxopote.ViewComponents
{
    public class PintxoakTabernaViewComponent : ViewComponent
    {
        PintxopoteDbContext db = new PintxopoteDbContext();
        public IViewComponentResult Invoke(string id)
        {
            return View(db.Pintxo.Where(m => m.tabernaId == id).ToList());
        }
    }
}
