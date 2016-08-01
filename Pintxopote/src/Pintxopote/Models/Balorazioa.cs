using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace Pintxopote.Models
{
    public class Balorazioa
    {
        [Key]
        public string Id { get; set; }
        public string pintxoId { get; set; }
        public virtual Pintxo Pintxo { get; set; }
        public string erabiltzaileaId { get; set; }
        public virtual Erabiltzailea Erabiltzailea { get; set; }
        public int nota { get; set; }
        public string tabernaId { get; set; }
        public virtual Taberna Tabernak { get; set; }
    }
}
