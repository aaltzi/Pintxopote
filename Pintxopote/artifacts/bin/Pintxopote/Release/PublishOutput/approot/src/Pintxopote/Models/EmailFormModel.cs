using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace Pintxopote.Models
{
    public class EmailFormModel
    {
        /*
        http://www.mikesdotnetting.com/article/268/how-to-send-email-in-asp-net-mvc
        */
        [Required, Display(Name = "Zure Izena")]
        public string FromIzena { get; set; }
        [Required, Display(Name = "Zure Emaila"), EmailAddress]
        public string FromEmail { get; set; }
        [Required, Display(Name = "Zure Telefonoa")]
        public string FromTelefonoa { get; set; }
        [Required]
        public string Mezua { get; set; }
    }
}
