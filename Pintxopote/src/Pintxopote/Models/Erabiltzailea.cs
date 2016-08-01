using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using Pintxopote.Models;

namespace Pintxopote.Models
{
    public class Erabiltzailea
    {
        [Key]
        public string Id { get; set; }
        public string Email { get; set; }
        public string Pasahitza { get; set; }
        public List<Balorazioa> Balorazioak { get; set; }
    }
}
