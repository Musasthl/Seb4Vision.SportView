using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Seb4Vision.CSportView.Data.Model.Model
{
    public class AdminTournament
    {
        [Key]
        public int idAdminTournament { get; set; }
        public string Description { get; set; }
        public int Sportcode { get; set; }
        public int idCountry { get; set; }

    }
}
