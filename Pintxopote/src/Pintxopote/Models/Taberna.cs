using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using Microsoft.Data.Entity;

namespace Pintxopote.Models
{
    public class Taberna
    {
        [Key]
        public string Id { get; set; }
        public string izena { get; set; }
        public string deskribapena { get; set; }
        public string kokapena { get; set; }
        public string kontaktua { get; set; }
        public string argazkia { get; set; }

        public List<Balorazioa> Balorazioak { get; set; }

        public List<Pintxo> Pintxoak { get; set; }
    }
}
