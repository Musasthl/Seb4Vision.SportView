using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Seb4Vision.CSportView.Golf.Data.Models
{
  public  class CourseHoles
    {
        [Key]
        public int idcourseholes { get; set; }
        public int courseid { get; set; }
        public string HoleDesc { get; set; }
        public int HoleNumber { get; set; }
        public int par { get; set; }
        public int yards { get; set; }
        public int metres { get; set; }
    }
}
