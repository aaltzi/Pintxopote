using System;
using System.Collections.Generic;
using System.Linq;
using System.Collections;
using System.Threading.Tasks;
using Microsoft.AspNet.Mvc;
using Pintxopote.Konexioa;
using Pintxopote.Models;
using Microsoft.Data.Entity;

namespace Pintxopote.ViewComponents
{
    public class PintxoOnenaViewComponent : ViewComponent
    {
        PintxopoteDbContext db = new PintxopoteDbContext();
        public IViewComponentResult Invoke()
        {
            db.Balorazioa.Include(m => m.Pintxo.Id);
            db.Balorazioa.OrderByDescending(u => u.pintxoId).Take(1);

            Balorazioa[] arrayBalorazioak = db.Balorazioa.ToList().ToArray();
            ArrayList arrayIdPintxo = new ArrayList();
            for (int i=0; i< arrayBalorazioak.Length; i++)
            {
                arrayIdPintxo.Add(arrayBalorazioak[i].pintxoId);
            }

            // GEHIEN AZALTZEN DENA LORTZEKO!!!
            Dictionary<string, int> counts = new Dictionary<string, int>();
            foreach (string name in arrayIdPintxo)
            {
                int count;
                if (counts.TryGetValue(name, out count))
                {
                    counts[name] = count + 1;
                }
                else
                {
                    counts.Add(name, 1);
                }
            }
            string mostPopular="";
            int max = 0;
            foreach (string name in counts.Keys)
            {
                int count = counts[name];
                if (count > max)
                {
                    mostPopular = name;
                    max = count;
                }
            }

            return View(db.Balorazioa
                            .Where(q => q.pintxoId== mostPopular).Include(m => m.Tabernak).Include(m => m.Pintxo));
        }
    }
}
