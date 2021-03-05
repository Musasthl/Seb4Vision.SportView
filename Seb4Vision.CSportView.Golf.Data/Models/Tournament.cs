using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Seb4Vision.CSportView.Golf.Data.Models
{
   public class Tournament
    {
        [Key]
        public long tournamentid { get; set; }
        public long courseid { get; set; }
        public string Description { get; set; }
        public string Country { get; set; }
        public DateTime BeginDate { get; set; }
        public DateTime EndDate { get; set; }
        public string LastRoundCompleted { get; set; }
        public string CurrentRound { get; set; }
        public int statusid { get; set; }
        public int webserverid { get; set; }
    }
}
