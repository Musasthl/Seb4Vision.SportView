using System;
using System.ComponentModel.DataAnnotations;

namespace Seb4Vision.CSportView.Data.Model.Model
{
    public class TeamMatchStats
    {
        public int Id { get; set; }
        [Required]
        public int TeamId { get; set; }
        public int Goals { get; set; }
        public int Shots { get; set; }
        public int ShotsOnTarget { get; set; }
        public decimal Possession { get; set; }
        public int Tackles { get; set; }
        public int Fouls { get; set; }
        public int YellowCards { get; set; }
        public int RedCards { get; set; }
        public int Injuries { get; set; }
        public int Offsides { get; set; }
        public int Corners { get; set; }
        public decimal ShotAccuracy { get; set; }
        public decimal PassAccuracy { get; set; } 
    }
}
