using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Seb4Vision.CSportView.Data.Model.Model
{
    public class MatchStats
    {
        public int Id { get; set; }
        [Required]
        public TeamMatchStats TeamAStats { get; set; }
        [Required]
        public TeamMatchStats TeamBStats { get; set; }
    }
}
