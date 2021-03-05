using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Seb4Vision.CSportView.Golf.Data.Models
{
    public class Score
    {
        [Key]
        public int idscore { get; set; }
        public int playerid { get; set; }
        public int courseid { get; set; }
        public int roundid { get; set; }
        public int Tournamentid { get; set; }
        public int position { get; set; }
        public DateTime TeeTime { get; set; }
        public int startingtee { get; set; }
        public int holesplayed { get; set; }
        public string GraphicPos { get; set; }
    }
}
