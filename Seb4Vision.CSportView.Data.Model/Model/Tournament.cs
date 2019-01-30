using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Seb4Vision.CSportView.Data.Model.Model
{
    public class Tournament
    {
        [Key]
        public long TournamentID { get; set; }
        public string TournamentName { get; set; }
    }
}
