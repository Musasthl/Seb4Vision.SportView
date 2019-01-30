using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Seb4Vision.CSportView.Data.Model.Model
{
    public class Venues
    {
        [Key]
        public long idVenue { get; set; }
        public string Venue { get; set; }
    }
}
