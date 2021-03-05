using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Seb4Vision.CSportView.Golf.Data.Models
{
    public class Rounds
    {
        [Key]
        public int roundid { get; set; }
        public string Description { get; set; }
        public int statusid { get; set; }
    }
}
