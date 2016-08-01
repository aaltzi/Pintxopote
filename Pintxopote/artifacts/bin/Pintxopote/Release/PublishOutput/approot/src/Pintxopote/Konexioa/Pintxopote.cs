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
        public DbSet<Tabernak> Tabernak { get; set; }
        public DbSet<Pintxo> Pintxo { get; set; }

        protected override void OnConfiguring(EntityOptionsBuilder optionsBuilder)
        {
            // ETXEA //
            /*DESKTOP-6OSC2VD\SQLEXPRESS*/
            // KLASEA //
            /*UE-206-17*/
            optionsBuilder.UseSqlServer(@"Server=UE-206-17;Database=Pintxopote;integrated security=True;");
        }

    }
}
