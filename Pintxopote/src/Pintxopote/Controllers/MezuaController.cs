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

using System.Net;
using System.Net.Mail;

namespace Pintxopote.Controllers
{
    [Authorize]
    public class MezuaController : Controller
    {
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Kontaktua(EmailFormModel model)
        {
            if (ModelState.IsValid)
            {
                var body = "<p>EMAILA BIDALITA: {0} ({1})</p><p>Telefonoa: {2}</p><p>Mezua:</p><p>{3}</p>";
                var message = new MailMessage();
                message.To.Add(new MailAddress("pintxopoteberria@gmail.com"));  // replace with valid value 
                message.From = new MailAddress(model.FromEmail);  // replace with valid value
                message.Subject = "Zure Emailaren Gaia";
                message.Body = string.Format(body, model.FromIzena, model.FromEmail, model.FromTelefonoa, model.Mezua);
                message.IsBodyHtml = true;

                using (var smtp = new SmtpClient())
                {
                    var credential = new NetworkCredential
                    {
                        UserName = "pintxopoteberria@gmail.com",  // replace with valid value
                        Password = "A59SAgnRyA"  // replace with valid value
                    };
                    smtp.Credentials = credential;
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    await smtp.SendMailAsync(message);
                    //return RedirectToAction("Bidali");
                }
            }
            return RedirectToAction("Bidali");
        }
        public IActionResult Bidali()
        {
            return View();
        }

    }
}
