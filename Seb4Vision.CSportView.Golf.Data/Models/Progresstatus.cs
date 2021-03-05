using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Seb4Vision.CSportView.Golf.Data.Models
{
    public class Progresstatus
    {
        [Key]
        public int statusid { get; set; }
        public string Description { get; set; }
    }
}
