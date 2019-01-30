using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Seb4Vision.CSportView.Data.Model.Model
{
    public class PlayerType
    {
        [Key]
        public int PlayerPositionsID { get; set; }
        public string Position { get; set; }
        public string Description { get; set; }
        public string SortDescription { get; set; }
        public int SportCode { get; set; }
        public int PersonType { get; set; }
        public int PlayerDesgination { get; set; }

    }
}
