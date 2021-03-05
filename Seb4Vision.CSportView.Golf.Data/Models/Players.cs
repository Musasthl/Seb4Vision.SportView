using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;
namespace Seb4Vision.CSportView.Golf.Data.Models
{
    public class Players
    {
        [Key]
        public int playerid { get; set; }
        public string firstname { get; set; }
        public string lastname { get; set; }
        public DateTime DOB { get; set; }
        public string webserverid { get; set; }
        public string city { get; set; }
        public string country { get; set; }
        public string photopath { get; set; }
        public string videopath { get; set; }
        public string Ranking { get; set; }
        public string Bio1 { get; set; }
        public string Bio2 { get; set; }
        public string Bio3 { get; set; }
        public string Logo1 { get; set; }
        public string Logo2 { get; set; }
    }
}
