using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Security.Principal;
using System.Threading.Tasks;
using Microsoft.AspNet.Authentication;
using Microsoft.AspNet.Authorization;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Mvc;
using Microsoft.AspNet.Mvc.Rendering;
using Microsoft.Data.Entity;
using Pintxopote;
using Pintxopote.Models;
using Pintxopote.Services;
using Pintxopote.Konexioa;

namespace Pintxopote.Controllers
{
    [Authorize]
    public class BalorazioaController : Controller
    {
        private PintxopoteDbContext db = new PintxopoteDbContext();

        [AllowAnonymous]
        public async Task<IActionResult> Balorazioa(string idPintxo, int nota)
        {
            var redirect = "Errorea";
            
            
            if (User.Identity.IsAuthenticated)
            {
                //if (ModelState.IsValid)
                //{
                int bai1 = db.Balorazioa.Where(m => m.erabiltzaileaId.Contains(User.GetUserName())).Count();
                int bai2 = db.Balorazioa.Where(m => m.pintxoId.Contains(idPintxo)).Count();
                if (bai1 > 0 && bai2 > 0)
                {
                    //VALIDAR UPDATE
                    if (db.Balorazioa.Any(m => m.erabiltzaileaId == User.GetUserName() && m.pintxoId == idPintxo))
                    {

                        Balorazioa bbalorazioa = new Balorazioa();
                        bbalorazioa.Id = db.Balorazioa.Where(m => m.erabiltzaileaId == User.GetUserName() && m.pintxoId == idPintxo).Select(m => m.Id).Single();
                        bbalorazioa.erabiltzaileaId = User.GetUserName();
                        bbalorazioa.pintxoId = idPintxo;
                        bbalorazioa.tabernaId = db.Pintxo.Where(m => m.Id == idPintxo).Select(m => m.tabernaId).Single().ToString();
                        bbalorazioa.nota = nota;
                        await Task.Delay(1000);
                        db.Update(bbalorazioa);
                        db.SaveChanges();
                        redirect = "Aldatuta";
                    }
                    else
                    {
                        redirect = "Errorea";
                    }
                }
                else
                {
                        Balorazioa bbalorazioa = new Balorazioa();
                        bbalorazioa.Id = db.Balorazioa.ToList().Count().ToString();
                        bbalorazioa.erabiltzaileaId = User.GetUserName();
                        bbalorazioa.pintxoId = idPintxo;
                        bbalorazioa.tabernaId = db.Pintxo.Where(m => m.Id == idPintxo).Select(m => m.tabernaId).Single().ToString();
                        bbalorazioa.nota = nota;
                        await Task.Delay(1000);
                        db.Balorazioa.Add(bbalorazioa);
                        db.SaveChanges();
                        redirect = "Bidalita";
                }
                            
                //}
                return Json(redirect);
                //return RedirectToAction(redirect);
            }
            else
            {
                // VALIDAR NO USUARIO LOGEADO!!
                return Json("Errorea");
            }
        }
        public ActionResult Bidalita()
        {
            return View();
        }
        public ActionResult Bikoiztuta()
        {
            return View();
        }
        public ActionResult Errorea()
        {
            return View();
        }
        public ActionResult Aldatuta()
        {
            return View();
        }
        [AllowAnonymous]
        [HttpGet]
        public ActionResult Eguneratu()
        {
            if (User.Identity.IsAuthenticated)
            {
                return Json(db.Balorazioa.Where(m => m.erabiltzaileaId == User.GetUserName()));
            }
            else
            {
                return Json("");
            }

        }

    }
}
