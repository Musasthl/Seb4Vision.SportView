using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Seb4Vision.CSportView.Golf.Data.Models
{
   public class Shots
    {
        [Key]

        public int shotsid { get; set; }
        public int idscore { get; set; }
        public int holeid { get; set; }
        public string strokes { get; set; }
        public string LiveStroke { get; set; }
        public int Putts { get; set; }
        public int Drive { get; set; }
        public int Chips { get; set; }
        public int Sand { get; set; }
        public int Penalties { get; set; }
        public int HoleStatus { get; set; }
    }
}
