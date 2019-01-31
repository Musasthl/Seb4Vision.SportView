using Microsoft.EntityFrameworkCore;
using Seb4Vision.CSportView.Data.Model;
using Seb4Vision.CSportView.Data.Model.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
 

namespace Seb4Vision.CSportView.Data
{
    public class Seb4VisionCSportViewContext : DbContext
    {
        public Seb4VisionCSportViewContext (DbContextOptions<Seb4VisionCSportViewContext> options)
            : base(options)
        {
        }

        //public DbSet<MatchStats> MatchStats { get; set; }
        //public DbSet<Team> Team { get; set; }
        //public DbSet<Team> Player { get; set; }
        // public DbSet<Tournament> Tournament { get; set; }
        public DbSet<AdminTournament> AdminTournament { get; set; }
        public DbSet<Tournament> Tournament { get; set; }
        public DbSet<Venues> Venue { get; set; }
        public DbSet<Match> Match { get; set; }
        public DbSet<Teams> Teams { get; set; }
        public DbSet<GameType> GameType { get; set; }
        public DbSet<Players> Players { get; set; }
        public DbSet<PlayerType> PlayerType { get; set; }
        public DbSet<PersonType> PersonType { get; set; }
        public DbSet<MatchEvents> MatchEvents { get; set; }
        public DbSet<SportVuTeamStat> SportVuTeamStats { get; set; }
        public DbSet<SportVuPlayerStat> SportVuPlayerStats { get; set; }
    }
}
