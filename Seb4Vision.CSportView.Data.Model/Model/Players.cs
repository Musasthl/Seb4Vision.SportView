using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Seb4Vision.CSportView.Data.Model.Model
{
    public class Players
    {
        [Key]
        public long PlayerID { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public string PreferredName { get; set; }
        public DateTime DOB { get; set; }
        public int PlayerType { get; set; }
        public string JerseyNumber { get; set; }
        public string PhotoPath { get; set; }
        public int TeamListPosion { get; set; }
        public long TeamID { get; set; }
        public int PersonType { get; set; }
        public float Weight { get; set; }
        public float Height { get; set; }
        public int Batsman { get; set; }
        public int Bowler { get; set; }
        public string VideoPath { get; set; }
        public int idCountry { get; set; }
        public string SportCodeID { get; set; }

    }
}
