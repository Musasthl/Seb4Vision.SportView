using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Seb4Vision.CSportView.Golf.Data.Models
{
    public class Course
    {
        [Key]
        public long courseid { get; set; }
        public string Description { get; set; }
        public string ShortDesc { get; set; }
        public int Holes { get; set; }
        public int frontpar { get; set; }
        public int BackPar { get; set; }
        public int Par { get; set; }
        public int frontmetres { get; set; }
        public int backmetres { get; set; }
        public int totalmetres { get; set; }
        public int frontyards { get; set; }
        public int backyards { get; set; }
        public int totalyards { get; set; }
    }
}
