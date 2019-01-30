using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Seb4Vision.CSportView.Data.Model.Model
{
    public class GameType
    {
        [Key]
        public long idgametype { get; set; }
        public int sportcodeid { get; set; }
        public string Description { get; set; }
        public string BackGroundImage { get; set; }

    }
}
