using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Data.Entity;
using Pintxopote.Models;

namespace Pintxopote.Konexioa
{
    public class PintxopoteDbContext : DbContext
    {
        public DbSet<Taberna> Taberna { get; set; }
        public DbSet<Pintxo> Pintxo { get; set; }
        public DbSet<Balorazioa> Balorazioa { get; set; }
        public DbSet<Erabiltzailea> Erabiltzailea { get; set; }

        protected override void OnConfiguring(EntityOptionsBuilder optionsBuilder)
        {
            // ETXEA //
            /*DESKTOP-6OSC2VD\SQLEXPRESS*/
            /*sqlserver-alex*/
            // KLASEA //
            /*UE-206-17*/
            optionsBuilder.UseSqlServer(@"Server=DESKTOP-6OSC2VD\SQLEXPRESS;Database=Pintxopote;integrated security=True;");
        }
        /**************************************************************/
        // project.json
        // FRAMEWORKS
        /* AÑADIR ESTO!!(despues de "dnx451") Y compilar
        ,
        "dnxcore50": { }
        */
    }
}
