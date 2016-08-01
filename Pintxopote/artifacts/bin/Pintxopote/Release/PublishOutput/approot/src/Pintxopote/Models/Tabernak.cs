using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace Pintxopote.Models
{
    public class Tabernak
    {
        [Key]
        public string Id { get; set; }
        public string izena { get; set; }
        public string deskribapena { get; set; }
        public string kokapena { get; set; }
        public string kontaktua { get; set; }
        public string argazkia { get; set; }
    }
}
