using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

using Pintxopote.Konexioa;

using System.Net;
using System.Net.Mail;

namespace Pintxopote.Models
{
    public class EmailFormModel
    {
        /*
        http://www.mikesdotnetting.com/article/268/how-to-send-email-in-asp-net-mvc
        http://stackoverflow.com/questions/26784366/how-to-send-email-from-mvc-5-application
        */
        [Required, Display(Name = "Izena")]
        public string FromIzena { get; set; }
        [Required, Display(Name = "Email-a"), EmailAddress]
        public string FromEmail { get; set; }
        [Required, Display(Name = "Telefono Zenbakia")]
        public string FromTelefonoa { get; set; }
        [Required, Display(Name = "Mezua")]
        public string Mezua { get; set; }
    }
}
