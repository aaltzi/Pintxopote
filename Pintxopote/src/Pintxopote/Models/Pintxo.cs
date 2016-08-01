using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using Microsoft.Data.Entity;

namespace Pintxopote.Models
{
    public class Pintxo
    {
        [Key]
        public string Id { get; set; }
        public string izena { get; set; }
        public string deskribapena { get; set; }
        public string argazkia { get; set; }
        public string tabernaId { get; set; }
        public virtual Taberna Taberna { get; set; }
        public List<Balorazioa> Balorazioak { get; set; }
    }
}
